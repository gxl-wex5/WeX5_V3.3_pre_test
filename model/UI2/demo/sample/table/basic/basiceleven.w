<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:84px;top:274px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data" idColumn="tID"><column label="ID" name="tID" type="String" xid="xid1"></column>
  <column label="姓名" name="tName" type="String" xid="xid2"></column>
  <column label="性别" name="tSex" type="String" xid="xid3"></column>
  <column label="年龄 " name="tAge" type="Integer" xid="xid4"></column>
  <column label="备注" name="tRemark" type="String" xid="xid5"></column>
  <data xid="default1">[{&quot;tID&quot;:&quot;1&quot;,&quot;tName&quot;:&quot;张小三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:21,&quot;tRemark&quot;:&quot;备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息&quot;},{&quot;tID&quot;:&quot;2&quot;,&quot;tName&quot;:&quot;李小四&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:22,&quot;tRemark&quot;:&quot;备注信息&quot;},{&quot;tID&quot;:&quot;3&quot;,&quot;tName&quot;:&quot;张小三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:23,&quot;tRemark&quot;:&quot;备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息&quot;},{&quot;tID&quot;:&quot;4&quot;,&quot;tName&quot;:&quot;李小四&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:24,&quot;tRemark&quot;:&quot;备注信息&quot;},{&quot;tID&quot;:&quot;5&quot;,&quot;tName&quot;:&quot;张小三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:25,&quot;tRemark&quot;:&quot;备注信息备注信息&quot;},{&quot;tID&quot;:&quot;6&quot;,&quot;tName&quot;:&quot;李小四&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:26,&quot;tRemark&quot;:&quot;备注信息&quot;},{&quot;tID&quot;:&quot;7&quot;,&quot;tName&quot;:&quot;张小三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:27,&quot;tRemark&quot;:&quot;备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息&quot;},{&quot;tID&quot;:&quot;8&quot;,&quot;tName&quot;:&quot;李小四&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:28,&quot;tRemark&quot;:&quot;备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息&quot;},{&quot;tID&quot;:&quot;9&quot;,&quot;tName&quot;:&quot;张小三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:29,&quot;tRemark&quot;:&quot;备注信息&quot;},{&quot;tID&quot;:&quot;10&quot;,&quot;tName&quot;:&quot;李小四&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:20,&quot;tRemark&quot;:&quot;备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息备注信息&quot;}]</data></div></div> 

  <div component="$UI/system/components/justep/dataTables/dataTables" flexibleWidth="true" rowActiveClass="active" class="table table-hover table-striped" xid="dataTables" data="data" showRowNumber="false" scrollCollapse="false" scrollY="560px">
   <columns xid="columns1">
    <column name="tName" xid="column1" label="姓名" width="100px"></column>
    <column name="tSex" xid="column2" label="性别" width="100px"></column>
    <column name="tAge" xid="column3" label="年龄" width="100px"></column>
  <column name="tRemark" xid="column4" label="备注"></column></columns> </div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="javaScript" xid="showJSButton" onClick="showJSButtonClick">
   <i xid="i1"></i>
   <span xid="span1">javaScript</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="源码" xid="button" bind-visible="isVisible">
   <i xid="i2"></i>
   <span xid="span2">源码</span></a></div>