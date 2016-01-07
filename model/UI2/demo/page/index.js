define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');

	var Model = function() {
		this.callParent();
		
		
		//创建Shell实例
		window.shell=new ShellImpl(this, {
			contentsXid : 'pages', //ShellImpl关联的contents, 即page的显示区域
			pageMappings: {
				main: {
					url: require.toUrl("./main.w")
				},
				
				p2: {
					url: require.toUrl("./interactive/page2.w")
				}
				
			}
		});
	};
	
	Model.prototype.modelLoad = function(event) {
		justep.Shell.showPage("main");
	};
	
	return Model;
});