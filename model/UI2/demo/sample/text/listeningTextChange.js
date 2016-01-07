define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	Model.prototype.textareaChange = function(event){
		 var text=this.comp('textarea').get('value');
		 if(text.length>2)
			 justep.Util.hint("输入:"+text);
	};
	return Model;
});