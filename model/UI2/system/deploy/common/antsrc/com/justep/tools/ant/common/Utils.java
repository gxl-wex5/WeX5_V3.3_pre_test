package com.justep.tools.ant.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;

import com.alibaba.fastjson.JSONObject;

public class Utils {

	static public void replaceFileText(final String filePath, String srcStr, String replaceStr) throws FileNotFoundException, IOException {
		replaceFileText(new File(filePath), srcStr, replaceStr);
	}

	static public void replaceFileText(File file, String srcStr, String replaceStr) throws FileNotFoundException, IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
		StringBuffer sb = new StringBuffer();
		String str = null;
		while ((str = br.readLine()) != null)
			sb.append(str + "\r\n");
		br.close();

		FileOutputStream fileOutStream = new FileOutputStream(file);
		fileOutStream.write(sb.toString().replaceAll(srcStr, replaceStr).getBytes("UTF-8"));
		fileOutStream.close();
	}

	public static Boolean isMacOSX() {
		return (System.getProperty("os.name").toLowerCase().indexOf("mac os x") != -1);
	}

	public static String getUrlVersion(String path) throws IOException {
		File appMetaFile = new File(path + "/app.json");
		if (appMetaFile.exists()) {
			BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(appMetaFile), "UTF-8"));
			StringBuffer sb = new StringBuffer();
			String str = null;
			while ((str = br.readLine()) != null) {
				sb.append(str);
			}
			br.close();
			JSONObject appMeta = JSONObject.parseObject(sb.toString());
			return appMeta.getString("version");
		}
		return null;
	}
}
