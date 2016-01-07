<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:191px;top:40px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data" idColumn="tID" confirmDelete="false"><column label="编号" name="tID" type="String" xid="xid5"></column>
  <column label="姓名" name="tName" type="String" xid="xid1"></column>
  <column label="性别" name="tSex" type="String" xid="xid3"></column>
  <column label="年龄" name="tAge" type="String" xid="xid2"></column>
  <column label="地址" name="tAddress" type="String" xid="xid4"></column>
  <column label="操作" name="tOperation" type="String" xid="xid6"></column>
  <data xid="default1">[{&quot;tID&quot;:&quot;1&quot;,&quot;tName&quot;:&quot;李四&quot;,&quot;tSex&quot;:&quot;女&quot;,&quot;tAge&quot;:&quot;20&quot;,&quot;tAddress&quot;:&quot;北京市海淀区中关村&quot;,&quot;tOperation&quot;:&quot;&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="createTableData" idColumn="name"><column label="姓名" name="name" type="String" xid="xid8"></column>
  <column label="性别" name="sex" type="String" xid="xid9"></column>
  <column label="年龄" name="age" type="String" xid="xid10"></column>
  <column label="手机" name="phone" type="String" xid="xid11"></column>
  <column label="地址" name="address" type="String" xid="xid12"></column>
  <data xid="default2">[{&quot;name&quot;:&quot;张三&quot;,&quot;sex&quot;:&quot;男&quot;,&quot;age&quot;:&quot;38&quot;,&quot;phone&quot;:&quot;18736982573&quot;,&quot;address&quot;:&quot;北京海淀中关村&quot;},{&quot;name&quot;:&quot;张小三&quot;,&quot;sex&quot;:&quot;男&quot;,&quot;age&quot;:&quot;15&quot;,&quot;phone&quot;:&quot;13568715996&quot;,&quot;address&quot;:&quot;北京海淀牡丹园&quot;}]</data></div></div> 

  
  
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" xid="controlGroup1" collapsible="true" title="新增">
   <div class="x-control-group-title" xid="controlGroupTitle1">
    <span xid="span5"><![CDATA[新增]]></span></div> 
   <div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form(bootstrap)" xid="form1">
    <div class="form-group" xid="formGroup1">
     <div class="col-sm-1" xid="col13">
      <label class="control-label pull-right" xid="controlLabel1"><![CDATA[姓名:]]></label></div> 
     <div class="col-sm-2" xid="col14">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="nameInput" dataType="String" maxLength="5" pattern="[a-zA-Z\u4e00-\u9fa5]"></input></div> 
     <div class="col-sm-1" xid="col15">
      <label class="control-label pull-right" xid="controlLabel2"><![CDATA[性别:]]></label>
  </div> 
     <div class="col-sm-2" xid="col16">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="sexInput" dataType="String" maxLength="1" pattern="[\u4e00-\u9fa5]"></input></div> <div class="col-sm-1" xid="col17">
      <label class="control-label pull-right" xid="controlLabel3"><![CDATA[年龄:]]></label></div><div class="col-sm-2" xid="col18">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="ageInput" maxLength="2" placeHolder="年龄必须小于100" pattern="[0-9]"></input></div><div class="col-sm-1" xid="col19">
      <label class="control-label pull-right" xid="controlLabel4"><![CDATA[地址:]]></label></div><div class="col-sm-2" xid="col20">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="addressInput" dataType="String" maxLength="20"></input></div></div> 
    <div class="form-group" xid="formGroup2">
      
      
      
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="添加" xid="addButton" onClick="addButtonClick">
   <i xid="i1"></i>
   <span xid="span1">添加</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link text-danger" label="撤销" xid="backButton" onClick="backButtonClick">
   <i xid="i2"></i>
   <span xid="span2">撤销</span></a></div> 
  
  </div> 
  </div><div component="$UI/system/components/justep/dataTables/dataTables" flexibleWidth="true" rowActiveClass="active" class="table table-hover table-striped" xid="dataTables" data="data" multiSelect="false" onCellRender="dataTablesCellRender" onRowClick="dataTablesRowClick" stateSave="false">
   <columns xid="columns1"><column name="tID" xid="columnID" visible="false"></column>
  <column name="tName" xid="column6"></column>
  <column name="tSex" xid="column7"></column>
  <column name="tAge" xid="column8"></column>
  <column name="tAddress" xid="column9"></column>
  <column name="tOperation" xid="column1" label="操作"></column></columns></div><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="动态创建表格" xid="createTableBtn" icon="icon-android-add" onClick="createTableBtnClick">
   <i xid="i3" class="icon-android-add"></i>
   <span xid="span3">动态创建表格</span></a><div xid="tableDiv"></div><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowsDialog" title="修改" showTitle="true" src="$UI/demo/sample/table/dynamicCreate/toDetail.w" status="normal" onReceive="windowsDialogReceive" width="50%" height="50%"></span>
  
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="动态生成表单" xid="createFormBtn" icon="icon-plus-round" onClick="createFormBtnClick">
   <i xid="i4" class="icon-plus-round"></i>
   <span xid="span4">动态生成表单</span></a>
  <div xid="formDiv"></div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="JS代码" xid="showJSButton" onClick="showJSButtonClick">
   <i xid="i5"></i>
   <span xid="span6">JS代码</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="源码" xid="showSourceBtn" bind-visible="isVisible" onClick="showSourceBtnClick">
   <i xid="i6"></i>
   <span xid="span7">源码</span></a></div>