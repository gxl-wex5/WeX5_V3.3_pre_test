define(function(require) {
	var loadTreeJs = require("$UI/system/components/designerCommon/tree/tree");

	loadTreeJs($);

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.appEngine = this.getParent().appEngine;

		var self = this;

		var tree = $(this.getElementByXid("uiResDirsTree"));
		tree.jqxTree('clear');
		tree.jqxTree({
			source : this._getChildren("$UI", "$UI"),
			hasThreeStates : true,
			checkboxes : true
		});
		tree.on('expand', function(event) {
			self._expandDir(event.args.element);
		});

		tree.on('dblclick', function(event) {
			var item = tree.jqxTree('getItem', event.target.parentElement);
			if (item) {
				self.comp("indexURL").val("/" + item.value);
			}
		});
		tree.on('checkChange', function(event) {
			var selected = [];
			var items = tree.jqxTree('getCheckedItems');
			var value;
			for (var i = 0; i < items.length; i++) {
				if ('Loading...' != items[i].label) {
					value = items[i].value;

					var parentIncluded = false;
					var parent = items[i].parentElement;
					var parentItem;
					while (parent !== null) {
						parentItem = tree.jqxTree('getItem', parent);
						if (parentItem.checked) {
							parentIncluded = true;
							break;
						}
						parent = parentItem.parentElement;
					}
					if (!parentIncluded) {
						selected.push(value);
					}
				}
			}

			self.comp("uiResDirs").val(selected.join(','));
		});

		this._recalcHeight();
		$(window).resize(function() {
			self._recalcHeight();
		});

		var config = this.appEngine.getConfig();
		if (this.getParent().edit) {
			this.comp("serverURL").val(config.serverURL);
			this.comp("webPath").val(config.webPath);
			this.comp("indexURL").val(config.indexURL);

			if (config.uiResDirs !== '') {
				var uiResDirs = config.uiResDirs.split(',');
				var treeItems = tree.jqxTree('getItems');
				var expandDir = function() {
					var item = this;
					if (item.value == curPath) {
						self._expandDir(item.element);
						treeItems = tree.jqxTree('getItems');
						return;
					}
				};

				var checkItem = function() {
					var item = this;
					if (item.value == uiResDirs[i]) {
						tree.jqxTree('checkItem', item.element, true);
						return;
					}
				};

				for (var i = 0; i < uiResDirs.length; i++) {
					var path = uiResDirs[i].split('/');
					for (var j = 1; j <= path.length; j++) {
						var curPath = path.slice(0, j).join('/');
						$.each(treeItems, expandDir);
					}

					$.each(treeItems, checkItem);
				}
			}
		} else {
			if (config.mode === "3") {
				this.comp("webPath").val("/x5/UI2");

			}
		}

		this.init();
	};

	Model.prototype._recalcHeight = function() {
		var height = $("body").height() - $(this.getElementByXid("serverDiv")).height() - 210;
		var tree = $(this.getElementByXid("uiResDirsTree"));
		tree.height(height);
		tree.css('visibility', 'visible');
	};

	Model.prototype.init = function() {
		var config = this.appEngine.getConfig();
		if (config.mode === "1") {
			$(this.getElementByXid("serverURLLabel")).text("Web服务地址：");
		} else if (config.mode === "2") {
			$(this.getElementByXid("serverURLLabel")).text("Web服务地址：");
		} else if (config.mode === "3") {
			$(this.getElementByXid("serverURLLabel")).text("UIServer服务地址：");
		} else if (config.mode === "4") {
			$(this.getElementByXid("serverURLLabel")).text("网站地址：");
		} else {
			$(this.getElementByXid("serverURLLabel")).text("服务地址：");
		}

		this.comp("indexURLLabelInput").domNode.style.display = config.mode === "4" ? "none" : "";
		this.comp("webPathLabelInput").domNode.style.display = config.mode === "4" ? "none" : "";
		this.getElementByXid("uiResDiv").style.display = config.mode === "4" ? "none" : "";
	};

	Model.prototype.getTitle = function(wizard) {
		return '设置服务地址和选择UI资源';
	};

	Model.prototype._getChildren = function(path, baseDir) {
		var data = {
			'function' : 'getFiles',
			'params' : {
				path : path,
				baseDir : baseDir,
				fileTypes : [ '.w' ],
				blackList : [ 'system' ]
			}
		};
		var result = $.ajax({
			async : false,
			data : JSON.stringify(data),
			dataType : "json",
			contentType : "json",
			type : 'POST',
			url : require.toUrl("$UI/system/templates/common/templateHelper.j"),
			success : function(result) {
			},
			error : function(xhr, status, err) {
			}
		}).responseJSON;
		if (result && result.flag) {
			return result.files;
		} else {
			return [];
		}
	};

	Model.prototype._expandDir = function(parent) {
		var tree = $(this.getElementByXid("uiResDirsTree"));
		var $element = $(parent);
		var loader = false;
		var loaderItem = null;
		var children = $element.find('ul:first').children();
		$.each(children, function() {
			var item = tree.jqxTree('getItem', this);
			if (item && item.label == 'Loading...') {
				loaderItem = item;
				loader = true;
				return false;
			}
		});
		if (loader) {
			var files = this._getChildren("$UI/" + tree.jqxTree('getItem', parent).value, "$UI");
			tree.jqxTree('addTo', files, $element[0]);
			tree.jqxTree('removeItem', loaderItem.element);
		}
	};

	Model.prototype.hasCancelBtn = function(wizard) {
		return true;
	};

	Model.prototype.hasBackBtn = function(wizard) {
		return true;
	};

	Model.prototype.hasNextBtn = function(wizard) {
		return true;
	};

	Model.prototype.hasFinishBtn = function(wizard) {
		return false;
	};

	Model.prototype.validate = function() {
		if (this.appEngine.getConfig().mode !== "4" && !this.comp("indexURL").get("value")) {
			alert("“首页”不能为空");
			return false;
		}
		
		if (this.appEngine.getConfig().mode !== "4") {
			var serverURL = this.comp("serverURL").get("value");
			if (serverURL && (serverURL.length > 0) && (serverURL[serverURL.length - 1] === '/')) {
				var serverURLLabel = $(this.getElementByXid("serverURLLabel")).text();
				// 去除冒号
				serverURLLabel = serverURLLabel.substring(0, serverURLLabel.length - 1);
				alert("“" + serverURLLabel + "”不能以“/”结尾");
				return false;
			}
			
			var webPath = this.comp("webPath").get("value");
			if (webPath && (webPath.length > 0) && (webPath[0] !== '/')) {
				alert("“Web路径”必须以“/”开始");
				return false;
			}
		
			var indexURL = this.comp("indexURL").get("value");
			if (indexURL && (indexURL.length > 0) && (indexURL[0] !== '/')) {
				alert("“首页”必须以“/”开始");
				return false;
			}
		} 
		
		return true;
	};

	Model.prototype.nextPage = function(wizard) {
		if (this.validate()) {
			var config = this.appEngine.getConfig();
			config.serverURL = this.comp("serverURL").get("value");
			config.webPath = config.mode === "4" ? "" : this.comp("webPath").get("value");
			config.indexURL = config.mode === "4" ? "" : this.comp("indexURL").get("value");
			if (!config.serverURL) {
				config.serverURL = "http://localhost";
			}
			config.uiResDirs = this.comp("uiResDirs").get("value");

			this.getParent().openPage({
				id : "configApp",
				url : "configApp.w",
				fromId : "selectAppResources"
			});
		}
	};

	Model.prototype.selectIPButtonClick = function(event) {
		if (!this.ipInited) {
			var downloadInfo = this.appEngine.getDownloadInfo();
			var ip = downloadInfo.ip.split(',');

			var menu = this.comp("menu");
			var self = this;
			var onClick = function(event) {
				self.comp("serverURL").val(event.source.label);
			};
			for (var i = 0; i <= ip.length - 1; i++) {
				menu.addItem({
					label : 'http://' + ip[i] + ':8080',
					onClick : onClick
				});
			}
			menu.addItem({
				label : 'http://127.0.0.1',
				onClick : onClick
			});

			this.ipInited = true;
		}

		this.comp("popMenu").show();
	};

	Model.prototype.selectWebPathButtonClick = function(event) {
		this.comp("webPathPopMenu").show();
	};

	Model.prototype.webPathButtonClick = function(event) {
		this.comp("webPath").val(event.source.label);
	};

	return Model;
});
