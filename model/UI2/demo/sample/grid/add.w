<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:206px;top:505px;"/> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver" onReceive="windowReceiverReceive"></span>
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1" collapsible="true">
   <h4 xid="h42"><![CDATA[新增订单]]></h4><div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form(bootstrap)" xid="form1">
    <div class="form-group" xid="formGroup1">
     <div class="col-sm-3" xid="col13">
      <label class="control-label" xid="controlLabel1">姓名:</label>
  </div> 
     <div class="col-sm-9" xid="col14">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="nameInput" readonly="true"></input></div> 
      
      </div> 
    <div class="form-group" xid="formGroup5">
   <div class="col-sm-3" xid="col15">
      <label class="control-label" xid="controlLabel2">订单:</label>
  </div><div class="col-sm-9" xid="col16">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="orderInput"></input></div></div><div class="form-group" xid="formGroup2">
     <div class="col-sm-3" xid="col17">
      <label class="control-label" xid="controlLabel3">住址:</label></div> 
     <div class="col-sm-9" xid="col18">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="addressInput"></input></div> 
      
      </div> 
  <div class="form-group" xid="formGroup6">
   <div class="col-sm-3" xid="col19">
      <label class="control-label" xid="controlLabel4">电话:</label></div><div class="col-sm-9" xid="col20">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="phoneInput"></input></div></div><div class="form-group" xid="formGroup3">
   <div class="col-sm-3" xid="col1"><label class="control-label" xid="controlLabel5">时间:</label></div>
   <div class="col-sm-9" xid="col2"><input component="$UI/system/components/justep/input/input" class="form-control" xid="timeInput"></input></div>
   </div>
  </div> 
  </div>
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
   <div class="col col-xs-3" xid="col5"></div>
   <div class="col col-xs-3" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="保存" xid="save" onClick="saveClick">
   <i xid="i1"></i>
   <span xid="span1">保存</span></a></div>
   <div class="col col-xs-3" xid="col7"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="返回" xid="back" onClick="backClick">
   <i xid="i2"></i>
   <span xid="span2">返回</span></a></div>
  <div class="col col-xs-3" xid="col8"></div></div></div>