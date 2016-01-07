/*
       Licensed to the Apache Software Foundation (ASF) under one
       or more contributor license agreements.  See the NOTICE file
       distributed with this work for additional information
       regarding copyright ownership.  The ASF licenses this file
       to you under the Apache License, Version 2.0 (the
       "License"); you may not use this file except in compliance
       with the License.  You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

       Unless required by applicable law or agreed to in writing,
       software distributed under the License is distributed on an
       "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
       KIND, either express or implied.  See the License for the
       specific language governing permissions and limitations
       under the License.
 */

package com.justep.x5.v3;

import java.io.File;

import org.apache.cordova.Config;
import org.apache.cordova.CordovaActivity;

import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Environment;
import android.preference.PreferenceManager;

public class X5 extends CordovaActivity {

	private void createPicturesDir() {
		File storageDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
		storageDir.mkdirs();
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		super.init();
		// Crosswalk bug, Pictures目录可能不存在，导致闪退，这里新建一下
		createPicturesDir();
		// 修改user-agent，追加x5app和版本标识
		String versionName = "5.3.0";
		try {
			PackageManager packageManager = this.getPackageManager();
			versionName = packageManager.getPackageInfo(this.getPackageName(), 0).versionName;
		} catch (NameNotFoundException e) {
		      e.printStackTrace();
		}
		super.appView.getSettings().setUserAgentString(super.appView.getSettings().getUserAgentString() + " x5app/" + versionName);
		// Set by <content src="index.html" /> in config.xml
		// loadUrl(launchUrl);
		
		/**
		String currentVersion = android.os.Build.VERSION.RELEASE;
		try{
			if(Float.parseFloat(currentVersion) > 5f && Float.parseFloat(currentVersion) < 6f) {
				super.appView.setLayerType(android.view.View.LAYER_TYPE_SOFTWARE, null);
			}
		}catch(Exception e){}
		**/
		
		SharedPreferences sharedPrefs = PreferenceManager.getDefaultSharedPreferences(this);
		String indexPageKey = "indexPage_" + versionName;
		if (sharedPrefs.contains(indexPageKey)) {
			Object obj = sharedPrefs.getAll().get(indexPageKey);
			loadUrl(obj.toString());
		}else{
			loadUrl(Config.getStartUrl());
		}
	}

}
