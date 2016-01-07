define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");
	
	var Model = function(){
		this.isVisible = util.flag;
		this.callParent();
	};

	Model.prototype.selectOneClick = function(event){
		this.comp("statusData").setValue("edit", 1);
	};
	
	Model.prototype.selectTwoClick = function(event){
		this.comp("statusData").setValue("edit", 2);
	};
	
	Model.prototype.selectThreeClick = function(event){
		this.comp("statusData").setValue("edit", 3);
	};
	
	Model.prototype.selectFourClick = function(event){
		this.comp("statusData").setValue("edit", 4);
	};
	
	Model.prototype.selectFiveClick = function(event){
		this.comp("statusData").setValue("edit", 5);
	};
	Model.prototype.showjsSource = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/layout/vertical_navigation_group.js"
		});
	};

	Model.prototype.showSource = function(event){
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/layout/vertical_navigation_group.w&xid=window"
		});
	};
	return Model;
});