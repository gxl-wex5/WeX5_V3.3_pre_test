define(function(require) {
	var webSocket = require("$UI/system/components/designerCommon/js/webSocketMng");
	var serviceName = "com.justep.designer.service.BAASModelService";
	
	window.errorCallBack = function(errorMsg) {
		alert(errorMsg);
	};

	function __callJava(className, methodName, params, callback) {
		params = params || {};
		params.filePath = webSocket.getRequestParameter("filePath");
		params.async = false;
		return webSocket._callJava(className, methodName, params, callback);
	}

	var baasModelService = {
		callJava : __callJava,
		
		/**
		 * 获取数据源名称.
		 */
		getDsNames : function(){
			return __callJava(serviceName, "getDsNames", {});
		},

		/**
		 * 获取文档内容.
		 */
		getContent : function(){
			return __callJava(serviceName, "getContent", {});
		},
		
		/**
		 * 设置文档内容
		 */
		setContent: function(sContent){
			return __callJava(serviceName, "setContent", {content:sContent});
		}
		
	};

	return baasModelService;
});