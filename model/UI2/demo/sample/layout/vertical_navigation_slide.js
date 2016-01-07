define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");

	var Model = function(){
		this.isVisible = util.flag;
		this.callParent();
	};

	Model.prototype.showjsSource = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/layout/vertical_navigation_slide.js"
		});
	};
	
	Model.prototype.showSource = function(event){
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/layout/vertical_navigation_slide.w&xid=window"
		});
	};

	Model.prototype.buttonOneClick = function(event){
		this.getElementByXid("aOne").click();
	};

	Model.prototype.buttonTwoClick = function(event){
		this.getElementByXid("aTwo").click();
	};

	Model.prototype.buttonThreeClick = function(event){
		this.getElementByXid("aThree").click();
	};

	Model.prototype.buttonFourClick = function(event){
		this.getElementByXid("aFour").click();
	};

	return Model;
});