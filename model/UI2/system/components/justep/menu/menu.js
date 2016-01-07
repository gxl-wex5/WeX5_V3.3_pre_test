/*! 
 * WeX5 v3 (http://www.justep.com) 
 * Copyright 2015 Justep, Inc.
 * Licensed under Apache License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0) 
 */
define(function(require) {

	require("$UI/system/components/justep/common/res");
	require('css!./css/menu').load();

	var Component = require("$UI/system/lib/base/component");
	var ViewComponent = require("$UI/system/lib/base/viewComponent");
	var $ = require("jquery");
	var url = require.normalizeName("./menu");
	var Button = require("$UI/system/components/justep/button/button");

	var ComponentConfig = require("./menu.config");

	var Menu = ViewComponent.extend({
		baseCls : 'x-menu',
		constructor : function(options) {
			this.callParent(options);
		},
		getConfig : function() {
			return ComponentConfig;
		},
		buildTemplate : function(config) {
		},
		init : function(value, bindingContext) {
			this.callParent(value, bindingContext);
			this.$el = $(this.domNode);
		},
		addItem : function(config) {
			config = config || {};
			var li = $('<li class="x-menu-item"></li>')[0];
			justep.Component.addNode(this.domNode, li);
			justep.Util.apply(config, {
				parentNode : li,
				"class" : "btn btn-link"
			});
			return new Button(config);
		},
		addDivider : function() {
			$('<li class="x-menu-divider divider"></li>').appendTo(this.$el);
		}
	});

	Component.register(url, Menu);

	return Menu;
});