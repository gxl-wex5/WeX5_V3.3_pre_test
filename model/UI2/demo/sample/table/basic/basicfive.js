define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");//显示源码引用的js	
	
	var Model = function(){
		this.callParent();
		this.isVisible = util.flag;
	};
	
	//checkbox行的多选
	Model.prototype.dataTablesRowCheck = function(event){
		var row = event.row;//选中当前行，这个方法效果比较好。
		if(this.comp('dataTables').isChecked(row)){//判断是否勾选中【打勾】
			event.source.setRowCss(row,{"backgroundColor": "#ADC7F5"});
		}else{
			event.source.setRowCss(row,{"backgroundColor": "white"});
		}
		
	};
	//获取checkbox选中项按钮单击事件
	Model.prototype.buttonOneClick = function(event){
		var rows = this.comp("dataTables").getCheckeds();//选中的行  数组
		var id = new Array();
		for(var i=0;i<rows.length;i++){
			id.push(rows[i].val("tID"));
		}
		if(id.length == 0){
			justep.Util.hint("请至少选中一项", {"type":"info"});//提示信息
		}
		justep.Util.hint(""+id, {"type":"info"});//提示信息
		
	};
	
	
	Model.prototype.showJSButtonClick = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/table/basic/basicfive.js"
		});
	};
	
	
	return Model;
});
