define(function(require){
	var $ = require("jquery");
	var util = require("$UI/system/components/justep/common/common");//显示源码引用的js
	var arr = [];//定义一个全局[数组]变量
	
	var Model = function(){
		this.callParent();
		this.isVisible = util.flag;//显示源码自定义的变量
	};
	//鼠标单击变色[多行]
	Model.prototype.dataTablesRowClick = function(event){
		if(arr.indexOf(event.row.val("tID")) == -1){//判断数组中是否有tID
			event.source.setRowCss(event.row,{"backgroundColor": "skyblue"});
			arr.push(event.row.val("tID"));
		}else{
			event.source.setRowCss(event.row,{"backgroundColor":"white"});
			for(var i = 0; i<arr.length; i++){
				if(event.row.val("tID") == arr[i]){
					arr.splice(i,1);//向数组中添加/删除元素，删除第i个，删除1个
				}
			}
		}
	};
	
	//源码显示[.js .css都可以，]
	Model.prototype.showJSButtonClick = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/table/basic/basicthree.js"
		});
	};
	
	return Model;
});
