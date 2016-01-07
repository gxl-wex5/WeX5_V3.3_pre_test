<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:83px;height:auto;left:220px;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="屏幕旋转插件实例"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">屏幕旋转插件实例</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content container-fluid" xid="content1"> 
      <p>旋转和锁定横屏</p>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="旋转屏幕横向" xid="orientation" onClick="orientationClick"> 
        <i xid="i1"/>  
        <span xid="span1">旋转屏幕横向</span> 
      </a>  
    	<p>旋转和锁定竖屏</p>
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="旋转屏幕纵向" xid="portrait" onClick="portraitClick"> 
        <i xid="i2"/>  
        <span xid="span2">旋转屏幕纵向</span>
      </a> 
      <p>取消屏幕锁定，屏幕方向跟随系统</p> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="解除屏幕锁定" xid="unlock" onClick="unlockClick"> 
        <i xid="i3"/>  
        <span xid="span3">解除屏幕锁定</span>
      </a>  
      <p>获取屏幕屏幕方向参数</p>
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="获取当前屏幕方向参数" xid="button3" onClick="button3Click"> 
        <i xid="i4"/>  
        <span xid="span4">获取当前屏幕方向参数</span>
      </a>
    </div> 
  </div> 
</div>
