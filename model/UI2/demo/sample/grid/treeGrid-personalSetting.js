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
			data : "demo/sample/grid/treeGrid-personalSetting.js"
		});
	};

	Model.prototype.sourceClick = function(event) {
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/grid/treeGrid-personalSetting.w&xid=areaGrid"
		});
	};
	// 加载数据
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
	// 个性图标展示
	Model.prototype.areaGridTreeIconRender = function(event) {
		if (event.row.val('fType') == 'zone')
			event.html = '<i class="icon-android-contact" style="font-size:16px;color:skyblue;"/>';
		else if (event.row.val('fType') == 'province') {
			event.html = '<i class="icon-android-star" style="font-size:16px;color:skyblue;"/>';
		} else {
			event.html = '<i class="icon-android-promotion" style="font-size:16px;color:skyblue;"/>';
		}
	};
	// 展开台港澳地区
	Model.prototype.expandClick = function(event) {
		this.comp('areaGrid').expandRow('8');
	};
	// 折叠台港澳地区

	Model.prototype.foldClick = function(event) {
		this.comp('areaGrid').collapseRow('8');
	};

	return Model;
});