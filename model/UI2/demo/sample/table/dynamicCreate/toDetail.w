<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:111px;top:338px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sexData" idColumn="sType"><column label="性别" name="sType" type="String" xid="xid1"></column>
  <data xid="default1">[{&quot;sType&quot;:&quot;男&quot;},{&quot;sType&quot;:&quot;女&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1" style="width:80%;height:80%;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput5">
   <label class="x-label" xid="label5" style="text-align:right;"><![CDATA[姓名：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="nameInput" style="height:34px;width:200px;"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelRadioGroup1">
   <label class="x-label" xid="label1" style="text-align:right;"><![CDATA[性别：]]></label>
   <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit" xid="radioGroup" bind-itemset="sexData" bind-itemsetValue="ref('sType')" bind-itemsetLabel="ref('sType')"></span></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput7">
   <label class="x-label" xid="label7" style="text-align:right;"><![CDATA[年龄：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="ageInput"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput8">
   <label class="x-label" xid="label8" style="text-align:right;"><![CDATA[地址：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="addressInput"></input></div></div>
   <div class="x-panel-bottom" xid="bottom1" style="width:80%;">
  <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="清空" xid="resetButton" onClick="resetButtonClick">
   <i xid="i2"></i>
   <span xid="span2">清空</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="确定" xid="OKButton" onClick="OKButtonClick">
   <i xid="i1"></i>
   <span xid="span1">确定</span></a></div>
  </div>
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowsReceiver" onReceive="windowReceiverReceive"></span></div>