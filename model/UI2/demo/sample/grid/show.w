<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:331px;top:581px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderData" idColumn="fID"><column label="ID：" name="fID" type="String" xid="xid1"></column>
  <column label="时间：" name="fCreateTime" type="String" xid="xid2"></column>
  <column label="详情：" name="fContent" type="String" xid="xid3"></column>
  <column label="价钱：" name="fSum" type="String" xid="xid4"></column>
  <column label="姓名：" name="fUserName" type="String" xid="xid5"></column>
  <column label="电话：" name="fPhoneNumber" type="String" xid="xid6"></column>
  <column label="地址：" name="fAddress" type="String" xid="xid7"></column></div></div> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver" onReceive="windowReceiverReceive"></span>
  <h4 xid="h41"><![CDATA[订单详情]]></h4><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" style="width:80%;">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li1" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput1">
   <label class="x-label" xid="label1" bind-text="$model.orderData.label('fID')" style="text-align:right;"></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref="$model.orderData.ref('fID')"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput2">
   <label class="x-label" xid="label2" bind-text="orderData.label('fCreateTime')" style="text-align:right;"></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref="orderData.ref('fCreateTime')"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput3">
   <label class="x-label" xid="label3" bind-text="orderData.label('fContent')" style="text-align:right;"></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref="orderData.ref('fContent')"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput5">
   <label class="x-label" xid="label5" bind-text="orderData.label('fUserName')" style="text-align:right;"></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output5" bind-ref="orderData.ref('fUserName')"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput6">
   <label class="x-label" xid="label6" bind-text="orderData.label('fPhoneNumber')" style="text-align:right;"></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6" bind-ref="orderData.ref('fPhoneNumber')"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput7">
   <label class="x-label" xid="label7" bind-text="orderData.label('fAddress')" style="text-align:right;"></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref="orderData.ref('fAddress')"></div></div></li></ul> </div>
  
  
  
  
  
  
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
   <div class="col col-xs-5" xid="col1"></div>
   <div class="col col-xs-2" xid="col2"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="返回" xid="back" onClick="backClick">
   <i xid="i1"></i>
   <span xid="span1">返回</span></a></div>
   <div class="col col-xs-5" xid="col3"></div></div>
  </div>