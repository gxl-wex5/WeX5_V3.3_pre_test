<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:57px;top:346px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="selectData" idColumn="mName"><column isCalculate="false" label="民族" name="mName" type="String" xid="xid1"></column>
  <data xid="default1">[{&quot;mName&quot;:&quot;汉族&quot;},{&quot;mName&quot;:&quot;满族&quot;},{&quot;mName&quot;:&quot;维吾尔族&quot;}]</data></div></div> 
<div component="$UI/system/components/fragment/form/formRow5Btn2" xid="formRow5Btn21">
   <div xid="div1">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20" xid="labelInput1">
     <label class="x-label" xid="label1" style="text-align:right;"><![CDATA[用户名：]]></label>
     <div class="x-edit" xid="div2">
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" style="width:221px;" placeHolder="请输入用户名"></input></div> </div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20" xid="labelInput2">
     <label class="x-label" xid="label2" style="text-align:right;"><![CDATA[密码：]]></label>
     <div class="x-edit" xid="div3">
      <input component="$UI/system/components/justep/input/password" class="form-control" xid="password1" style="width:222px;"></input></div> </div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20" xid="labelInput3">
     <label class="x-label" xid="label3" style="text-align:right;"><![CDATA[民族：]]></label>
     <div class="x-edit" xid="div4">
      <select component="$UI/system/components/justep/select/select" class="form-control" xid="select1" style="width:224px;" bind-options="selectData" bind-optionsValue="mName" bind-optionsLabel="mName" bind-optionsCaption="汉族"></select></div> </div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20" xid="labelInput4">
     <label class="x-label" xid="label4" style="text-align:right;"><![CDATA[常用地址：]]></label>
     <div class="x-edit" xid="div5">
      <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="height:100px;width:310px;"></textarea></div> </div> 
    </div> 
   <div class="formRow5Btn2-toolBar-position" xid="div7" style="width:50%;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="提交" xid="button1">
     <i xid="i1"></i>
     <span xid="span1">提交</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="重置" xid="button2">
     <i xid="i2"></i>
     <span xid="span2">重置</span></a> </div> 
  
  <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="js" xid="showJSButton" onClick="showJSButtonClick">
   <i xid="i3"></i>
   <span xid="span3">js</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="源码" xid="button" bind-visible="isVisible">
   <i xid="i4"></i>
   <span xid="span4">源码</span></a></div></div>