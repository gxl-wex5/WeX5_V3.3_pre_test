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
			data : "demo/sample/layout/homepage_Information_tab2.js"
		});
	};

	Model.prototype.showPageSource = function(event){
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/layout/homepage_Information_tab2.w&xid=window"
		});
	};

	return Model;
});