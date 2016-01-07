define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var BAASModel = require("$UI/system/designer/baas/BAASModel");

	var Model = function() {
		
		this.callParent();
		this.services;
		this.type='service';

		this.serviceURL = justep.Bind.observable("");
		this.queryAction = justep.Bind.observable("");
		this.saveAction = justep.Bind.observable("");
		this.table = justep.Bind.observable("");
		this.db = justep.Bind.observable("");
		this.baasDataXid = justep.Bind.observable("mainData");
		
		this.actionType = justep.Bind.observable("query");
		this.filter = justep.Bind.observable("");
	};
	
	Model.prototype._recalcHeight = function() {
		var height = $("body").height() - $('.nav-row').height();
		$('.data-nav').height(height);
		$('.data-form').height(height);
	};
	
	

	Model.prototype.beforeOkAction = function() {
		if (!this.serviceURL.get())
			return '请选择BAAS Service';
	};

	/**
	 * 获取返回值，点击确定后调用的方法,必须是一个json格式的数据 .
	 */
	Model.prototype.getReturnValue = function() {
		return {
			url : this.serviceURL.peek(),
			queryAction : this.queryAction.peek(),
			tableName: this.table.peek(),
			saveAction: this.saveAction.peek()
		};
	};

	Model.prototype.modelLoad = function(event) {
		
		this.templateEngine = this.getParent().templateEngine;
		this.templateFile = this.getContext().getRequestParameter("templateFile");

		//每次打开都重新加载baas模型
		BAASModel.loadBaasModel();
		this.services = BAASModel.getServices();
		this.comp('dataService').refreshData();
		
		//监控filter变化
		this.filter.subscribe(function(){
			this.comp('dataService').refreshData();
		},this);
		
		this._recalcHeight();
		var self = this;
		$(window).resize(function() {
			self._recalcHeight();
		});
	};

	Model.prototype.dataServiceCustomRefresh = function(event) {
		
		if (this.services) {
			var datas = [],type=this.type,model=this;			
			$.each(this.services, function(path, service) {
				if(type!=='service' && path!==model.serviceURL.peek()) return;
				var actionType = model.actionType.get();
				var filter = model.filter.get();
				var actions = service.actions;
				if (actions) {
					$.each(actions, function(i, action) {
						if(action.disabled) return;//禁用的不提供选择
						if(actionType==='query' && action.name.indexOf('query')<0) return;
						else if(actionType==='save' && action.name.indexOf('save')<0) return; 
						//不区分大小写  
						if(filter && (path+"/"+action.name).toLowerCase().indexOf(filter.toLowerCase())<0) return; 
						var table = action.privateParams && action.privateParams['tableName'] ? action.privateParams['tableName'].value : "";
						var db = action.privateParams && action.privateParams['db'] ? action.privateParams['db'].value : "";
						datas.push({
							path : path,
							action : action.name,
							table : table,
							db : db
						});
					});
				}
			});
			event.source.loadData(datas);
		} else
			event.source.clear();
	};



	Model.prototype.getSaveActionByTable = function(serviceURL,table){
		var service = this.services[serviceURL];
		var ret;
		if(service && $.isArray(service.actions)){
			var saveAction = "save" + table.substring(0, 1).toUpperCase() + table.substring(1);
			$.each(service.actions, function(i,action){
				if(action.name == saveAction){
					ret = action.name;
					return false;
				}
			});
		}
		return ret;
	};
	
	Model.prototype.dataServiceValueChanged = function(event) {
		
		if ("checked" == event.col && true === event.value) {
			if (this.type == "service") {
				var serviceURL = event.row.val("path"),table = event.row.val("table"),db=event.row.val('db');
				this.serviceURL.set(serviceURL);
				this.queryAction.set(event.row.val("action"));
				this.table.set(table);
				this.db.set(db);
				var saveAction = this.getSaveActionByTable(serviceURL,table);
				if(saveAction) this.saveAction.set(saveAction); 
				
				
				var config = this.templateEngine.getConfig();
				config.current = config.current || {};
				config.current.db=this.db.peek();
				config.current.table=this.table.peek();
				config.current.serviceURL=this.serviceURL.peek();
				config.current.queryAction=this.queryAction.peek();
				config.current.saveAction=this.saveAction.peek();
				config.current.baasDataXid=this.baasDataXid.peek();
				
			}else{
				this.saveAction.set(event.row.val("action"));
			}
		}
	};

	Model.prototype.select1Change = function(event){
		this.comp('dataService').refreshData();
	};


	/** 校验方法，如果校验不通过返回错误提示--框架调用 */
	Model.prototype.validate = function(wizard) {
		
		var data = this.comp('mainData');
		var msg = "";
		if(!this.serviceURL.peek()){
			msg += '服务器URL不能为空 ';
		}if(!this.queryAction.peek()){
			msg += 'queryAction不能为空 ';
		}if(!this.table.peek()){
			msg += '表名不能为空 ';
		}
		return msg;
	};
	
	/** 完成时操作--框架调用 */
	Model.prototype.finish = function(wizard) {
		
		var dataXid = this.baasDataXid.peek();
		this.templateEngine.addContext(this.templateFile, "data_xid", dataXid?dataXid:'mianData');
		this.templateEngine.addContext(this.templateFile, "service_url", this.serviceURL.peek());
		this.templateEngine.addContext(this.templateFile, "query_action", this.queryAction.peek());
		this.templateEngine.addContext(this.templateFile, "save_action", this.saveAction.peek());
		this.templateEngine.addContext(this.templateFile, "table", this.table.peek());
	}

	return Model;
});