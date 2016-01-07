define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");//显示源码引用的js
	
	var Model = function(){
		this.callParent();
		this.isVisible = util.flag;//显示源码自定义的变量
	};

	//源码显示[.js .css都可以]
	Model.prototype.showCSSButtonClick = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/table/basic/basic.css"
		});
	};

	return Model;
});