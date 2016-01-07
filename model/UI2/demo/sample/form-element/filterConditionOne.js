define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");
	var Model = function(){
		this.callParent();
	};
	//显示隐藏
	Model.prototype.highGradeBtnClick = function(event){
		this.comp("displayData").setValue("display", 0);
			
	};
	Model.prototype.backBtnClick = function(event){
		this.comp("displayData").setValue("display", 1	);	
	};
	//设初始值
	Model.prototype.modelLoad = function(event){
	this.comp("dateData").setValue("startDate", new Date());
	this.comp("dateData").setValue("endDate", new Date());
	};
	Model.prototype.jsBtnClick = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/form-element/filterConditionOne.js"
		});
	};
	return Model;
});