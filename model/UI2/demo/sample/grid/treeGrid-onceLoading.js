define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = require("$UI/demo/baas/baas");
	var util = require("$UI/system/components/justep/common/common");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.jsClick = function(event) {
		util.showSource({
			self : this,
			data : "demo/sample/grid/treeGrid-onceLoading.js"
		});
	};

	Model.prototype.sourceClick = function(event) {
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/grid/treeGrid-onceLoading.w&xid=areaGrid"
		});
	};

	Model.prototype.areaDataCustomRefresh = function(event) {
		// 树形数据一次加载，data.treeOption.delayLoad=false
		var data = event.source;
		Baas.sendRequest({
			"url" : "/demo",
			"action" : "queryRegionTree",
			"params" : {
				"columns" : Baas.getDataColumns(data)
			},
			"success" : function(resultData) {
				data.loadData(resultData);
			}
		});
	};

	return Model;
});