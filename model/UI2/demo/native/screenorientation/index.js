define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/system/lib/cordova/cordova");
	require("cordova!net.yoik.cordova.plugins.screenorientation");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.orientationClick = function(event){
		window.screen.lockOrientation("landscape");
	};

	Model.prototype.portraitClick = function(event){
		window.screen.lockOrientation('portrait');
	};

	Model.prototype.unlockClick = function(event){
		window.screen.unlockOrientation();
	};

	Model.prototype.button3Click = function(event){
		justep.Util.hint("Current orientation: " + window.screen.orientation);
	};

	return Model;
});