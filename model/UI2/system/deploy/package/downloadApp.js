define(function(require) {
	var templateService = require("$UI/system/templates/common/js/templateService");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.appEngine = this.getParent().appEngine;
		this.downloadFrame = document.createElement('iframe');
		this.downloadFrame.style.cssText = "display:none;";
		$("body").append(this.downloadFrame);

		var config = this.appEngine.getConfig();

		var downloadInfo = this.appEngine.getDownloadInfo(config.projectName, config.appName);
		var ip = downloadInfo.ip.split(',');
		var ipNode = $(this.getElementByXid("ip"));
		for ( var i = 0; i < ip.length; i++) {
			ipNode.append("<option value='" + ip[i] + "'>" + ip[i] + "</option>");
		}

		if (!downloadInfo.android) {
			$(this.getElementByXid("androidDiv")).hide();
		}
		if (!downloadInfo.ios) {
			$(this.getElementByXid("iosDiv")).hide();
		}
		if (!downloadInfo.android && !downloadInfo.ios) {
			$(this.getElementByXid("tipLabel")).show();
		}

		this.ip = ip[0];
		this.port = downloadInfo.port;
		this._refreshBarcode();
	};

	Model.prototype._refreshBarcode = function(wizard) {
		var config = this.appEngine.getConfig();
		this.androidURL = "http://" + this.ip + ":" + this.port
				+ require.toUrl("$UI/system/deploy/package/download.j?platform=android&projectName=" + config.projectName + '&appName=' + config.appName);
		this.iosURL = "http://" + this.ip + ":" + this.port + require.toUrl("$UI/system/deploy/package/download.j?platform=ios&projectName=" + config.projectName + '&appName=' + config.appName);
		this.comp('androidQR').set({
			"value" : this.androidURL
		});
		this.comp('iosQR').set({
			"value" : this.iosURL
		});
	};

	Model.prototype.getTitle = function(wizard) {
		return '下载本地App';
	};

	Model.prototype.hasCancelBtn = function(wizard) {
		return true;
	};

	Model.prototype.hasBackBtn = function(wizard) {
		return false;
	};

	Model.prototype.hasNextBtn = function(wizard) {
		return false;
	};

	Model.prototype.hasFinishBtn = function(wizard) {
		return false;
	};

	Model.prototype.finish = function() {
		return true;
	};

	Model.prototype.androidImageClick = function(event) {
		this.downloadFrame.src = this.androidURL;
	};

	Model.prototype.iosImageClick = function(event) {
		this.downloadFrame.src = this.iosURL;
	};

	Model.prototype.ipChange = function(event) {
		this.ip = $(this.getElementByXid("ip")).val();
		this._refreshBarcode();
	};

	Model.prototype.howInstallLabelClick = function(event) {
		templateService.openBrowser("http://wex5.com/cn/how-install-apk-ipa");
	};

	return Model;
});
