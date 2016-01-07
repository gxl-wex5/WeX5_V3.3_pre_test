define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");//引用common.js
	
	var Model = function(){
		this.callParent();
		this.isVisible = util.flag;//自定义变量
	};
	
	//显示源码
	Model.prototype.showJSButtonClick = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/table/basic/basicthirteen.js"
		});
	};

	return Model;
});