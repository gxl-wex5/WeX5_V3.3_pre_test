define(function(require){
	var $ = require("jquery");
	var util = require("$UI/system/components/justep/common/common");//显示源码引用的js	
	
	var Model = function(){
		this.callParent();
		this.isVisible=util.flag;
	};

	Model.prototype.jsButtonClick = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/table/basic/basictwelve.js"
		});
	};

	return Model;
});