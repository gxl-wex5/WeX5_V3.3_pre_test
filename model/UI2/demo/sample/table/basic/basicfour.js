define(function(require){
	var $ = require("jquery");
	require("$UI/system/components/justep/dataTables/dataTables");
	var util = require("$UI/system/components/justep/common/common");//显示源码引用的js	
	
	var Model = function(){
		this.callParent();
		this.isVisible=util.flag;//自定义变量
	};
	
	//勾选checkbox 行的多选
	Model.prototype.dataTables1RowCheck = function(event){
//		var rId = this.comp('data').getCurrentRowID();//获取当前行id
		var row = event.row;//选中当前行，这个方法效果比较好。
		if(this.comp('dataTables').isChecked(row)){//判断是否勾选中【打勾】
			event.source.setRowCss(row,{"backgroundColor": "yellow"});
		}else{
			event.source.setRowCss(row,{"backgroundColor": "white"});
		}
		
	};
	
	//源码显示
	Model.prototype.showJSButtonClick = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/table/basic/basicfour.js"
		});
	};
	
	return Model;
});
