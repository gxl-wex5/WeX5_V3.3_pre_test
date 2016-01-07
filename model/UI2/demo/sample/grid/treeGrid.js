define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = require("$UI/demo/baas/baas");
	var util = require("$UI/system/components/justep/common/common");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.areaDataCustomRefresh = function(event) {
		// 树形数据逐级+分页加载，data.treeOption.delayLoad=true
		var data = event.source;
		var parent = event.options && event.options.parent; // 父节点的row
		var append = event.options && event.options.append; // 数据是否增量加载
		Baas.sendRequest({
			"url" : "/demo",
			"action" : "queryRegionTreeByParent",
			"params" : {
				"columns" : Baas.getDataColumns(data),
				"limit" : event.limit,
				"offset" : event.offset,
				"parent" : parent && parent.getID()
			},
			"success" : function(resultData) {
				data.loadData(resultData, append, parent);
			}
		});
	};

	Model.prototype.jsClick = function(event) {
		util.showSource({
			self : this,
			data : "demo/sample/grid/treeGrid.js"
		});
	};

	Model.prototype.sourceClick = function(event) {
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/grid/treeGrid.w&xid=areaGrid"
		});
	};

	return Model;
});