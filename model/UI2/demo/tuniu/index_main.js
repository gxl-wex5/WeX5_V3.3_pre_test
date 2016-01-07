define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var comUtil = require("$UI/system/components/justep/common/common");

	var Model = function() {
		this.callParent();
	};
	
	//页面初始化
	Model.prototype.modelLoad = function(event){
		$("input[xid=key]", this.getRootNode()).val("马尔代夫");
	};
		
	//加载首页商品数据
	Model.prototype.productDataCustomRefresh = function(event){
		var productData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('./json/productData.json'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	productData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });	
	};
			
	//选择城市
	Model.prototype.cityBtnClick = function(event){
		var url=require.toUrl("$UI/demo/tuniu/city.w");
		this.comp("windowDialog").open({src:url});
	};	
	Model.prototype.windowDialogReceive = function(event){
		var fName=event.data.fName;
		$("span[xid='cityName']", this.getRootNode()).text(fName);
	};
	
	//进入列表页
	Model.prototype.listClick = function(event){
		justep.Shell.showPage("searchList");
	};
		
	//进入内容页
	Model.prototype.detailClick = function(event){
		justep.Shell.showPage("detail");
	};
	
	//图片路径转换
	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};
	
	Model.prototype.contents1ActiveChange = function(event){
	
		if (event.to == 0) {
			$(this.comp("panel1").domNode).addClass("top-trans");
		} else {
			$(this.comp("panel1").domNode).removeClass("top-trans");
		}
	};
		
	return Model;
});