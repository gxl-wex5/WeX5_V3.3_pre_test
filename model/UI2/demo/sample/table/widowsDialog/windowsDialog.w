<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:56px;top:187px;"/> 
<div component="$UI/system/components/justep/tabs/tabs" class="x-tabs" xid="tabs1" style="height:180px;">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel1">
    <div class="x-panel-top" xid="top1">
     <ul class="nav nav-tabs" xid="navs1">
      <li class="active" xid="li1">
       <a content="tabContent_1" xid="tabItem1"><![CDATA[空白弹窗]]></a></li> 
  </ul> </div> 
    <div class="x-panel-content" xid="content2">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents1">
      <div class="x-contents-content active" xid="content1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="弹窗" xid="dialogButton" onClick="dialogButtonClick">
   <i xid="i1"></i>
   <span xid="span1">弹窗</span></a><h5 xid="h51"><![CDATA[弹出一个空白弹窗]]></h5></div>
  </div> </div> </div> </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="wdEmpty" style="left:152px;top:11px;" src="$UI/demo/sample/table/widowsDialog/empty.w" status="normal" title="空白" showTitle="true"></span>
  <div component="$UI/system/components/justep/tabs/tabs" class="x-tabs" xid="tabs2" style="height:180px;">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel2">
    <div class="x-panel-top" xid="top2">
     <ul class="nav nav-tabs" xid="navs2">
      <li class="active" xid="li2">
       <a content="tabContent_1" xid="tabItem2"><![CDATA[普通表格弹窗]]></a></li> </ul> </div> 
    <div class="x-panel-content" xid="content3">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents2">
      <div class="x-contents-content active" xid="content1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="普通表格弹窗" xid="wdTableButton" onClick="wdTableButtonClick">
   <i xid="i2"></i>
   <span xid="span2">普通表格弹窗</span></a>
  <h5 xid="h52"><![CDATA[就是把内容放在body中，整体内容随滚动条滚动，没什么特别的地方。]]></h5></div></div> </div> </div> 
  </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="wdTable" style="left:151px;top:231px;" title="普通弹窗表格" showTitle="true" src="$UI/demo/sample/table/widowsDialog/windowDialogTable.w" resizable="false" status="normal"></span><div component="$UI/system/components/justep/tabs/tabs" class="x-tabs" xid="tabsPlus" style="height:180px;">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel3">
    <div class="x-panel-top" xid="top3">
     <ul class="nav nav-tabs" xid="navs3">
      <li class="active" xid="li3">
       <a content="tabContent_1" xid="tabItem3">上下固定的弹窗</a></li> </ul> </div> 
    <div class="x-panel-content" xid="content5">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents3">
      <div class="x-contents-content active" xid="content4">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="弹窗Plus" xid="wdTableButtonPlus" onClick="wdTableButtonPlusClick">
        <i xid="i3"></i>
        <span xid="span3">弹窗Plus</span></a> 
       <h5 xid="h53">让弹窗内容也像右侧内页那样有滚动区域和固定区域。</h5>
  </div> </div> </div> </div> </div><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="JS代码" xid="showJSButton" onClick="showJSButtonClick">
   <i xid="i4"></i>
   <span xid="span4">JS代码</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="源码" xid="showSourceBtn" bind-visible="isVisible" onClick="showSourceBtnClick">
   <i xid="i5"></i>
   <span xid="span5">源码</span></a><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="wdTablePlus" style="left:150px;top:406px;" title="表头固定弹窗" src="$UI/demo/sample/table/widowsDialog/wdTablePlus.w" resizable="true" status="normal" showTitle="true" height="85%"></span></div>