define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");
	
	var Model = function(){
		this.callParent();
		this.isVisible=util.flag;
	};

	Model.prototype.showJSButtonClick = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/table/basic/basicsixteen.js"
		});
	};
	return Model;
});