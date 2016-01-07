define(function(require){
	var $ = require('jquery');
	var versionInfo;
	var Browser = require('$UI/system/lib/base/browser');
	var MsgDialog = require("$UI/system/components/justep/messageDialog/messageDialog");
	require("cordova!uk.co.whiteoctober.cordova.appversion");
	require("cordova!org.apache.cordova.inappbrowser");
	
	var parentNode = $('body').find('.window').get(0);
	
	var currentVersion = "";
	var VersionChecker = function(){
		this.env = "browser";
		if(Browser.isX5App){
			if(Browser.isAndroid){
				this.env = "androidApp";
			}
			if(Browser.isIOS){
				this.env = "iosApp";
			}
		}
		//this.env = "androidApp";
		
		this.versionMsg = new MsgDialog({
			parentNode:parentNode
		});
		var $domNode = this.versionMsg.$domNode;
		$domNode.find('.Yes').text('更新');
		$domNode.find('.No').text('忽略');
		this.versionMsg.on('onYes', function(event) {
			//下载
			this.download();
		}, this);
		this.versionMsg.on('onNo', function(event) {
			//忽略
			this.ignore();
		}, this);
		var self = this;
		
		
		var lastSplashIndex = location.pathname.lastIndexOf('/');
		var versionPath = location.pathname.substring(0,lastSplashIndex + 1) + "version_in_server.js";
		var indexPath = location.protocol+"//" + location.host + versionPath;
		
		require([indexPath],  function (version_info) {
			versionInfo = version_info;
			document.addEventListener("deviceready", function() {
				cordova.getAppVersion.getVersionNumber(function (version) {
					currentVersion = version;
					setTimeout(function(){
						self.check();
					},1000);
				});
			});
		});
		
	};
	
	VersionChecker.prototype.check = function(){
		if(versionInfo[this.env] && currentVersion < versionInfo[this.env].version && window.localStorage &&
				localStorage.getItem('versionIgnore') !== versionInfo[this.env].version){
			this.versionMsg.show({
				type : "YesNoCancel",
				title : "版本更新",
				message : versionInfo[this.env].changeLog
			});
		}
	};
	
	VersionChecker.prototype.download = function(){
		window.open(versionInfo[this.env].downloadUrl,'_system');
	};
	
	VersionChecker.prototype.ignore = function(){
		if(window.localStorage){
			localStorage.setItem('versionIgnore',versionInfo[this.env].version);
		}
	};
	
	return new VersionChecker();
});