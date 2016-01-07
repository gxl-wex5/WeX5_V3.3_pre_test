define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");
	var Model = function(){
		this.callParent();
	};

	Model.prototype.regestBtnClick = function(event){
		this.comp("userDeTailData").clear();
	};
	
	//查看js代码
	Model.prototype.showJsSource = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/forms/formMode.js"
		});
	};
	
	return Model;
});