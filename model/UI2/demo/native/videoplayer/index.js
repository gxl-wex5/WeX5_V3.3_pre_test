define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/system/lib/cordova/cordova");
	require("cordova!com.phonegap.plugins.videoplayer");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.playVideoClick = function(event) {
		cordova.plugins.videoPlayer.play("http://path.to.my/video.mp4");
	};

	return Model;
});