define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");

	var Model = function() {
		this.callParent();
	};
	//点击查看按钮
	Model.prototype.checkClick = function(event) {
		var url = require.toUrl("$UI/demo/sample/grid/localdata.w");
		this.comp("windowDialog1").set({
			src : url
		});
		this.comp("windowDialog1").open();
	};
	//js代码
	Model.prototype.jsClick = function(event) {
		util.showSource({
			self : this,
			data : "demo/sample/grid/popupGrid.js"
		});
	};

	return Model;
});