define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	//保存按钮
	Model.prototype.saveClick = function(event){
		this.comp('windowReceiver').windowEnsure(this.comp('orderData').getCurrentRow());
	};
	//接收数据
	Model.prototype.windowReceiverReceive = function(event){
		var row = event.data;
		var a = this.comp('orderData').add();
		a.assign(row);
	};
	//返回
	Model.prototype.backClick = function(event){
		this.comp('windowReceiver').windowCancel();
	};

	return Model;
});