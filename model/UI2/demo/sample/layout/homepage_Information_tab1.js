define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");
	
	var Model = function(){
		this.isVisible = util.flag;
		this.callParent();
	};
	
	Model.prototype.informationDataCustomRefresh = function(event){
		var informationData = event.source;
		$.ajax({
			type: "GET",
			url: require.toUrl('./json/information.json'),
			dataType: 'json',
			async: false,
			cache: false,
			success: function(data){
				informationData.loadData(data);
			},
			error: function(){
				throw justep.Error.create("加载数据失败");
			}
		});
	};

	Model.prototype.showjsSource = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/layout/homepage_Information_tab1.js"
		});
	};

	Model.prototype.showPageSource = function(event){
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/layout/homepage_Information_tab1.w&xid=window"
		});
	};

	return Model;
});