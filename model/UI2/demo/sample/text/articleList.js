define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");
	var Model = function() {
		this.callParent();
	};
	// 点击内容，弹出全部内容
	Model.prototype.textOutputClick = function(event) {
		var a = event.bindingContext.$object;// 得到当前上下文数据
		this.comp('popOverData').newData({// 将得到的数据添加到popOberData
			defaultValues : [ {
				'content' : a.val('content')
			} ]
		});
		this.comp('textPopOver').show();// 弹出全部内容
	};

	Model.prototype.jsBtnClick = function(event) {
		util.showSource({
			self : this,
			data : "demo/sample/text/articleList.js"
		});
	};

	return Model;
});