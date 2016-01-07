<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:83px;height:auto;left:220px;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="本地列表插件实例"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">本地列表插件实例</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content container-fluid" xid="content1"> 
    <p>创建一个分享列表</p>
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="show" xid="show" onClick="showClick"> 
        <i xid="i1"/>  
        <span xid="span1">show</span> 
      </a>  
      <p>删除列表</p>
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="delete" xid="delete" onClick="deleteClick"> 
        <i xid="i2"/>  
        <span xid="span2">delete</span>
      </a>  
      <p>显示一个Log out 的列表,5s后自动关闭</p>
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="testLogoutSheet" xid="logoutSheet" onClick="logoutSheetClick"> 
        <i xid="i3"/>  
        <span xid="span3">testLogoutSheet</span>
      </a>
    </div> 
  </div> 
</div>
