define(function(require){
	var $ = require("jquery");
	require("$UI/system/components/justep/dataTables/dataTables");
	var util = require("$UI/system/components/justep/common/common");//显示源码引用的js	
	
	var Model = function(){
		this.callParent();
		this.isVisible=util.flag;//自定义变量
	};
	
	//鼠标单击变色[多行]和checkbox多选行
	Model.prototype.dataTablesRowClick = function(event){
		var row = this.comp('data').getCurrentRow();//获取当前行数据
		var table = this.comp('dataTables');
//		var row = event.row;
		if(table.isChecked(row)){//判断是否勾选中【打勾】
			event.source.setRowChecked(row, false);//设置当前行选中状态
			if($(event.domEvent.target).attr("type") === "checkbox"){
				event.source.setRowChecked(row, true);
				event.source.setRowCss(row,{"backgroundColor": "#C1D3FB"})
			}else{
				event.source.setRowChecked(row, false);
				event.source.setRowCss(row,{"backgroundColor": "white"});
			}
		}else {
			event.source.setRowChecked(row, true);
			event.source.setRowCss(row,{"backgroundColor": "yellow"});
			if(($(event.domEvent.target).attr("type") === "checkbox")&& table.isChecked(row)){
				event.source.setRowChecked(row, false);
				event.source.setRowCss(row,{"backgroundColor": "white"});
			}
		}
	};

	//checkbox全选
	Model.prototype.dataTablesRowCheckedAll = function(event){
		this.comp('data').each(function(options){
			event.source.setRowCss(options.row,{"backgroundColor": "white"});
		});
		var rows = this.comp("dataTables").getCheckeds();//选中行的行数组
		for(var i=0;i<rows.length;i++){
			if(this.comp('dataTables').isChecked(rows[i])){
				event.source.setRowCss(rows[i],{"backgroundColor": "#C1D3FB"});
			}
		}
	};

	//显示源码
	Model.prototype.showJSButtonClick = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/table/basic/basicsix.js"
		});
	};

	return Model;
});
