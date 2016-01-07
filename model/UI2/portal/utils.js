define(function(require) {
	var WindowContainer = require("$UI/system/components/justep/windowContainer/windowContainer");
	var RouteUtil = require('$UI/system/lib/route/routeUtil');
	var mainPageId = "main";
	var logoutAction = '$UI/portal/mobile/DoLogout.j';
	
	return {
		getActivePage : function() {
			var pages = this.comp('pages');
			if (pages == null) {
				return null;
			}
			var activeXid = pages.getActiveXid();
			var $active = pages.getContent(activeXid);
			return $active;
		},
		
		sessionTimeout : function(){
			//window.onerror = function(){return false;};
			//window.pageErrorHandler = function(){return false;};
			if (!this.logined || confirm("服务器连接超时, 是否关闭页面!")){
				this.logout({ignoreConfirm: true});
			}
		},
		
		
		logout : function(config){
			config = config || {};
			var self = this;
			if (config.ignoreConfirm || confirm("请您注意，是否打开的功能都保存了，关闭系统将导致没有保存的数据丢失！\r\r您确定要退出吗？")){
				this.doLogout();
				this.showLoginDialog();
				this.clientLogout();
			}else{
				if((typeof event !== "undefined") && event.type == "hashchange"){
					history.forward();
				}
			}
		},
		
		doLogout : function() {
			var url = this.getURL(logoutAction);
			try{
				$.ajax({
					type : "POST",
					processData : false,
					url : url,
					cache : false,
					async : false
				});
			}catch(err){
				
			}
			this.logined = false;
			for ( var index in this.routeEventFns) {
				this.comp('login').off('onReceive', this.routeEventFns[index]);
			}
			this.routeEventFns = [];
			var $active = this.getActivePage();
			if ($active) {
				this.removeRouteItem($active.xid, '');
			}
			this.clearRouteItem();
			
			if(typeof this.closeAllAgent == 'function'){
				// 关闭打开的代理页
				this.closeAllAgent();
			}
		},

		dispatchChange : function(innerStateValue) {
			var $active = this.getActivePage();
			if ($active && $active.innerContainer && $active.innerContainer.getInnerModel()) {
				$active.innerContainer.getInnerModel().postMessage({
					type : "routeState",
					newUrl : innerStateValue
				});
			}
		},

		subscribeChange : function(pid) {
			var pages = this.comp('pages');
			for ( var i in pages.contents) {
				var content = pages.contents[i];
				if (content.innerContainer) {
					content.innerContainer.off('onRouteStatePublish');
				}
			}
			var $active = pages.getContent(pid);
			if ($active && $active.innerContainer) {
				$active.innerContainer.on('onRouteStatePublish', function(event) {
					this.addRouteInnerItem($active.xid, event.hashbang, event.isReplace);
				}, this);
			}
			;
		},

		addRouteInnerItem : function(xid, hashbang, isReplace) {
			var $routeState = this.$routeState;
			$routeState.addInnerState(xid, '', hashbang);
			$routeState.publishState(isReplace);
		},
		
		clearRouteItem : function() {
			var $routeState = this.$routeState;
			$routeState.clearState();
		},
		
		removeRouteItem : function(xid, name) {
			var $routeState = this.$routeState;
			$routeState.removeState(xid, name);
		},

		initRoute : function() {
			var self = this;
			/*
			 * var formateUrl = function(url){ if(url){ var urlArray =
			 * url.split('#!'); if(urlArray.length > 1){ urlArray[1] = "("+
			 * urlArray[1] +")"; } return urlArray.join('#!'); } return; };
			 * 
			 * this.$routeState.on('onDispathChange',function(event){ var
			 * message = event.data; message.newUrl var newUrl = message.newUrl;
			 * var oldUrl = message.oldUrl; //message.newUrl =
			 * formateUrl(newUrl); //message.oldUrl = formateUrl(oldUrl);
			 * },this);
			 */
			this.routeEventFns = [];
			this.$routeState.on('onRoute', function(event) {
				self.doRoute(event);
			}, this);
		},

		doPagesRoute : function(event) {
			var pages = this.comp('pages');
			var self = this;
			var dtd = event.dtd;
			event.cancel = true;
			if (event.routeState == 'leave') {
				var leaveXid = event.xid;
				var $leave = pages.getContent(leaveXid);
				if ($leave) {
					$leave.off('onRouteStatePublish');
				}
				dtd.resolve();
			} else if (event.routeState == 'enter') {
				event.async = true;
				var paramValue = RouteUtil.getParamValue(event.param);
				var innerStateValue = RouteUtil.getInnerStateValue(event.param);
				var xid = event.xid;
				var activeXid = pages.getActiveXid();
				if (activeXid == xid) {
					this.dispatchChange(innerStateValue);
				} else {
					if (xid == mainPageId) {
						/**
						 * 首页比较特殊 必须要打开，同样不能关闭 首页的进入，在url上理解为点击返回按钮
						 */
						pages.getContent(activeXid).off('onRouteStatePublish');
						if (this.clear) {
							this.clear();
						} else {
							this.closePage();
						}
						dtd.resolve();
						this.dispatchChange(innerStateValue);
					} else if(xid == "changePassword"){
						this.openPage({
							url: this.getURL("$UI/portal/pc/changePassword/changePassword.w"),
							xid: "changePassword"
						}, {title: '修改密码'});
					}else {
						this.openPage(xid, {}, function() {
							dtd.resolve();
							self.dispatchChange(innerStateValue);
						});
					}
				}
			} else if (event.routeState == 'update') {
				var innerStateValue = RouteUtil.getInnerStateValue(event.param);
				this.dispatchChange(innerStateValue);
				dtd.resolve();
			}
		},

		doRoute : function(event) {
			if (event.xid == 'login') {
				if (!this.logined) {
					event.cancel = true;
				} else if (event.routeState == "enter") {
					event.cancel = true;
					this.logout();
				}
				return;
			}
			if (this.logined) {
				this.doPagesRoute(event);
			} else {
				var fakeEvent = {
					xid : event.xid,
					name : event.name,
					param : event.param,
					routeState : event.routeState,
					dtd : event.dtd
				}
				var routeEventFn = function() {
					this.doPagesRoute(fakeEvent);
					this.comp('login').off('onReceive',routeEventFn,this);
				};
				this.routeEventFns.push(routeEventFn);
				this.comp('login').on('onReceive', routeEventFn, this);
				event.cancel = true;
				event.async = true;
			}
		},

		loadPage : function(xid, url, options,viewLoadCallback,modelLoadCallback) {
			if(typeof options === "function"){
				modelLoadCallback = options;
				options = {};
			}
			options = options || {};

			var isUI2 = true;
			try{
				isUI2 = justep.URL.isUI2(url);
			}catch(err){
				if (console && console.log && err){
					console.log(err.stack || "");
				}
				var result = modelLoadCallback && modelLoadCallback(err);
				if (!result)
					throw err;
				else
					return;
			}
			
			var pages = this.comp('pages');
			var content = pages.getContent(xid);
			if (!content) {
				content = pages.add({
					xid : xid
				});
			}
			function isJ(url){
				var i = url.indexOf('?');
				if(i != -1)
					url = url.substring(0, i);
				return /\.j$/.test(url.toLowerCase());
			}
			var parentNode = content.$domNode.get(0);
			if(isUI2 && options.type != "iframe" && !isJ(url)){
				var compose = new WindowContainer({
					parentNode : parentNode,
					src : url,
					onViewLoad: function(event){
						var value = $(".page-content>.x-contents").css("min-height");
						if(/px$/.test(value)){
							$(".window.x-full-screen").height(value);
						}
						viewLoadCallback && viewLoadCallback(event);
					},
					onLoad : function() {
						modelLoadCallback && modelLoadCallback();
						content.on("onActive", function() {
							if (compose.getInnerModel()) {
								compose.getInnerModel().fireEvent('onActive');
							}
						});
					},
					onLoadError : function(event) {
						if (console && console.log && event){
							console.log(event.stack || "");
						}
						event.cancel = modelLoadCallback && modelLoadCallback(event);
					}
				});
				content.innerContainer = compose;
			}else{
				var frame = $('<iframe frameBorder=0 class="portal-frame"></iframe>');
				$(parentNode).append(frame);
				frame.src(url, function(iframe, duration){
					var value = $(".page-content>.x-contents").css("min-height");
					if(/px$/.test(value)){
						frame.height(value);
					}
					viewLoadCallback && viewLoadCallback();
					modelLoadCallback && modelLoadCallback();
				});
			}	
		},
		removePage : function(xid) {
			var pages = this.comp('pages');
			pages.remove(xid);
		}
	}
});