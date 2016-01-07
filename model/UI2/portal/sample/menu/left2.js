define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var menu = require("$UI/demo/config/demo.function");

	var Model = function(){
		this.callParent();
	};
	
	Model.prototype = {
		getFunctionTreeData: function(){
			return menu;
		},
		initFunctionTree: function(){
			var funcsData = this.getFunctionTreeData(),
				$content = this.comp('panel').$content,
				html = ['<div id="menu" class="portal-menu">'];
			
			
			function printTree(children){
				if(!children || !children.length) return;
				html.push('<dl>');
				for(var i=0; i<children.length; i++){
					var child = children[i];
					html.push('<dt class="portal-menu-group"><h4>');
					html.push(child.label);
					html.push('</h4></dt>');
					html.push('<dd><div class="list-group">');
					printTree2(child.$children);
					html.push('</div></dd>');
				}
				html.push('</dl>');
			}
			
			function printTree2(children){
				if(!children || !children.length) return;
				for(var i=0; i<children.length; i++){
					var child = children[i];
					if(child.url){
						var url = child.url;
						if (url[0] === '/'){
							var name = require.normalizeName(url, '$model');
							if (name.indexOf("$model")!==0){
								url = '$model' + url;
							}
						}
						html.push(justep.String.format('<a class="list-group-item"  url="{0}" process="{1}" activity="{2}" title="{3}">{3}</a>', 
							url, child.process, child.activity, child.label));
					}
					printTree2(child.$children);
				}
			}
			printTree(funcsData.$children);
			
			html.push('</div>');
			html = html.join('');
			var $e = $(html);
			$e.on('click', 'a', function(event){
				var url = $(this).attr('url'),
					options = {process: $(this).attr('process'), activity: $(this).attr('activity'), title: $(this).attr('title')}
				justep.Portal.openWindow(url, options);
			});
			
			justep.Component.addNode($content[0], $e[0]);
		}
	};

	Model.prototype.logoutClick = function(event){
		justep.Portal.logout();
	};

	Model.prototype.modelLoad = function(event){
		//init functree
		this.initFunctionTree();
	};

	return Model;
});