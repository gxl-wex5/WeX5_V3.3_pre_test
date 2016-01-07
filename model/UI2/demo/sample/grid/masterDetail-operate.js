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
			data : "demo/sample/grid/masterDetail-operate.js"
		});
	};
	//源码
	Model.prototype.sourceClick = function(event) {
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/grid/masterDetail-operate.w&xid=userGrid"
		});
	};
	//单元格渲染
	Model.prototype.orderGridCellRender = function(event) {
		if (event.colName == 'op') {
			event.html = "<a component='$UI/system/components/justep/button/button' class='btn x-orange btn-sm'  xid='button1'><span xid='span1' class='update' >修改</span></a> <a component='$UI/system/components/justep/button/button' class='btn x-orange btn-sm'  xid='button1'><span xid='span1' class='delete' >删除</span></a> <a component='$UI/system/components/justep/button/button' class='btn x-orange btn-sm'  xid='button1'><span xid='span1' class='show' >查看</span></a>"
		}

	};
	//删除及查看
	Model.prototype.orderGridRowClick = function(event) {
		if ($(event.domEvent.target).hasClass('delete')) {
			var row = this.comp('orderData').getRowByID(event.rowID);
			this.comp('orderData').deleteData(row);
		}
		if ($(event.domEvent.target).hasClass('show')) {
			var me = this;
			var url = require.toUrl("$UI/demo/sample/grid/show.w");
			this.comp('windowDialog').set({src:url});
			var row = this.comp('orderData').getRowByID(event.rowID);
			this.comp('windowDialog').open({data:row});
		}
		if ($(event.domEvent.target).hasClass('update')) {
			this.comp('updateWindowDialog').open({data:this.comp('orderData').getCurrentRow()});
		}
	};
	//新增
	Model.prototype.addClick = function(event) {
		var me = this;
		var url = require.toUrl("$UI/demo/sample/grid/add.w");
		this.comp('windowDialog').set({src:url});
		this.comp('windowDialog').open({data:me.comp('userData').getCurrentRow().val("fName")});
		
	};
	//接收数据
	Model.prototype.windowDialogReceive = function(event){
		var name = event.data.name;
		var order = event.data.order;
		var address = event.data.address;
		var phone = event.data.phone;
		var time = event.data.time;
		this.comp('orderData').newData({
			defaultValues : [ {
				"fID" : justep.UUID.createUUID(),
				"fUserName" : name,
				"fContent" : order,
				"fAddress" : address,
				"fPhoneNumber" : phone,
				"fCreateTime":time
			} ]
		})

	};

	

	return Model;
});