
define(function(require) {
	var $ = require("jquery");
	var templateService = require("$UI/system/templates/common/js/templateService");
	var Data = require("$UI/system/components/justep/data/data");
	var Model = function() {
		this.callParent();
	};


	Model.prototype.modelLoad = function(event) {
		debugger;
		this.templateEngine = this.getParent().templateEngine;
		this.templateFile = this.getContext().getRequestParameter("templateFile");
		this.templateFilePath = this.templateEngine.templatePath + "/" + this.templateFile;
		this.bizDataCount = 1;
		var data = this.comp('mainData');
		data.newData({
			defaultValues : [ {
				dataId : "mainData",
				canDelete : "false",
				id : "id1"
			} ]
		});
		data.first();
	};


	/** 校验方法，如果校验不通过返回错误提示--框架调用 */
	Model.prototype.validate = function(wizard) {
		var data = this.comp('mainData');
		var msg = "";
		data.each(function(param) {
			debugger;
			var row = param.row;
			var parentRelation = data.getValue("parentRelation", row), isTree = data.getValue("isTree", row);
			if (isTree && isTree == true) {
				if (!parentRelation || "" == parentRelation.trim())
					msg += "树形显示时主数据parent-relation不能为空，";
			}
		});
		if (!data.isValid()) {
			return data.getInvalidInfo();
		}
		var columnsData = this.comp('columnsData');
		if (!columnsData.isValid()) {
			return columnsData.getInvalidInfo();
		}
		return msg;
	};

	/** 完成时操作--框架调用 */
	Model.prototype.finish = function(wizard) {
		debugger;
		var data = this.comp('mainData');
		var xid = data.getValue("dataId");
		this.templateEngine.addContext(this.templateFile, "data_xid", xid);
		
		var columnsData = this.comp('columnsData');
		var columnsDatas = [];
		columnsData.each(function(param) {
			debugger;
			var row = param.row;
			// var id = data.getValue("id",row)
			var columnName = columnsData.getValue("columnName", row);
			var columnXid = columnsData.getValue("columnXid", row);
			var columnType = columnsData.getValue("columnType", row);
			var columnLabel = columnsData.getValue("columnLabel", row);
			var form_password,form_range,form_output,form_textarea,form_input;
			var columnShowType = columnsData.getValue("columnShowType", row);
			
			switch(columnShowType){
				case "password":
					form_password =  "form_password";
					break;
				case "range":
					form_range = "form_range";
					break;
				case "output":
					form_output = "form_output";
					break;
				case "textarea":
					form_textarea = "form_textarea";
					break;
				case "input":
					form_input =  "form_input";
			}
			var xid = data.getValue("dataId");
			
			columnsDatas.push({
				"data_xid"  : xid,
				"column_label" : columnLabel,
				"column_name" : columnName,
				"column_type":columnType,
				"form_input":form_input,
				"form_password":form_password,
				"form_range":form_range,
				"form_output":form_output,
				"form_textarea":form_textarea
			});
		});
		this.templateEngine.addContext(this.templateFile, "columns", columnsDatas);
		
	};
	return Model;
});
