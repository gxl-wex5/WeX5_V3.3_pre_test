define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	
	//接收主页面数据
	Model.prototype.windowReceiverReceive = function(event){
		var name = event.data;
		this.comp('nameInput').val(name);
	};

	
	//保存
	Model.prototype.saveClick = function(event){
		var name = this.comp('nameInput').val();
		var order =  this.comp('orderInput').val();
		var address = this.comp('addressInput').val();
		var phone = this.comp('phoneInput').val();
		var time = this.comp('timeInput').val();
		this.comp('windowReceiver').windowEnsure({"name":name,"order":order,"address":address,"phone":phone,"time":time});
	};

	
	//取消
	Model.prototype.backClick = function(event){
		this.comp('windowReceiver').windowCancel();
	};

	

	return Model;
});