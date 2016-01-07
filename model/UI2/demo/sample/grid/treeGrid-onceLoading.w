<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:317px;top:605px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="areaData" idColumn="fID" onCustomRefresh="areaDataCustomRefresh" isTree="true"><column label="fID" name="fID" type="String" xid="xid1"></column>
  <column label="fName" name="fName" type="String" xid="xid2"></column>
  <column label="fParentID" name="fParentID" type="String" xid="xid3"></column>
  <column label="fType" name="fType" type="String" xid="xid4"></column>
  <treeOption xid="default1" parentRelation="fParentID" delayLoad="false"></treeOption></div></div> 
<h4 xid="h41"><![CDATA[树形表格一次加载]]>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="js" xid="js" onClick="jsClick">
   <i xid="i1"></i>
   <span xid="span1">js</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="源码" xid="source" onClick="sourceClick">
   <i xid="i2"></i>
   <span xid="span2">源码</span></a></h4>
  <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true" altRows="true" xid="areaGrid" data="areaData" appearance="treeGrid" expandColumn="fID" width="100%" height="auto">
   <columns xid="columns1"><column name="fID" xid="column1"></column>
  <column name="fName" xid="column2"></column>
  <column name="fParentID" xid="column3"></column>
  <column name="fType" xid="column4"></column></columns></div></div>