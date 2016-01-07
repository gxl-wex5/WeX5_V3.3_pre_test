define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	
	var Model = function(){
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main":{
					url : '$UI/demo/tuniu/index_main.w'
				},
				"searchList":{
					url : '$UI/demo/tuniu/searchList.w'
				},
				"detail":{
					url : '$UI/demo/tuniu/detail.w'
				}
			}
		});
	};

	Model.prototype.modelLoad = function(event){
		justep.Shell.showPage("main");
	};

	return Model;
});