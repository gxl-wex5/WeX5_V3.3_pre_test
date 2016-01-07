define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/system/lib/cordova/cordova");
	require("cordova!nl.x-services.plugins.actionsheet");

	var Model = function() {
		this.callParent();
		this.callback = function(buttonIndex) {
			setTimeout(function() {
				 justep.Util.hint('button index clicked: ' + buttonIndex);
			},0);
		};
	};

	Model.prototype.showClick = function(event) {
		var options = {
			'androidTheme' : window.plugins.actionsheet.ANDROID_THEMES.THEME_HOLO_LIGHT,// androdi上的显示主题，
			'title' : '是否要分享该图片?',// 标题
			'buttonLabels' : [ '微信分享', 'qq分享' ],
			'addCancelButtonWithLabel' : 'Cancel',
			'androidEnableCancelButton' : true, // android
			'winphoneEnableCancelButton' : true, // WP8
			'addDestructiveButtonWithLabel' : 'Delete it', //IOS中显示红色
			'position': [20, 40] //iPad 
		};
		window.plugins.actionsheet.show(options, this.callback);
	};

	Model.prototype.deleteClick = function(event) {
		// delete
		var options = {
			'addCancelButtonWithLabel' : 'Cancel',
			'addDestructiveButtonWithLabel' : 'Delete note'
		};
		window.plugins.actionsheet.show(options, this.callback);
		;
	};

	Model.prototype.logoutSheetClick = function(event) {
		var options = {
			'buttonLabels' : [ 'Log out' ],
			'androidEnableCancelButton' : true,
			'winphoneEnableCancelButton' : true,
			'addCancelButtonWithLabel' : 'Cancel'
		};
		window.plugins.actionsheet.show(options, this.callback);
		window.setTimeout(function() {
				window.plugins.actionsheet.hide();
			}, 5000)//5s后隐藏列表对话框
	};

	return Model;
});