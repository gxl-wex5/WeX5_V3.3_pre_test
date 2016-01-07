define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = require("$UI/demo/baas/baas");
	var util = require("$UI/system/components/justep/common/common");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.userDataCustomRefresh = function(event) {
		// 主表数据加载
		var data = event.source;
		Baas.sendRequest({
			"url" : "/demo",
			"action" : "queryUser",
			"params" : {
				"columns" : Baas.getDataColumns(data),
				"limit" : event.limit,
				"offset" : event.offset
			},
			"success" : function(resultData) {
				var append = event.options && event.options.append;
				data.loadData(resultData, append);
			}
		});
	};

	Model.prototype.orderDataCustomRefresh = function(event) {
		// 从表数据加载
		var userData = this.comp("userData");
		var orderData = event.source;
		Baas.sendRequest({
			"url" : "/demo",
			"action" : "queryOrder",
			"params" : {
				"columns" : Baas.getDataColumns(orderData),
				"limit" : event.limit,
				"offset" : event.offset,
				"userID" : userData.getCurrentRowID()
			},
			"success" : function(resultData) {
				var append = event.options && event.options.append;
				orderData.loadData(resultData, append);
			}
		});
	};
	//js代码
	Model.prototype.jsClick = function(event) {
		util.showSource({
			self : this,
			data : "demo/sample/grid/masterDetail.js"
		});
	};
	//源码
	Model.prototype.sourceClick = function(event) {
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/grid/masterDetail.w&xid=userGrid"
		});
	};

	return Model;
});