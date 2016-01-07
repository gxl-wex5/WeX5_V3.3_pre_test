define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");
	var Model = function(){
		this.isVisible = util.flag;
		this.callParent();
	};

	Model.prototype.userDataCustomRefresh = function(event){
		this.comp("userData").newData({
			defaultValues:[{
				fId:"001",
				fUserName:"admin",
				fName:"张三",
				fPassword:"123456",
				fRemark:"备注"
			}]
		});
	};

	Model.prototype.editClick = function(event){
		this.comp("statusData").setValue("edit", 1);
	};

	Model.prototype.sureClick = function(event){
		this.comp("statusData").setValue("edit", 0);
		this.comp("popOver1").hide();
	};

	Model.prototype.showjsSource = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/layout/hint_user_card.js"
		});
	};

	Model.prototype.showPageSource = function(event){
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/layout/hint_user_card.w&xid=window"
		});
	};

	return Model;
});