define(function(require){
	var $ = require("jquery");
	var util = require("$UI/system/components/justep/common/common");//显示源码引用的js	
	
	var Model = function(){
		this.callParent();
		this.isVisible = util.flag;//用来显示源码的自定义变量
	};
	
	//源码显示
	Model.prototype.showCSSButtonClick = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/table/basic/basictwo.css"
		});
	};
	
	
	return Model;
});
