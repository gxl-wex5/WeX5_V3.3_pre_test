define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");
	var Model = function(){
		this.isVisible = util.flag;
		this.callParent();
	};

	Model.prototype.showJsSource = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/layout/cross_navigation_flow.js"
		});
	};

	Model.prototype.showSource = function(event){
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/layout/cross_navigation_flow.w&xid=window"
		});
	};

	return Model;
});
