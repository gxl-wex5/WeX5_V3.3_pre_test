/*! 
* WeX5 v3 (http://www.justep.com) 
* Copyright 2015 Justep, Inc.
* Licensed under Apache License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0) 
*/ 
/** 
* Modified from Durandal 2.1.0
* Durandal 2.1.0 Copyright (c) 2012 Blue Spire Consulting, Inc. All Rights Reserved. 
* Available via the MIT license. 
* see: http://durandaljs.com or https://github.com/BlueSpire/Durandal for details. 
*/ 
define(function(require) {
	require("$UI/system/resources/system.res");
	var _Error = require("./error");
	var Message = require("./message");
	var Util = require("./util");
	var URL = require("./url");
	var UUID = require("./uuid");
	var bind = require("bind");
	var BASE_ID_ATTR = "__justepbasexid__";
	var BASE_ID_PREFIX = "__justepbasexid__=\"";
	var JUSTEP_CONTEXT_PATH = "@justepContextPath@";
	var LoadingBar = require("$UI/system/components/justep/loadingBar/loadingBar");
	

	//---------------system begin
	var slice = Array.prototype.slice;
	var system = {
		getModuleID : function(obj) {
			if (!obj) {
				return null;
			}

			if (typeof obj == 'function') {
				return obj.prototype.__moduleId__;
			}

			if (typeof obj == 'string') {
				return null;
			}

			return obj.__moduleId__;
		},

		resolveObject : function(module, data) {
			if (Util.isFunction(module)) {
				return new module(data);
			} else {
				return module;
			}
		},

		defer : function(action) {
			return $.Deferred(action);
		},

		acquire : function() {
			var modules, first = arguments[0], arrayRequest = false;

			if (Util.isArray(first)) {
				modules = first;
				arrayRequest = true;
			} else {
				modules = slice.call(arguments, 0);
			}

			return this.defer(function(dfd) {
				require(modules, function() {
					var args = arguments;
					setTimeout(function() {
						if (args.length > 1 || arrayRequest) {
							dfd.resolve(slice.call(args, 0));
						} else {
							dfd.resolve(args[0]);
						}
					}, 1);
				}, function(err) {
					dfd.reject(err);
				});
			}).promise();
		}

	};
	//----------system end

	//---------------viewEngine begin
	var viewEngine = {
		windowExtension : '.w',
		activityExtersion : '.a',
		isWindowUrl : function(url) {
			return url
					&& ((url.indexOf(this.windowExtension, url.length - this.windowExtension.length) !== -1) || (url.indexOf(this.activityExtersion, url.length - this.activityExtersion.length) !== -1));
		},

		viewExtension : '.__html',
		viewPlugin : 'text',
		isViewUrl : function(url) {
			return url.indexOf(this.viewExtension, url.length - this.viewExtension.length) !== -1;
		},
		convertViewUrlToViewId : function(url) {
			return url.substring(0, url.length - this.viewExtension.length);
		},
		convertViewIdToRequirePath : function(viewId) {
			if ((viewId.indexOf(this.windowExtension) != -1) || (viewId.indexOf(this.activityExtersion) != -1)) {
				return this.viewPlugin + '!' + viewId;
			} else {
				return this.viewPlugin + '!' + viewId + this.viewExtension;
			}
		},
		parseMarkup : function(html) {
			return $.parseHTML ? $.parseHTML(html, null, true) : $(html).get();
		},
		processMarkup : function(markup) {
			var allElements = this.parseMarkup(markup);
			return this.ensureSingleElement(allElements);
		},
		ensureSingleElement : function(allElements) {
			if (allElements.length == 1) {
				return allElements[0];
			}

			var withoutCommentsOrEmptyText = [];
			for ( var i = 0; i < allElements.length; i++) {
				var current = allElements[i];
				if (current.nodeType != 8) {
					if (current.nodeType == 3) {
						var result = /\S/.test(current.nodeValue);
						if (!result) {
							continue;
						}
					}
					withoutCommentsOrEmptyText.push(current);
				}
			}

			if (withoutCommentsOrEmptyText.length > 1) {
				return $(withoutCommentsOrEmptyText).wrapAll('<div class="framework-wrapper"></div>').parent().get(0);
			}

			return withoutCommentsOrEmptyText[0];
		},
		createView : function(context, viewId, callback) {
			var that = this;
			var requirePath = this.convertViewIdToRequirePath(viewId);

			return system.defer(function(dfd) {
				system.acquire(requirePath).then(function(markup) {
					if (!markup){
						window.require.undef(requirePath);
						var msg = new Message(Message.JUSTEP230103, requirePath);
						dfd.reject(_Error.create(msg));
					}else{
						if (callback) {
							markup = callback(markup);
						}
						var element = that.processMarkup(markup);
						element.setAttribute('data-view', viewId);
						dfd.resolve(element);
					}
				}).fail(function(err) {
					window.require.undef(requirePath);
					var msg = null;
					if (err.toString().indexOf("HTTP status: 0") != -1){
						msg = new Message(Message.JUSTEP230109);
					}else{
						if (console && console.log){
							console.log(err.stack || "");
						}
						msg = new Message(Message.JUSTEP230103, requirePath);
					}
					dfd.reject(_Error.create(msg));
				});
			}).promise();
		}
	};
	//---------------viewEngine end

	//---------------viewLocator begin
	var viewLocator = {
		findInElements : function(nodes, url) {
			for ( var i = 0; i < nodes.length; i++) {
				var current = nodes[i];
				var existingUrl = current.getAttribute('data-view');
				if (existingUrl == url) {
					return current;
				}
			}
		},
		convertModuleIdToViewId : function(moduleId) {
			return moduleId;
		},
		determineFallbackViewId : function(obj) {
			var funcNameRegex = /function (.{1,})\(/;
			var results = (funcNameRegex).exec((obj).constructor.toString());
			var typeName = (results && results.length > 1) ? results[1] : "";

			return 'views/' + typeName;
		},
		translateViewIdToArea : function(viewId, area) {
			return viewId;
		},
		locateView : function(context, viewOrUrlOrId, area, elementsToSearch, callback) {
			if (typeof viewOrUrlOrId === 'string') {
				var viewId;

				if (viewEngine.isViewUrl(viewOrUrlOrId)) {
					viewId = viewEngine.convertViewUrlToViewId(viewOrUrlOrId);
				} else {
					viewId = viewOrUrlOrId;
				}

				if (area) {
					viewId = this.translateViewIdToArea(viewId, area);
				}

				if (elementsToSearch) {
					var existing = this.findInElements(elementsToSearch, viewId);
					if (existing) {
						return system.defer(function(dfd) {
							dfd.resolve(existing);
						}).promise();
					}
				}

				var result = viewEngine.createView(context, viewId, callback);
				return result;
			}

			return system.defer(function(dfd) {
				dfd.resolve(viewOrUrlOrId);
			}).promise();
		}
	};
	//---------------viewLocator end

	//---------------binder begin
	var binder = {
		insufficientInfoMessage : 'Insufficient Information to Bind',
		unexpectedViewMessage : 'Unexpected View Type',
		doBind : function(context, obj, view, bindingTarget, data) {
			if (!view || !bindingTarget) {
				composition.error(context, new Error(this.insufficientInfoMessage));
			}
			if (!view.getAttribute) {
				composition.error(context, new Error(this.unexpectedViewMessage));
			}
			var viewName = view.getAttribute('data-view');
			try {
				bind.applyBindings(bindingTarget, view);
			} catch (e) {
				e.message = e.message + ';\nView: ' + viewName + ";\nModuleId: " + system.getModuleID(data);
				composition.error(context, e);
			}
		},

		bind : function(context, obj, view) {
			this.doBind(context, obj, view, obj, obj);
		}
	};
	//---------------binder end

	//--------------composition begin
	var composition = {
		bindAndShow : function(child, context) {
			var self = this;
			context.child = child;
			if (child.parentNode != context.parent) {
				bind.virtualElements.emptyNode(context.parent);
				$(context.parent).attr("__outter", "1");
				//支持child中有script时能正常执行
				$(context.parent).append(child);
				//bind.virtualElements.prepend(context.parent, child);
			}
			if (context.viewLoad){
				var viewloadedDtd = context.viewLoad();
				viewloadedDtd.then(function(){
					self._bindAndShow(child,context);
				});
			}else{
				self._bindAndShow(child,context);
			}
		},
		
		_initOwner : function(context){
			context.model.owner = context.owner || {send: function(){}, close: function(){}};
			if (!context.model.owner.send){
				context.model.owner.send = function(){};
			}
			if (!context.model.owner.close){
				context.model.owner.close = function(){};
			}
			context.model.setParams(context.params || {}, context.noUpdateState);
			if (context.src){
				context.model.__src = context.src;
			}
		},
		
		_bindAndShow : function(child,context){
			if (Util.isString(context.model)) {
				var self = this;
				system.acquire(context.model).then(function(module) {
					try{
						var bodys = $(child).parents("body"); 
						if ((bodys.length>0) && (bodys[0]===document.body)){
						}else{
							return;
						}

						context.model = system.resolveObject(module, context.data);
						self._initOwner(context);
						if (context.model.setRootNode){
							context.model.setRootNode(context.child);
						}
						if (context.__id){
							context.model.__id = context.__id;
						}
						var modelToBind = context.model || {};
						var currentModel = bind.dataFor(child);

						if (currentModel != modelToBind) {
							binder.bind(context, modelToBind, child);
						}
						
						self.triggerAttach(context);
						composition.afterCompose();
					}catch(err){
						composition.error(context, err);
					}
				}).fail(function(err) {
					window.require.undef(context.model);
					var msg = new Message(Message.JUSTEP230103, context.model);
					if (console && console.log){
						console.log(err.stack || "");
					}
					composition.error(context,  _Error.create(msg));
				});
			}else{
				composition.afterCompose();
			}
		},

		triggerAttach : function(context) {
			if (context.child && context.model) {
				if (context.model.attached)
					context.model.attached(context.child, context.parent, context);
				if (context.model.detached)
					bind.utils.domNodeDisposal.addDisposeCallback(context.child, function() {
						context.model.detached(context.child, context.parent, context);
					});
			}
		},
		
		processXid: function(viewContent){
			var xids = [];
			var index = 0;
			while (true){
				var start = viewContent.indexOf(BASE_ID_PREFIX, index);
				if (start !== -1){
					var end = viewContent.indexOf("\"", start+BASE_ID_PREFIX.length);
					if (end !== -1){
						xids.push(viewContent.substr(start+BASE_ID_PREFIX.length, end-(start+BASE_ID_PREFIX.length)));
						index = end;
					}else{
						break;
					}
				}else{
					break;
				}
			}
			
			for (var i=0; i<xids.length; i++){
				var guid = UUID.createUUID();
				viewContent = viewContent.replace(new RegExp(xids[i], "gm"), guid);
			}
			
			return viewContent;
		},
		

		inject : function(context) {
			var self = this;
			var callback = function(viewContent) {
				if (Util.isString(viewContent)) {
					if (viewContent.indexOf(JUSTEP_CONTEXT_PATH) !== -1){
						viewContent = viewContent.replace(new RegExp(JUSTEP_CONTEXT_PATH, "gm"), window.__justep.__ResourceEngine.contextPath);
					}
					viewContent = self.processXid(viewContent);
				}
				
				return viewContent;
			};
			viewLocator.locateView(context, context.view, context.area, context.viewElements, callback).then(function(child) {
				if (child){
					var baseID = child.getAttribute(BASE_ID_ATTR);
					context.__id = baseID || UUID.createUUID(); //优先取baseID
					self.bindAndShow(child, context);	
				}else{
					var msg = new Message(Message.JUSTEP230103, context.view);
					composition.error(context, _Error.create(msg));
				}
			}).fail(function(err){
				composition.error(context, err);
			});
		},

		prepareContext : function(context) {
			if (Util.isString(context.model)) {
				context.model = URL.activity2WURL(require.toUrl(context.model));
				var url = new URL(context.model);
				if (viewEngine.isWindowUrl(url.pathname)) {
					if (!context.data) {
						url.setParam("$pageType", "context");
						context.data = url.toString(false);
					}
					var path = url.getPathname();
					if (window.__justep && window.__justep.__isPackage){
						context.model = path + ".js";
						if (!context.view){
							context.view = path + ".html";	
						}
					}else{
						context.model = path + "?$pageType=model";
						if (context.view) {
							//如果有view, 表示页面已经编译过, 不需要再编译
							context.model = context.model + "&$noCompile=true";
						} else {
							context.view = path + "?$pageType=view";
						}
					}
				}
			}
		},

		/**
		 * Initiates a composition.
		 * @method compose
		 * @param {DOMElement} element The DOMElement or bind virtual element that serves as the parent for the composition.
		 * @param {object} context The composition context.
		 * 	context中的域
		 * 		parent: 父节点
		 * 		child: 子节点
		 * 		model: vm;
		 * 		view: 模板
		 * 		loadError: 加载出错时回调
		 */
		compose : function(element, context) {
			composition.beforeCompose();
			try{
				context.parent = element;
				this.prepareContext(context);
				this.inject(context);
			}catch(err){
				composition.error(context, err);
			}
		},
		
		size: 0,
		beforeCompose: function(){
			LoadingBar.start();
		},
		
		afterCompose: function(){
			LoadingBar.stop();
		},
		
		error: function(context, err){
			composition.afterCompose();
			if (console && console.log && err){
				console.log(err.stack || "");
			}
			var cancel = false;
			if (context.loadError)
				cancel = context.loadError(err);
			if (!cancel)	 
				throw err;
		}
	};
	//--------------composition end

	return composition;
});
