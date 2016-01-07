<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:29px;top:456px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data" idColumn="mName"><column label="民族" name="mName" type="String" xid="xid1"></column>
  <data xid="default1">[{&quot;mName&quot;:&quot;汉族&quot;},{&quot;mName&quot;:&quot;满族&quot;},{&quot;mName&quot;:&quot;维吾尔族&quot;}]</data></div></div> 
<table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table" xid="table">
   <thead xid="thead1">
     <tr xid="tr1">
   <th xid="col2"><![CDATA[]]>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="js" xid="showJSButton" onClick="showJSButtonClick">
   <i xid="i3"></i>
   <span xid="span3">js</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="源码" xid="button" bind-visible="isVisible">
   <i xid="i4"></i>
   <span xid="span4">源码</span></a></th><th xid="col3" style="text-indent:250px;font-size:large;"><![CDATA[表单标题]]></th>
  </tr></thead> 
   <tbody class="x-list-template" xid="listTemplate1">
    <tr xid="tr2">
     <td xid="td2">
   <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row1">
    <div class="x-col" xid="col6"></div>
    <div class="x-col" xid="col7"></div>
    <label xid="label15" style="font-weight:normal;">用户名：</label></div> </td><td xid="td3">
   <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" style="width:30%;"></input>
   
   
   </td>
  </tr> 
  <tr xid="tr4">
   <td xid="td8"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   
  <div class="x-col" xid="col13"></div>
  <div class="x-col" xid="col14"></div><label xid="label22" class="pull-right" style="font-weight:normal;"><![CDATA[密码：]]></label></div></td>
   <td xid="td9"><input component="$UI/system/components/justep/input/password" class="form-control" xid="password1" style="width:30%;"></input></td></tr>
  <tr xid="tr5">
   <td xid="td10"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   
  <div class="x-col" xid="col15"></div>
  <div class="x-col" xid="col16"></div><label xid="label23" class="pull-right" style="font-weight:normal;"><![CDATA[民族：]]></label></div></td>
   <td xid="td11"><select component="$UI/system/components/justep/select/select" class="form-control" xid="select1" optionsAutoLoad="true" bind-options="$model.data" bind-optionsValue="mName" bind-optionsLabel="mName" style="width:30%;" bind-optionsCaption="--请选择--"></select></td></tr>
  <tr xid="tr6">
   <td xid="td12"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   
  <div class="x-col" xid="col17"></div>
  <div class="x-col" xid="col18"></div><label xid="label24" class="pull-right" style="font-weight:normal;"><![CDATA[常用地址：]]></label></div></td>
   <td xid="td13"><textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="width:50%;height:100px;"></textarea>
  </td></tr>
  <tr xid="tr7">
   <td xid="td4"></td>
   <td xid="td5">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col1"></div>
   <div class="x-col" xid="col4"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="提交" xid="button1">
   <i xid="i1"></i>
   <span xid="span1">提交</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="清空" xid="button2">
   <i xid="i2"></i>
   <span xid="span2">清空</span></a></div>
   <div class="x-col" xid="col5"></div></div></td></tr></tbody> </table>
  </div>