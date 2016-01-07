<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:319px;top:561px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="areaData" idColumn="fID" isTree="true" onCustomRefresh="areaDataCustomRefresh"><column label="fID" name="fID" type="String" xid="xid5"></column>
  <column label="fName" name="fName" type="String" xid="xid6"></column>
  <column label="fParentID" name="fParentID" type="String" xid="xid7"></column>
  <column label="fType" name="fType" type="String" xid="xid8"></column>
  <treeOption xid="default2" parentRelation="fParentID" delayLoad="true"></treeOption>
  <master xid="default3"></master></div></div> 
<h4 xid="h41"><![CDATA[树形表格异步加载]]>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="js" xid="js" onClick="jsClick">
   <i xid="i1"></i>
   <span xid="span1">js</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="源码" xid="source" onClick="sourceClick">
   <i xid="i2"></i>
   <span xid="span2">源码</span></a></h4><div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true" altRows="true" xid="areaGrid" data="areaData" appearance="treeGrid" width="100%" height="100%">
   <columns xid="columns1"><column name="fID" xid="column9"></column>
  <column name="fName" xid="column10"></column>
  <column name="fParentID" xid="column11"></column>
  <column name="fType" xid="column12"></column></columns></div>
  </div>