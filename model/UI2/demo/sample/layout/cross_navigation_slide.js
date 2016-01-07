define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");
	var Model = function(){
		this.isVisible = util.flag;
		this.callParent();
	};
	
	Model.prototype.textDataCustomRefresh = function(event){
		var textData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('./json/cross_text.json'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	textData.loadData(data);
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });
	};
	
	Model.prototype.showJsSource = function(event){
		util.showSource({
			self : this,
			data : "demo/sample/layout/cross_navigation_slide.js"
		});
	};
	
	Model.prototype.showSource = function(event){
		util.showSource({
			self : this,
			type : true,
			data : "demo/sample/layout/cross_navigation_slide.w&xid=window"
		});

	};
	
	return Model;
});