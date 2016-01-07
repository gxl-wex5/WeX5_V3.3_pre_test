package com.justep.tools.ant.task;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.apache.tools.ant.taskdefs.Execute;
import org.apache.tools.ant.taskdefs.Redirector;
import org.apache.tools.ant.types.Commandline;
import org.apache.tools.ant.types.Environment;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.XPath;
import org.dom4j.io.SAXReader;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.tools.ant.common.Utils;
import com.justep.ui.util.Base64;

public class AddPluginsTask extends Task {

	static final String LINE_SEPARATOR = System.getProperty("line.separator");

	private HashMap<String, Plugin> pluginInfoList = new HashMap<String, Plugin>();
	private Redirector redirector = new Redirector(this);

	private String justepHome;
	private String srcDir;
	private String targetDir;
	private String plugins;
	private Boolean autoSelectPlugins;
	private String usedPlugins;
	private String pluginsConfig;

	private String pluginsDir;

	private Environment env = new Environment();

	private List<String> getNeededPlugins(String plugins) throws UnsupportedEncodingException, FileNotFoundException, DocumentException {
		List<String> neededPlugins = new ArrayList<String>();
		appendNeededPlugins(neededPlugins, plugins);
		return neededPlugins;
	}

	private void appendNeededPlugins(List<String> pluginList, String plugins) throws UnsupportedEncodingException, FileNotFoundException, DocumentException {
		if (plugins != null && !("".equals(plugins))) {
			String[] pluginArray = plugins.split(",");
			for (int i = 0; i < pluginArray.length; i++) {
				pluginList.add(pluginArray[i]);
			}
		}
	}

	private List<String> getInstalledPlugins() {
		File pluginsDir = new File(targetDir + "/plugins");

		if (!pluginsDir.exists()) {
			throw new BuildException("插件目录“" + pluginsDir.getAbsolutePath() + "”不存在，请检查工程是否正确");
		}

		ArrayList<String> result = new ArrayList<String>();
		for (File plugin : pluginsDir.listFiles()) {
			if (plugin.isDirectory()) {
				result.add(plugin.getName());
			}
		}
		return result;
	}

	private List<String> getDeletePlugins(List<String> installedPlugins, List<String> neededPlugins) {
		List<String> result = new ArrayList<String>();
		for (String plugin : installedPlugins) {
			if (neededPlugins.indexOf(plugin) < 0) {
				result.add(plugin);
			}
		}
		return result;
	}

	private List<String> getAddPlugins(List<String> installedPlugins, List<String> neededPlugins) {
		List<String> result = new ArrayList<String>();
		for (String plugin : neededPlugins) {
			if (installedPlugins.indexOf(plugin) < 0) {
				result.add(plugin);
			}
		}
		return result;
	}

	private String getPluginSrcPath(String plugin) {
		// 源目录下的plugins目录优先，如果没有plugin，在找公共目录
		if (new File(this.srcDir + "/plugins/" + plugin).exists()) {
			return this.srcDir + "/plugins/" + plugin;
		} else {
			return this.pluginsDir + "/" + plugin;
		}
	}

	class Plugin {
		String id;
		List<String> dependency = new ArrayList<String>();
	};

	private Plugin getPlugin(File pluginXML) throws UnsupportedEncodingException, FileNotFoundException, DocumentException {
		Plugin result = pluginInfoList.get(pluginXML.getAbsolutePath());
		if (result == null) {
			SAXReader xReader = new SAXReader();
			InputStreamReader isr;
			isr = new InputStreamReader(new FileInputStream(pluginXML), "UTF-8");
			Document doc = xReader.read(isr);
			Element plugin = doc.getRootElement();
			result = new Plugin();
			result.id = plugin.attributeValue("id");

			String defaultNamespace = doc.getRootElement().getNamespaceURI();
			HashMap<String, String> nsMap = new HashMap<String, String>();
			nsMap.put("default", defaultNamespace);
			XPath x = doc.createXPath("default:dependency");
			x.setNamespaceURIs(nsMap);
			@SuppressWarnings("unchecked")
			List<Element> nodes = x.selectNodes(plugin);
			for (int i = 0; i < nodes.size(); i++) {
				result.dependency.add(nodes.get(i).attributeValue("id"));
			}

			pluginInfoList.put(pluginXML.getAbsolutePath(), result);
		}
		return result;
	}

	private void addPlugin(List<String> neededPlugins, String pluginID) throws UnsupportedEncodingException, FileNotFoundException, DocumentException {
		if (neededPlugins.indexOf(pluginID) >= 0) {
			return;
		}

		Plugin plugin = getPlugin(new File(getPluginSrcPath(pluginID) + "/plugin.xml"));
		for (int i = 0; i < plugin.dependency.size(); i++) {
			this.addPlugin(neededPlugins, plugin.dependency.get(i));
		}
		neededPlugins.add(pluginID);
	};

	private List<String> sortPluginByDependency(List<String> plugins, Boolean addDependency) throws UnsupportedEncodingException, FileNotFoundException, DocumentException {
		List<String> sortedPlugins = new ArrayList<String>();
		for (String plugin : plugins) {
			addPlugin(sortedPlugins, plugin);
		}

		if (!addDependency) {
			for (int i = sortedPlugins.size() - 1; i >= 0; i--) {
				if (plugins.indexOf(sortedPlugins.get(i)) < 0) {
					sortedPlugins.remove(i);
				}
			}
		}

		return sortedPlugins;
	}

