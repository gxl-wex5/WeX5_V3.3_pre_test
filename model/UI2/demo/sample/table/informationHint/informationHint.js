define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");//显示源码引用的js
	
	var Model = function(){
		this.callParent();
		this.isVisible = util.flag;
	};


	//单击事件
	Model.prototype.dataTablesRowClick = function(event){
		var row = this.comp("tableData").getCurrentRow();//获取data当前的行
		var domButton = $(event.domEvent.target);//获取点击的元素
	    var temp = this.comp("popOverData");
	    if (domButton.hasClass("btnHint")) {//判断是否包含某个样式，怎么使用转换按钮button的其他事件？？？？？？？？
			temp.newData({
				defaultValues:[{
					"tName": row.val("tName"),
					"tSex":	row.val("tSex"),
					"tAge":	row.val("tAge"),
					"tPhone":	row.val("tPhone"),
					"tAddress":	row.val("tAddress")
				}]
			});
			var popOver = this.comp('demoPopOver');
			popOver.show();
			//设置定时隐藏popOver
			setTimeout(function(){
				popOver.hide();
			},2000);
	    }
	};

	//把tHint列  转换成 按钮button
	Model.prototype.dataTablesCellRender = function(event){
		if(event.colName == 'tHint'){
			event.html = "<button class='btn btn-link btnHint'>详情</button>";
		}
	};
	
	//显示 js代码
	Model.prototype.showJSButtonClick = function(event){
		util.showSource({
			self: this,
			data: 'demo/sample/table/informationHint/informationHint.js'
		});
	};
	//显示源码
	Model.prototype.showSourceBtnClick = function(event){
		util.showSource({
			data: 'demo/sample/table/informationHint/informationHint.w$xid=window',
			self: this,
			type: true
		});
	};

	return Model;
});