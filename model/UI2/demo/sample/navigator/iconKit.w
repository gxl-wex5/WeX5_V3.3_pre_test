<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:68px;top:108px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="statusData" idColumn="status"><column name="status" type="String" xid="xid1"></column>
  <data xid="default1">[{&quot;status&quot;:&quot;0&quot;}]</data></div></div>  
  
  
<div xid="div3" style="margin-top:50px;text-align:justify;border-width:1px;border-color:#00FFFF;overflow:scroll;overflow-x:hidden;height:363px;width:321px;color:#F3F3F3;background-color:#F3F3F3;" class="pull-right bg-info" bind-visible=' $model.statusData.val("status")==1'><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed" xid="col1" style="width:auto;"><img src="$UI/demo/sample/navigator/img/center.jpg" alt="" xid="image1"></img></div>
   <div class="x-col x-col-fixed" xid="col2" style="width:auto;"><img src="$UI/demo/sample/navigator/img/favorite.jpg" alt="" xid="image2"></img></div>
   <div class="x-col x-col-fixed" xid="col3" style="width:auto;"><img src="$UI/demo/sample/navigator/img/search.jpg" alt="" xid="image3"></img></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-fixed" xid="col4" style="width:auto;"><img src="$UI/demo/sample/navigator/img/doc.jpg" alt="" xid="image4"></img></div>
   <div class="x-col x-col-fixed" xid="col5" style="width:auto;"><img src="$UI/demo/sample/navigator/img/help.jpg" alt="" xid="image5"></img></div>
   <div class="x-col x-col-fixed" xid="col6" style="width:auto;"><img src="$UI/demo/sample/navigator/img/store.jpg" alt="" xid="image6"></img></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-fixed" xid="col7" style="width:auto;"><img src="$UI/demo/sample/navigator/img/adnexa.jpg" alt="" xid="image7"></img></div>
   <div class="x-col x-col-fixed" xid="col8" style="width:auto;"><img src="$UI/demo/sample/navigator/img/message.jpg" alt="" xid="image8"></img></div>
   <div class="x-col x-col-fixed" xid="col9" style="width:auto;"><img src="$UI/demo/sample/navigator/img/recycle.jpg" alt="" xid="image9"></img></div></div>
  </div><div xid="kitDiv" style="margin-top: 50px; height:150px;width:25px;padding-top:20px;background-color:#3366FF;color:#FFFFFF;" class="pull-right bg-info center-block" align="center" bind-click="kitDivClick">
    <a xid="a1" style="width:10px;color:#FFFFFF;"><![CDATA[便捷工具箱]]></a>
  </div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="JavaScript" xid="jsBtn" onClick="jsBtnClick">
   <i xid="i2"></i>
   <span xid="span2">JavaScript</span></a></div>
