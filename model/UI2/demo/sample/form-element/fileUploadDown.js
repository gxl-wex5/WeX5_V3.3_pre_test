define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/components/justep/common/common");
	var Attachment=require("$UI/system/components/justep/attachment/attachmentSimple");
	var Model = function(){
		this.callParent();
		this.isVisible=util.flag;
	};
		Model.prototype.closeWin = function(event){
		justep.Portal.closeWindow();
	};
	Model.prototype.modelLoad = function(event){
		//	$('.x-item-remove').addClass('x-upload-hide'); 隐藏删除
		//控制上床文件后缀名,格式
		var uploader = this.comp("attachmentSimple").uploader;
		uploader.on('onFileSelected',function(event){
	    if (event.file.name.split(".")[1] != "txt") {
	    justep.Util.hint("只能上传.txt文件");
	    event.cancel = true;
	    	}
		});
			//	控制上传文件大小
		uploader = this.comp("attachmentSimpleSize").uploader;
		uploader.on('onFileSelected',function(event){
			if(event.file.size>1024){
				justep.Util.hint("上传的文件大小不能超过1kB");
        event.cancel = true;
		    }
		});
			//控制上传文件个数  
			var data=this.comp("fileData");
			 uploader = this.comp("attachmentSimpleNum").uploader;
			uploader.on('onFileSelected',function(event){
				var file = data.getValue("fFileNum"); 
				if(file){
				if($.parseJSON(file).length>=2){
					justep.Util.hint("只能上传2个文件");
					event.cancel = true;
				}
				}
				
		});
	};
	Model.prototype.jsBtnClick = function(event){
			util.showSource({
			self : this,
			data : "demo/sample/form-element/fileUploadDown.js"
		});
	};
	return Model;
});