	private void exec(String cmd, String opration, String plugin) throws IOException, BuildException {
		Commandline cmdl = new Commandline();
		cmdl.setExecutable(cmd);
		String[] arg = { "plugin", opration, plugin };
		cmdl.addArguments(arg);

		Execute exe = new Execute(redirector.createHandler(), null);
		exe.setCommandline(cmdl.getCommandline());
		exe.setAntRun(getProject());
		exe.setWorkingDirectory(new File(targetDir));
		exe.setVMLauncher(true);
		String[] environment = this.env.getVariables();
		if (environment != null) {
			for (int i = 0; i < environment.length; i++) {
				log("Setting environment variable: " + environment[i], 3);
			}
		}
		exe.setEnvironment(environment);

		int returnCode = exe.execute();
		if (exe.killedProcess()) {
			String msg = "Timeout: killed the sub-process";
			throw new BuildException(msg);
		}
		this.redirector.complete();
		if (Execute.isFailure(returnCode)) {
			throw new BuildException(getTaskType() + " returned: " + returnCode, getLocation());
		}
	}

	public void setJustepHome(String justepHome) {
		this.justepHome = justepHome;
	}

	public void setSrcDir(String srcDir) {
		this.srcDir = srcDir;
	}

	public void setTargetDir(String targetDir) {
		this.targetDir = targetDir;
	}

	public void setPlugins(String plugins) {
		this.plugins = plugins;
	}

	public void setAutoSelectPlugins(Boolean autoSelectPlugins) {
		this.autoSelectPlugins = autoSelectPlugins;
	}

	public void setUsedPlugins(String usedPlugins) {
		this.usedPlugins = usedPlugins;
	}

	public void setPluginsConfig(String pluginsConfig) {
		this.pluginsConfig = pluginsConfig;
	}

	public void addEnv(Environment.Variable var) {
		this.env.addVariable(var);
	}

	private class PluginParam {
		String key;
		String value;

		PluginParam(String key, String value) {
			this.key = key;
			this.value = value;
		}
	}

	public void execute() throws BuildException {
		try {
			this.pluginsDir = getProject().getProperty("pluginsDir");

			List<String> neededPlugins = getNeededPlugins(plugins);
			
			// 默认包含的插件
			neededPlugins.add("org.apache.cordova.splashscreen");
			neededPlugins.add("me.apla.cordova.plugin.app.preferences");
			
			if (autoSelectPlugins) {
				appendNeededPlugins(neededPlugins, usedPlugins);
			}
			List<String> installedPlugins = getInstalledPlugins();
			log("使用到的插件: " + neededPlugins.toString());

			// 删除插件
			List<String> deletePlugins = getDeletePlugins(installedPlugins, neededPlugins);
			File cordova = new File(this.justepHome + "/tools/cordova/bin/cordova" + (Utils.isMacOSX() ? "" : ".cmd"));
			deletePlugins = sortPluginByDependency(deletePlugins, false);
			// 注意：删除应该逆序，增加是正序，排序是安装依赖关系从上到下
			for (int i = deletePlugins.size() - 1; i >= 0; i--) {
				exec(cordova.getAbsolutePath(), "remove", deletePlugins.get(i));
			}

			// 新增插件
			List<String> addPlugins = getAddPlugins(installedPlugins, neededPlugins);
			addPlugins = sortPluginByDependency(addPlugins, true);
			List<String> customPlugins = new ArrayList<String>();
			String buildPluginsDir = getProject().getProperty("buildPluginsDir");
			String[] paramKeys = { "common", "android", "ios" };
			JSONArray pluginsJSON = JSONArray.parseArray(new String(Base64.decode(pluginsConfig), "UTF-8"));
			JSONObject pluginConfig;
			log("开始准备插件参数......");
			for (int i = 0; i < pluginsJSON.size(); i++) {
				pluginConfig = (JSONObject) pluginsJSON.get(i);
				String id = (String) pluginConfig.get("id");

				if (addPlugins.indexOf(id) < 0) {
					continue;
				}

				customPlugins.add(id);
				getProject().setProperty("copyPluginID", id);
				getProject().setProperty("copyPluginSrcDir", getPluginSrcPath(id));
				getProject().executeTarget("copyPlugin");

				// $key需要按倒序排序，否则如果参数名有子集关系替换会有问题
				List<PluginParam> params = new LinkedList<PluginParam>();
				JSONObject paramsObj;
				for (String paramKey : paramKeys) {
					paramsObj = (JSONObject) pluginConfig.get(paramKey);
					if (paramsObj != null) {
						for (String key : paramsObj.keySet()) {
							params.add(new PluginParam(key, paramsObj.getString(key)));
						}
					}
				}
				Collections.sort(params, new Comparator<PluginParam>() {
					public int compare(PluginParam o1, PluginParam o2) {
						return o2.key.compareTo(o1.key);
					}
				});
				log("插件 \"" + id + "\" 参数如下：");
				for (PluginParam param : params) {
					if ((param.value) == null || "".equals(param.value)) {
						throw new BuildException("插件“" + id + "”参数“" + param.key + "”未设置");
					}
					log("     " + param.key + "：" + param.value);
					Utils.replaceFileText(buildPluginsDir + "/" + id + "/plugin.xml", "\\$" + param.key, param.value);
				}
			}
			log("插件参数准备完成");

			log("开始安装插件......");
			for (String plugin : addPlugins) {
				exec(cordova.getAbsolutePath(), "add", new File(customPlugins.indexOf(plugin) >= 0 ? buildPluginsDir + "/" + plugin : getPluginSrcPath(plugin)).getAbsolutePath());
			}
			log("插件安装完成");
		} catch (Exception e) {
			if (e instanceof BuildException) {
				throw (BuildException) e;
			} else {
				throw new BuildException(e);
			}
		}
	}
}