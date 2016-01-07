<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:94px;top:421px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="selectData" idColumn="mName"><column label="民族" name="mName" type="String" xid="xid1"></column>
  <data xid="default1">[{&quot;mName&quot;:&quot;汉族&quot;},{&quot;mName&quot;:&quot;满族&quot;},{&quot;mName&quot;:&quot;维吾尔族&quot;},{&quot;mName&quot;:&quot;朝鲜族&quot;},{&quot;mName&quot;:&quot;蒙古族&quot;},{&quot;mName&quot;:&quot;回族&quot;},{&quot;mName&quot;:&quot;苗族&quot;}]</data></div></div> 
<a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="js" xid="jsButton" onClick="jsButtonClick">
   <i xid="i3"></i>
   <span xid="span3">js</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="源码" xid="button" bind-visible="isVisible">
   <i xid="i4"></i>
   <span xid="span4">源码</span></a><table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table" xid="table1">
   
   <tbody class="x-list-template" xid="listTemplate1" style="width:auto;">
    <tr xid="tr2" style="width:auto;">
     <td xid="td2" style="width:auto;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput1" style="width:50%;">
   <label class="x-label" xid="label1" style="text-align:right;"><![CDATA[用户名：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" style="width:31px;"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelPassword1" style="width:50%;">
   <label class="x-label" xid="label2" style="text-align:right;"><![CDATA[密码：]]></label>
   <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="password1" style="width:31px;"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelSelect1" style="width:50%;">
   <label class="x-label" xid="label3" style="text-align:right;"><![CDATA[民族：]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" bind-options="$model.selectData" bind-optionsValue="mName" bind-optionsLabel="mName" bind-optionsCaption="--请选择--"></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelTextarea1" style="width:50%;">
   <label class="x-label" xid="label4" style="text-align:right;"><![CDATA[常用地址：]]></label>
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="textarea1" style="height:79px;width:31px;"></textarea></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"></div><div class="x-col" xid="col2"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="提交" xid="button1">
   <i xid="i1"></i>
   <span xid="span1">提交</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="重置" xid="button2">
   <i xid="i2"></i>
   <span xid="span2">重置</span></a></div>
   <div class="x-col" xid="col3"></div></div></td>
     </tr> </tbody> </table>
  </div>