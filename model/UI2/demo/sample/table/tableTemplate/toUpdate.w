<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:94px;top:337px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="educationData" idColumn="type"><column label="类型" name="type" type="String" xid="xid1"></column>
  <data xid="default1">[{&quot;type&quot;:&quot;博士&quot;},{&quot;type&quot;:&quot;硕士&quot;},{&quot;type&quot;:&quot;研究生&quot;},{&quot;type&quot;:&quot;本科&quot;},{&quot;type&quot;:&quot;专科&quot;},{&quot;type&quot;:&quot;高中&quot;},{&quot;type&quot;:&quot;初中&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sexData" idColumn="type"><column label="性别" name="type" type="String" xid="xid2"></column>
  <data xid="default2">[{&quot;type&quot;:&quot;男&quot;},{&quot;type&quot;:&quot;女&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1" style="width:80%;">
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput2">
   <label class="x-label" xid="label6" style="text-align:right;"><![CDATA[姓名：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="nameInput" readonly="true"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelPassword1">
   <label class="x-label" xid="label2" style="text-align:right;"><![CDATA[密码：]]></label>
   <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="password"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelSelect1">
   <label class="x-label" xid="label3" style="text-align:right;"><![CDATA[学历：]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="educationSelect" bind-options="educationData" bind-optionsValue="type" bind-optionsLabel="type"></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelRadioGroup1">
   <label class="x-label" xid="label4" style="text-align:right;"><![CDATA[性别：]]></label>
   <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit" xid="radioGroup" bind-itemset="sexData" bind-itemsetValue="ref('type')" bind-itemsetLabel="ref('type')"></span></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput1">
   <label class="x-label" xid="label5" style="text-align:right;"><![CDATA[入职日期：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="dateInput" dataType="Date" format="yyyy-MM-dd" max="js:new Date()"></input></div>
  </div>
   <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="清空" xid="clearButton" onClick="clearButtonClick">
   <i xid="i2"></i>
   <span xid="span2">清空</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="确定" xid="OKButton" onClick="OKButtonClick">
   <i xid="i1"></i>
   <span xid="span1">确定</span></a>
  </div></div>
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="wReceiver" onReceive="wReceiverReceive"></span></div>