define(function(require) {
	var $ = require("jquery");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.mapDataReceiverReceive = function(event) {
		var position = event.data;
		var mapPanelId = $(this.getElementByXid("mapPanel")).attr('id');
		var $mapFrame = $('#' + mapPanelId + ' iframe')
		var mapFrame = $mapFrame.get(0);
		$mapFrame.on('load',function(){
			mapFrame.contentWindow.postMessage(position, "*");
		});
	};

	Model.prototype.hideMapBtnClick = function(event) {
		this.comp('mapDataReceiver').windowCancel();
	};

	return Model;
});