define(function(require){
	var $ = require("jquery");
	
	
	function checkImpl(){
		if(api.impl){
			return true;
		}
		return false;
	}
	
	function DefaultImpl(){
	}
	
	
	DefaultImpl.prototype.noopImpl = function(){
		var dtd = $.Deferred();
		return dtd.promise();
	};
	
	var defaultImpl = new DefaultImpl();
	
	function addShowPage(){
		var dtd = $.Deferred();
		require(['$UI/system/components/justep/windowOpener/windowOpener'],function(WindowOpener){
			DefaultImpl.prototype.showPage = function(url,data,options){
				if(typeof url === "object"){
					var urlParams = [];
					var params = url;
					url = url.url;
					delete params.url;
					$.each(params,function(key,value){
						if(key !== "xid" && key !== "extra"){
							if(value !== "undefined" && value !== "" && value !== undefined){
								urlParams.push(key + "=" + encodeURIComponent(value));
							}
						}
					});
					var urlParamStr = urlParams.join("&");
					if(urlParams.length > 0){
						if(url.indexOf("?") != -1){
							url = url + "&" + urlParamStr;
						}else{
							url = url + "?" + urlParamStr;
						}
					}
				}
				var option = {
					url : url
				};
				var opener = new WindowOpener(option);
				opener.open({
					data : data
				});
			};
			dtd.resolve();
		});
		return dtd.promise();
	};
	
	var api = {
		loadPage:function(){
			if(checkImpl()){
				return api.impl.loadPage.apply(api.impl,arguments);
			}else{
				return defaultImpl.noopImpl(); 
			}
		},
		showPage:function(){
			var args = arguments;
			if(checkImpl()){
				return api.impl.showPage.apply(api.impl,arguments);
			}else{
				if(defaultImpl.showPage){
					return defaultImpl.showPage.apply(defaultImpl,arguments);
				}else{
					addShowPage().done(function(){
						return defaultImpl.showPage.apply(defaultImpl,args);
					})
				}
			}
		},
		showLeft : function(){
			if(checkImpl()){
				return api.impl.showLeft.apply(api.impl,arguments);
			}else{
				return defaultImpl.noopImpl(); 
			}
		},
		
		showRight : function(){
			if(checkImpl()){
				return api.impl.showRight.apply(api.impl,arguments);
			}else{
				return defaultImpl.noopImpl(); 
			}
		},
		
		closePage:function(){
			if(checkImpl()){
				return api.impl.closePage.apply(api.impl,arguments);
			}else{
				return defaultImpl.noopImpl();
			}
		},
		setIsSinglePage:function(isSinglePage){
			if(checkImpl()){
				api.impl.isSinglePage = isSinglePage;
			}
		},
		on : function(){
			if(checkImpl()){
				return api.impl.on.apply(api.impl,arguments);
			}
		},
		off : function(){
			if(checkImpl()){
				return api.impl.off.apply(api.impl,arguments);
			}
		},
		fireEvent : function(){
			if(checkImpl()){
				return api.impl.fireEvent.apply(api.impl,arguments);
			}
		},
		addPageMappings : function(){
			if(checkImpl()){
				return api.impl.addPageMappings.apply(api.impl,arguments);
			}
		},
		showMainPage : function(){
			if(checkImpl()){
				return api.impl.showMainPage.apply(api.impl,arguments);
			}
		},
		removeMainPage:function(){
			if(checkImpl()){
				return api.impl.removeMainPage.apply(api.impl,arguments);
			}
		}
	};
	return api;
});