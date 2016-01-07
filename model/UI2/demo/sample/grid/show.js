define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	//接收数据
	Model.prototype.windowReceiverReceive = function(event){
		var row = event.data;
		this.comp('orderData').newData({
			defaultValues:[{
				"fID":row.val("fID"),
				"fCreateTime":row.val("fCreateTime"),
				"fContent":row.val("fContent"),
				"fSum":row.val("fSum"),
				"fUserID":row.val("fUserID"),
				"fUserName":row.val("fUserName"),
				"fPhoneNumber":row.val("fPhoneNumber"),
				"fAddress":row.val("fAddress")
			}]
		})
	};
	//返回
	Model.prototype.backClick = function(event){
		this.comp('windowReceiver').windowCancel();
	};

	return Model;
});