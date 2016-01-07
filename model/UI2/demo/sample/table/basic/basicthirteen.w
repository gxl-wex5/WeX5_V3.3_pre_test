<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:63px;top:478px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="selectData" idColumn="mName"><column label="民族" name="mName" type="String" xid="xid1"></column>
  <data xid="default5">[{&quot;mName&quot;:&quot;汉族&quot;},{&quot;mName&quot;:&quot;满族&quot;},{&quot;mName&quot;:&quot;维吾尔族&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="表单标题" xid="controlGroup1" collapsible="true">
   <div class="x-control-group-title" xid="controlGroupTitle1">
    <span xid="span5"><![CDATA[表单标题]]></span><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="js" xid="jsButton" onClick="jsButtonClick">
   <i xid="i1"></i>
   <span xid="span1">js</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="源码" xid="button" bind-visible="isVisible">
   <i xid="i2"></i>
   <span xid="span2">源码</span></a></div> 
   <div component="$UI/system/components/bootstrap/form/form(bootstrap)" xid="form1" class="form-horizontal container-fluid">
    <div class="form-group" xid="formGroup1">
     <div class="col-sm-2" xid="col13">
      <label class="control-label pull-right" xid="controlLabel1"><![CDATA[用户名：]]></label>
  </div> 
     <div class="col-sm-4" xid="col14">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="input6" style="width:70%;"></input></div> 
     
     </div> 
    <div class="form-group" xid="formGroup2">
   <div class="col-sm-2" xid="col17">
    <label class="control-label pull-right" xid="controlLabel3"><![CDATA[密码：]]></label></div> 
   <div class="col-sm-4" xid="col18">
    <input component="$UI/system/components/justep/input/password" class="form-control" xid="password1" style="width:70%;"></input></div> 
   
   </div>
  <div class="form-group" xid="formGroup3">
   <div class="col-sm-2" xid="col3">
    <label class="control-label pull-right" xid="controlLabel5"><![CDATA[民族：]]></label></div> 
   <div class="col-sm-4" xid="col2">
    <select component="$UI/system/components/justep/select/select" class="form-control" xid="select2" bind-options="selectData" bind-optionsValue="mName" bind-optionsLabel="mName" style="width:70%;" bind-optionsCaption="--请选择--"></select></div> 
   
   </div>
  <div class="form-group" xid="formGroup4">
   <div class="col-sm-2" xid="col5">
    <label class="control-label pull-right" xid="controlLabel7"><![CDATA[常用地址：]]></label></div> 
   <div class="col-sm-4" xid="col6">
    <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="height:90px;"></textarea></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col31"></div>
   <div class="x-col" xid="col32"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="提交" xid="button3">
    <i xid="i4"></i>
    <span xid="span4">提交</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="重置" xid="button4">
    <i xid="i3"></i>
    <span xid="span3">重置</span></a></div>
   <div class="x-col" xid="col33"></div></div></div> 
  
  </div>
  </div>