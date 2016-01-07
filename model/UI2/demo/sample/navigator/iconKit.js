define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util=require("$UI/system/components/justep/common/common");
	var Model = function(){
		this.callParent();
	};

	Model.prototype.kitDivClick = function(event){
		 var status=this.comp('statusData').getValue("status");
		 if(status==0)
			 this.comp('statusData').setValue("status",1);
		 if(status==1)
			 this.comp('statusData').setValue("status",0);
	};
	
	Model.prototype.jsBtnClick = function(event){
		 util.showSource({
         self : this,
         data : "demo/sample/navigator/iconKit.js"
          });
	};
	
	return Model;
});