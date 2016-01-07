<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:285px;top:98px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" xid="mainData"
      idColumn="id" autoNew="false"> 
      <rule xid="rule3">
   <col name="dataId" xid="ruleCol3">
    <required xid="required2">
     <expr xid="default8">true</expr></required> </col> </rule>
  <column label="id" name="id" type="String" xid="default1"></column>
  <column label="业务数据列表" name="dataId" type="String" xid="default2"></column>
  <column label="canDelete" name="canDelete" type="String" xid="default3"></column>
  <column label="columns" name="columns" type="String" xid="default9"></column>
  <column label="是否显示为树形" name="isTree" type="Boolean" xid="default10"></column>
  <column label="parent-relation(*)" name="parentRelation" type="String" xid="default11"></column>
  <column label="node-kind-relation" name="nodeKindRelation" type="String" xid="default12"></column>
  <column label="node-level-relation" name="nodeLevelRelation" type="String" xid="default13"></column>
  <column label="root-filter" name="rootFilter" type="String" xid="default14"></column>
  <column label="是否为从数据" name="isDetail" type="Boolean" xid="default15"></column>
  <column label="master-data" name="masterData" type="String" xid="default16"></column>
  <column label="master-column" name="masterColumn" type="String" xid="default17"></column>
  <rule xid="rule3">
   <col name="dataId" xid="ruleCol3">
    <required xid="required2">
     <expr xid="default8">true</expr></required> </col> </rule></div>  
    <div component="$UI/system/components/justep/data/data" xid="treeConfigData"
      idColumn="xid"> 
      <rule xid="rule2"/>  
      <column label="xid" name="xid" type="String" xid="default18"/>  
      <column label="可选择数据名称" name="name" type="String" xid="default19"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="columnsData" idColumn="id">
      <column label="id" name="id" type="String" xid="xid2"/>  
      <column label="表id" name="tableID" type="String" xid="xid4"/>  
      <column label="关系名称" name="columnName" type="String" xid="xi5"/>  
      <column label="列xid" name="columnXid" type="String" xid="xid6"/>  
      <column label="关系类型" name="columnType" type="String" xid="xid7"/>  
      <column label="编辑器(*)" name="columnShowType" type="String" xid="xid8"/>  
      <column label="关系标签" name="columnLabel" type="String" xid="xid9"/>  
      <master xid="default24" data="mainData" relation="tableID"/>
    <rule xid="rule1">
   <col name="id" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default4">index() + 1</expr></calculate> </col> 
   <col name="columnName" xid="ruleCol4">
    <required xid="required3">
     <expr xid="default20">true</expr></required> </col> 
   <col name="columnType" xid="ruleCol5">
    <required xid="required4">
     <expr xid="default21">true</expr></required> </col> 
   <col name="columnShowType" xid="ruleCol6">
    <required xid="required5">
     <expr xid="default22">true</expr></required> </col> 
   <col name="columnLabel" xid="ruleCol7">
    <required xid="required6">
     <expr xid="default23"></expr></required> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="columnTypeData" idColumn="type"><column label="类型" name="type" type="String" xid="xid3"></column>
  <data xid="default5">[{&quot;type&quot;:&quot;&quot;},{&quot;type&quot;:&quot;String&quot;},{&quot;type&quot;:&quot;Integer&quot;},{&quot;type&quot;:&quot;Long&quot;},{&quot;type&quot;:&quot;Float&quot;},{&quot;type&quot;:&quot;Double&quot;},{&quot;type&quot;:&quot;Decimal&quot;},{&quot;type&quot;:&quot;Boolean&quot;},{&quot;type&quot;:&quot;Date&quot;},{&quot;type&quot;:&quot;Time&quot;},{&quot;type&quot;:&quot;DateTime&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="columnShowTypeData" idColumn="type"><column label="type" name="type" type="String" xid="xid5"></column>
  <data xid="default6">[{&quot;type&quot;:&quot;&quot;},{&quot;type&quot;:&quot;input&quot;},{&quot;type&quot;:&quot;password&quot;},{&quot;type&quot;:&quot;range&quot;},{&quot;type&quot;:&quot;output&quot;},{&quot;type&quot;:&quot;textarea&quot;}]</data></div></div>  
  <div class="row" style="padding-top:50px"> 
    <div class="col-xs-12" style=""> 
      <form class="form-horizontal data-form" style="margin-right:12px"
        role="form"> 
        <div component="$UI/system/components/bootstrap/row/row" class="row"
          xid="row2"> 
          <div class="col col-xs-12 col-sm-12 col-md-12 col-lg-12" xid="col6">
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput1"> 
              <label class="x-label" xid="label2" bind-text="mainData.label('dataId')" />  
              <div class="x-edit" xid="div2"> 
                <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" bind-ref="mainData.ref('dataId')" />
              </div> 
            </div>
          </div></div>
      </form>  
      <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter"
        xid="toolBar1">
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
          onClick="{'operation':'columnsData.delete'}" xid="button1"> 
          <i xid="i1"/>  
          <span xid="span1"/>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
          onClick="{'operation':'columnsData.new'}" xid="button2"> 
          <i xid="i2"/>  
          <span xid="span2"/>
        </a>
      </div> 
    </div>  
    <div class="col-xs-12" style="" xid="div7"> 
       
    
  <div class="form-horizontal data-form" component="$UI/system/components/bootstrap/form/form" xid="form1" style="height:300px;"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
   <div class="col col-xs-3 col-sm-3 col-md-3 col-lg-3" xid="col11">
   <label class="x-label" xid="label9" bind-text="columnsData.label('columnName')"></label></div>
  <div class="col col-xs-3 col-sm-3 col-md-3 col-lg-3" xid="col12">
   <label class="x-label" xid="label8" bind-text="columnsData.label('columnType')"></label></div>
  <div class="col col-xs-3 col-sm-3 col-md-3 col-lg-3" xid="col12">
   <label class="x-label" xid="label8" bind-text="columnsData.label('columnShowType')"></label></div>
  <div class="col col-xs-3 col-sm-3 col-md-3 col-lg-3" xid="col4">
   <label class="x-label" xid="label7" bind-text="columnsData.label('columnLabel')"></label></div></div><div component="$UI/system/components/justep/list/list" class="x-list scroll" xid="list1" data="columnsData" style="height:100%;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row3"> 
          <div class="col col-xs-3 col-sm-3 col-md-3 col-lg-3" xid="col8"> 
            <input component="$UI/system/components/justep/input/input" class="form-control" xid="input6" bind-ref="ref('columnName')" /></div>  
          <div class="col col-xs-3 col-sm-3 col-md-3 col-lg-3" xid="col10"> 
            <select component="$UI/system/components/justep/select/select" class="form-control" xid="select1" bind-ref="ref('columnType')" bind-options="$model.columnTypeData" bind-optionsValue="type" bind-labelRef="ref('columnType')" bind-optionsLabel="type"></select></div>  
          <div class="col col-xs-3 col-sm-3 col-md-3 col-lg-3" xid="col10"> 
            <select component="$UI/system/components/justep/select/select" class="form-control" xid="select2" bind-ref="ref('columnShowType')" bind-options="$model.columnShowTypeData" bind-optionsValue="type"></select></div>  
          <div class="col col-xs-3 col-sm-3 col-md-3 col-lg-3" xid="col9"> 
            <input component="$UI/system/components/justep/input/input" class="form-control" xid="input4" bind-ref="ref('columnLabel')" /></div> 
        </div>
  </li></ul> </div></div></div>
  </div> 
</div>
