define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");//显示源码引用的js	
	
	var Model = function(){
		this.callParent();
		this.isVisible=util.flag;
	};
	/*内容过多时，自动换行*/

	Model.prototype.showJSButtonClick = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/table/basic/basiceleven.js"
		});
	};

	return Model;
});