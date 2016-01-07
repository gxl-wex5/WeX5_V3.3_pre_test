/*! 
* WeX5 v3 (http://www.justep.com) 
* Copyright 2015 Justep, Inc.
* Licensed under Apache License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0) 
*/ 
define(function(require){
	var Component = require("$UI/system/lib/base/component");
	var iScroll = require("./lib/iscroll").iScroll;
	var $ = require("jquery");
	var ViewComponent = require("$UI/system/lib/base/viewComponent");
	
	var url = require.normalizeName("./scrollView");
	
	//for designer
	var scrollViewConfig = require("./scrollView.config");
	require('css!./css/scrollView').load();
	
    var ScrollView = ViewComponent.extend({
    	getConfig: function(){
    		return scrollViewConfig;
    	},
    	set:function(args){
    		var self = this;
    		$.each(args, function (key, value) {
                if (!self.hasOwnProperty(key)) {
                	self[key] = undefined;
                }
            });
    		this.callParent(args);
    	},
    	buildTemplate: function(config){
    		config = config || {};
    		this.set(config);
    		return $('<div class="x-scroll"><div class="x-scroll-content"></div></div>').attr(config).attr("component",url);
        },
        dispose : function() {
        	if(this.scroller){
        		this.scroller.destroy();
        	}
        	this.callParent();
        },
        init: function(value, bindingContext){
        	var self = this;
        	this.pullDownLabel = "下拉刷新";
        	this.pullDownMoveLabel = "松开刷新";
        	this.pullDownLoadingLabel = "加载中....";
        	
        	this.pullUpLabel = "加载更多";
        	this.pullUpMoveLabel = "释放加载";
        	this.pullUpLoadingLabel = "加载中....";
        	this.noMoreLoadLabel = "已经到最后.";
        	this.autoPullUp = true;
        	this.callParent(value,bindingContext);
        	this.$rootEle = $(this.domNode).parent();
        	this.$rootEle.addClass('x-scroll-view');
			this.$scrollEle = this.$rootEle.find('>.x-scroll');
        	this.getModel().on('onModelConstructDone',function(){
        		__justep.cssReady(function(){
        			self.render();
        		});
        	},this);
        	this.getModel().on('onScrollRefresh',function(event){
				if(this.$rootEle.find($(event.source.$rootEle)).length >0){
					this.refresh();
				}
			},this);
        },
        
        propertyChangedHandler : function(name,oldValue,value){
			this.callParent(name,oldValue,value);
			if(name == "pullDownLabel"){
				if(this.$puEle && this.$pdEle.hasClass('x-pull-down')){
					var $pdlEle =  this.$scrollEle.find('.x-pull-down>.x-pull-down-label');
					$pdlEle.text(value);
				}
			}else if(name == "pullUpLabel"){
				if(this.$puEle && this.$puEle.hasClass('x-pull-up')){
					var $pulEle =  this.$scrollEle.find('.x-pull-up>.x-pull-up-label');
					$pulEle.text(value);
				}
			}
		},
        render:function(){
        	var self = this;
        	var warpperHeight = this.$rootEle.parent().outerHeight(true);
			var rootHeight = this.$rootEle.outerHeight(true);
			var scrollHeight = this.$scrollEle.outerHeight(true);
			if(rootHeight == scrollHeight && rootHeight > warpperHeight){
				this.$rootEle.css('height','100%');
			}
        	if(this.$rootEle.css('position') != 'absolute'){
        		if(self.$rootEle.css('position') != 'absolute'){
    				self.$rootEle.css({'position':'relative'});
    			}
				this.$scrollEle.css({'position':'relative'});
			}else{
				this.$scrollEle.css({'width':'100%','top':'0','position':'absolute'});
			}
        	var config = this.$domNode.data('config') || {};
			
			if(typeof MutationObserver == 'function'){
				var target = this.$scrollEle.find('.x-scroll-content');
			    var observer = new MutationObserver(function(mutations) {
			    	self.refresh();
			    });
			    var childNodes = target.find('div,ul');
			    for(var childIndex = 0;childIndex < Math.min(childNodes.length,3); childIndex++){
	    			observer.observe(childNodes.get(childIndex),{childList: true});
	    		}
			    config.checkDOMChanges = false;
			}else{
				config.checkDOMChanges = true;
			}
			
			
			var defaultConfig = {
				hideScrollbar: true,
				onRefresh: function () {
					return self.fireEvent('onScrollRefresh',{source:self});
				},
				onScrollMove: function () {
					return self.fireEvent('onScrollMove',{source:self});
				},
				onScrollEnd: function () {
					return self.fireEvent('onScrollEnd',{source:self});
				}
			};
			
			config = $.extend(defaultConfig, config);
			this.scroller = new iScroll(this.$rootEle.get(0), config);
			
			this.getModel().on('reflow',function(domNode){
				if($(domNode).find(this.$rootEle).length >0 || $(domNode).is(this.$rootEle)){
					this.refresh();
				}
			},this);
			if(this.$scrollEle.find('>.x-pull-down').length > 0){
				this.pullDown(function(){
					this.fireEvent('onPullDown',{source:this});
					this.getModel().fireEvent('onPullDown',{source:this});
					return true;
				});
			}
			if(this.$scrollEle.find('>.x-pull-up').length > 0){
				this.pullUp(function(_event){
					this.noMoreLoad = false;
					var event = {source:this,noMoreLoad:false};
					this.fireEvent('onPullUp',event);
					this.getModel().fireEvent('onPullUp',event);
					if(event.noMoreLoad){
						this.noMoreLoad = true;
					}
					return true;
				});
			}
			self.getModel().fireEvent('onScrollRefresh',{source:this});
			if(this.$scrollEle.find('>.x-pull-down').length > 0){
				this.scroller.options.topOffset = 50;
				this.$scrollEle.find('>.x-pull-down').show();
			}
			this.refresh(0,true);
        },
        
        refresh:function(times,isFast){
        	times = times || 0;
        	if(this.scroller){
        		var self = this;
        		if(self.getModel()){
        			// TODO:防止在js执行的时候css文件还没有被加载完毕
            		if(self.$pdEle && self.$pdEle.length > 0){
            			var threshold = self.$pdEle.outerHeight(true);
            			if(threshold < 30){
            				if(times < 2){
            					setTimeout(function(){
                					self.refresh(times++);
                				},1000);
            					return;
            				}
            			}
            		}
        			
    				if(self.$pdEle && self.$pdEle.length > 0){
            			var threshold = self.$pdEle.outerHeight(true);
            			self.scroller.options.topOffset = threshold;
            			self.scroller.minScrollY = -threshold;
            		}
    				
    				if(self.$pdEle && self.$pdEle.length > 0){
        				setTimeout(function(){
        					self.$pdEle.css('opacity','0.99');
        				},200);
        			}
    				if(self.$puEle && self.$puEle.length > 0){
						setTimeout(function(){
							self.$puEle.css('opacity','0.99');
        				},200);
					}
        			self.scroller.refresh(isFast);
        			self.getModel().fireEvent('onScrollRefresh',{source:self});
    			}
        	}
        },
        
        pullDown : function(refreshCallback) {
        	this.$pdEle = this.$scrollEle.find('>.x-pull-down');
        	this.$pdiEle = this.$scrollEle.find('.x-pull-down>.x-pull-down-img');
        	if (this.$pdEle.length == 0) {
				this.$pdEle = $('<div class="x-pull-down"><span class="x-pull-down-label">'+ this.pullDownLabel +'</span></div>');
				this.$scrollEle.prepend(this.$pdEle);
				this.refresh();
			}
			
			var threshold = this.$pdEle.outerHeight(true);
			
			if(this.scroller.options.topOffset !== threshold){
				this.scroller.options.topOffset = threshold;
			}
			
			var self = this;
			var $pdlEle = this.$pdEle.find('.x-pull-down-label');
			this._pdRefresh =  function(){
				if (self.$pdEle.hasClass('x-loading')) {
					self.$pdEle.removeClass('x-loading');
					self.$pdEle.addClass('x-pull-down');
					$pdlEle.text(this.pullDownLabel);
				}
				self.$pdiEle.css({"transform":"rotate(0deg) translate3d(0,0,0)"});
			};
			
			this.on('onScrollRefresh',this._pdRefresh);
			this._pdScrollMove = function(){
				if(self.scroller.y > -15 && self.scroller.y < 5){
					var deg = ((self.scroller.y - 5)/20 + 1) * -180;
					self.$pdiEle.css({"transform":"rotate("+ deg + "deg) translate3d(0,0,0)"});
				}else if(self.scroller.y > 5 ){
					self.$pdiEle.css({"transform":"rotate(-180deg) translate3d(0,0,0)"});
				}
				
				if (self.scroller.y > 5 && !self.$pdEle.hasClass('x-flip')) {
					//超过阀值
					self.$pdEle.addClass('x-flip');
					self.$pdEle.removeClass('x-restore');
					
					self.$pdEle.addClass('x-flip');
					self.$pdEle.removeClass('x-restore');
					$pdlEle.text(self.pullDownMoveLabel);
					self.scroller.minScrollY = 0;
				}  else if (self.scroller.y < 5 && self.$pdEle.hasClass('x-flip')) {
					//不到阀值
					self.$pdEle.removeClass('x-flip');
					self.$pdEle.addClass('x-restore');
					$pdlEle.text(self.pullDownLabel);
					self.scroller.minScrollY = -threshold;
				}
			}; 
			this.on('onScrollMove',this._pdScrollMove);
			
			this._pdScrollEnd = function(event){
				if (self.$pdEle.hasClass('x-flip')) {
					self.noMoreLoad = false;
					self.$pdEle.removeClass('x-flip');
					self.$pdEle.addClass('x-loading');
					$pdlEle.text(self.pullDownLoadingLabel);
					
					try{
						var result = refreshCallback.call(this,event);
						if ($.type(result) === "object") {
							$.when(result).done(self.pullDownFinish()).fail(self.pullDownError());
						} else if ($.type(result) === "boolean") {
							if (result) {
								self.pullDownFinish(event);
							} else {
								self.pullDownError(event);
							}
						}
					}catch(e){
						self.pullDownError(event);
						throw new Error(e);
					}
				}else if(self.$pdEle.hasClass('x-restore')){
					self.$pdEle.removeClass('x-restore');
					self.$pdEle.addClass('x-pull-down');
					this.refresh();
				}
			};
			this.on('onScrollEnd',this._pdScrollEnd);
		},

		pullDownFinish : function(event) {
			this.refresh();
		},
		
		pullDownError : function(event) {
			this.refresh();
		},
		
		pullUp : function(loadCallback) {
			this.$puEle = this.$scrollEle.find('>.x-pull-up');
			if (this.$puEle.length == 0) {
				this.$puEle = $('<div class="x-pull-up"><span class="x-pull-up-label">' +this.pullUpLabel + '</span></div>');
				this.$scrollEle.append($puEle);
				this.refresh();
			}
			
			var threshold = this.$puEle.outerHeight(true);
			var self = this;
			var $pulEle = this.$puEle.find('.x-pull-up-label');

			
			this._puRefresh = function(){
				if (self.$puEle.hasClass('x-loading')) {
					self.$puEle.removeClass('x-loading');
					self.$puEle.addClass('x-pull-up');
				}
				if(self.noMoreLoad){
					$pulEle.text(self.noMoreLoadLabel);
				}else{
					$pulEle.text(self.pullUpLabel);
				}
			};
			this.on('onScrollRefresh',this._puRefresh);
			this._puScrollMove = function(){
				if (self.scroller.y < (0- self.scroller.options.topOffset) && self.scroller.y < (self.scroller.maxScrollY - threshold) && !self.$puEle.hasClass('x-flip')) {
					self.$puEle.removeClass('x-restore');
					self.$puEle.addClass('x-flip');
					$pulEle.text(self.pullUpMoveLabel);
				} else if (self.scroller.y > (self.scroller.maxScrollY - threshold) && self.$puEle.hasClass('x-flip')) {
					self.$puEle.removeClass('x-flip');
					self.$puEle.addClass('x-restore');
					$pulEle.text(self.pullUpLabel);
				}
			}; 
			this.on('onScrollMove',this._puScrollMove);
			
			this._puScrollEnd = function(event){
				if (self.$puEle.hasClass('x-flip')) {
					self.$puEle.removeClass('x-flip');
					self.$puEle.addClass('x-loading');
					$pulEle.text(self.pullUpLoadingLabel);
					var result = loadCallback.call(this,event);
					if ($.type(result) === "object") {
						$.when(result).done(self.pullUpFinish()).fail(self.pullUpError());
					} else if ($.type(result) === "boolean") {
						if (result) {
							self.pullUpFinish();
						} else {
							self.pullUpError();
						}
					}
				}else if(this.autoPullUp === true){
					if(self.scroller.y === self.scroller.maxScrollY){
						var result = loadCallback.call(this,event);
						if ($.type(result) === "object") {
							$.when(result).done(self.pullUpFinish()).fail(self.pullUpError());
						} else if ($.type(result) === "boolean") {
							if (result) {
								self.pullUpFinish();
							} else {
								self.pullUpError();
							}
						}
					}
				}
				
			};
			this.on('onScrollEnd',this._puScrollEnd);
		},
		pullUpFinish : function(event) {
			this.refresh();
		},
		
		pullUpError : function(event) {
			this.refresh();
		}
    });
    Component.register(url, ScrollView);
    return ScrollView;
});