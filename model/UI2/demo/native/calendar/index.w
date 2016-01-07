<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:646px;top:236px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="calendar" idColumn="id"> 
      <column label="活动ID" name="id" type="String" xid="xid1"/>  
      <column label="活动标题" name="name" type="String" xid="xid2"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="日历插件实例"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">日历插件实例</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content container-fluid" xid="content1"> 
      <p>用于android4以下</p>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="创建活动" xid="creNotification" onClick="creNotificationClick"> 
        <i xid="i1"/>  
        <span xid="span1">创建活动</span> 
      </a>  
      <p>适用于android4以上和IOS</p>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="创建活动" xid="createEventInteractively" onClick="createEventInteractivelyClick"> 
        <i xid="i4"/>  
        <span xid="span4">创建活动</span> 
      </a>  
      <p>创建自定义活动</p>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="创建活动" xid="createEventWithOptions" onClick="createEventWithOptionsClick"> 
        <i xid="i2"/>  
        <span xid="span2">创建活动</span> 
      </a>  
      <p>打开本地日历应用</p>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="打开日历" xid="openCalendar" onClick="openCalendarClick"> 
        <i xid="i3"/>  
        <span xid="span3">打开日历</span> 
      </a>  
      <p>查找活动</p>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="查找活动" xid="findEvent" onClick="findEventClick"> 
        <i xid="i6"/>  
        <span xid="span6">查找活动</span> 
      </a>  
      <p>删除活动</p>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="删除活动" xid="deleteEvent" onClick="deleteEventClick"> 
        <i xid="i8"/>  
        <span xid="span8">删除活动</span>
      </a>  
      <p>列出所有活动</p>
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="列出所有活动" xid="listEvent" onClick="listEventClick"> 
        <i xid="i7"/>  
        <span xid="span7">列出所有活动</span> 
      </a>  
      <p>创建和管理本地日历，仅限于IOS</p>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="创建活动" xid="changeEvents" onClick="button4Click" bind-enable="justep.Browser.isIos"> 
        <i xid="i5"/>  
        <span xid="span5">创建活动</span> 
      </a>  
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list1" data="calendar"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1"> 
            <div component="$UI/system/components/bootstrap/row/row" class="row"
              xid="row1"> 
              <div class="col col-xs-3" xid="col1"> 
                <label xid="label1" bind-text="label('id')">label</label> 
              </div>  
              <div class="col col-xs-3" xid="col2"> 
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output1" bind-ref="ref('id')"/> 
              </div>  
              <div class="col col-xs-3" xid="col3"> 
                <label xid="label2" bind-text="label('name')">label</label> 
              </div>  
              <div class="col col-xs-3" xid="col4"> 
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output2" bind-ref="ref('name')"/> 
              </div> 
            </div> 
          </li> 
        </ul> 
      </div> 
    </div> 
  </div> 
</div>
