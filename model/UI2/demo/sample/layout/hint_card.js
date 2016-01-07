define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.editClick = function(event){
		this.comp("editStatusData").setValue("edit", 1);
	};

	Model.prototype.sureClick = function(event){
		this.comp("editStatusData").setValue("edit", 0);
		this.comp("windowReceiver1").windowEnsure();
	};

	Model.prototype.cancelClick = function(event){
		this.comp("windowReceiver1").windowEnsure();
	};

	return Model;
});