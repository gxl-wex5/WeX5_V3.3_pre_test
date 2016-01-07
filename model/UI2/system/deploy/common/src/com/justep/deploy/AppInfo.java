package com.justep.deploy;

import java.lang.reflect.Field;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.ui.util.Base64;

public class AppInfo {
	// 应用基本信息 app.project
	public String appID;
	public String projectName;
	public String mode;
	public Boolean sourceMode;
	public String serverURL;
	public String webPath;
	public String indexURL;
	public String uiResDirs;
	public Boolean extBrowser;
	public Boolean autoSelectPlugins;
	public String plugins;
	public String pluginsConfig;
	public Boolean resEncryption;
	// 应用基本信息 config.xml
	public String packageName;
	public String appName;
	public String version;
	public String startURL;
	public String description;
	public String orientation;
	// 开发者信息 app.project config.xml
	public String province;
	public String area;
	public String company;
	public String author;
	public String email;
	public String homePage;
	public Boolean genAndroid;
	public Boolean genIOSDev;
	public Boolean genIOSDis;
	public String androidPassword;
	public String iosDevloperPassword;
	public String iosDistributionPassword;
	// 打包相关设置
	public String platform;
	public Boolean includeUIRes;
	public Boolean compileUI;
	public String releaseMode;
	public Boolean useProxyBuilderServer;
	public String proxyBuilderServer;
	public Boolean outputSrc;
	public String outputProjectName;

	// 编辑运行时信息
	public String oldAppName;
	public Boolean genAndroidKey;
	// 打包运行时信息
	public String appBuilderServer;

	public AppInfo(JSONObject config) throws IllegalArgumentException, IllegalAccessException {
		Class<? extends AppInfo> cls = this.getClass();
		Field[] flds = cls.getFields();
		Object v;
		if (flds != null) {
			for (int i = 0; i < flds.length; i++) {
				v = config.get(flds[i].getName());
				if ((v != null) && JSONArray.class.isInstance(v)) {
					String jsonStr = ((JSONArray) v).toJSONString();
					flds[i].set(this, Base64.encode(jsonStr.getBytes()));
				} else {
					flds[i].set(this, v);
				}
			}
		}
	}
}