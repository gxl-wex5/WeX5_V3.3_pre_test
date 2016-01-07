<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:156px;top:292px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="singleRowData" idColumn="content"> 
      <column label="内容" name="content" type="String" xid="xid1"/>  
      <data xid="default1">[{&quot;content&quot;:&quot;第十三届运动大会即将开始，请大家抓紧时间报名&quot;},{&quot;content&quot;:&quot;部门质量保证文件发布&quot;},{&quot;content&quot;:&quot;请新同事将网站个人信息补充完整&quot;},{&quot;content&quot;:&quot;关于成立技术沙龙通知&quot;},{&quot;content&quot;:&quot;关于组织助理系列活动工作&quot;}]</data></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="popOverData" idColumn="content">
      <column label="内容" name="content" type="String" xid="xid3"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="doublRowData" idColumn="content">
      <column label="内容" name="content" type="String" xid="xid4"/>  
      <column label="时间" name="time" type="String" xid="xid5"/>  
      <data xid="default2">[{&quot;content&quot;:&quot;第十三届运动大会即将开始，请大家抓紧时间报名&quot;,&quot;time&quot;:&quot;2010-09-07&quot;},{&quot;content&quot;:&quot;部门质量保证文件发布&quot;,&quot;time&quot;:&quot;2010-09-07&quot;},{&quot;content&quot;:&quot;请新同事将网站个人信息补充完整&quot;,&quot;time&quot;:&quot;2010-09-07&quot;},{&quot;content&quot;:&quot;关于成立技术沙龙通知&quot;,&quot;time&quot;:&quot;2010-09-07&quot;},{&quot;content&quot;:&quot;关于组织助理系列活动工作&quot;,&quot;time&quot;:&quot;2010-09-07&quot;}]</data></div>
  </div>  
  <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right"
    label="JavaScript" xid="jsBtn" onClick="jsBtnClick"> 
    <i xid="i1"/>  
    <span xid="span2">JavaScript</span>
  </a>
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group"
    title="1、单列箭头图标" xid="controlGroup1"> 
    <div class="x-control-group-title" xid="controlGroupTitle1"> 
      <span xid="span1">title</span> 
    </div>  
    <label xid="label1"><![CDATA[点击查看全部内容,改变图标，只需改变相应的按钮的icon属性]]></label>
    <div component="$UI/system/components/justep/list/list" class="x-list"
      xid="list2" data="singleRowData"> 
      <ul class="x-list-template" xid="listTemplateUl2"> 
        <li xid="li2"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row1"> 
            <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
                label="button" xid="button2" icon="icon-arrow-right-b"> 
                <i xid="i2" class="icon-arrow-right-b"/>  
                <span xid="span3"/> 
              </a> 
            </div>  
            <div class="x-col" xid="col2"> 
              <div component="$UI/system/components/justep/output/output" class="x-output"
                xid="textOutput" bind-ref="ref('content')" style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;width:300px;padding:5px 5px 5px 5px;border-width:1px 1px 1px 1px;height:30px;"
                bind-click="textOutputClick"/> 
            </div> 
          </div> 
        </li> 
      </ul> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="textPopOver" opacity="0.5" dismissible="true"> 
    <div class="x-popOver-overlay" xid="div5"/>  
    <div class="x-popOver-content" xid="div6" bind-text=" $model.popOverData.val(&quot;content&quot;)"
      style="background-color:#7083D1;font-size:medium;height:224px;width:299px;"/>
  </div>  
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group"
    title="2、双列圆点图标" xid="controlGroup2"> 
    <div class="x-control-group-title" xid="controlGroupTitle2"> 
      <span xid="span4">title</span>
    </div>  
    <div component="$UI/system/components/justep/list/list" class="x-list"
      xid="list3" data="doublRowData"> 
      <ul class="x-list-template" xid="listTemplateUl3"> 
        <li xid="li3"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row2"> 
            <div class="x-col x-col-fixed x-col-center" xid="col4" style="width:auto;"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
                label="button" xid="button3" icon="icon-record"> 
                <i xid="i3" class="icon-record"/>  
                <span xid="span5"/>
              </a> 
            </div>  
            <div class="x-col" xid="col5"> 
              <div component="$UI/system/components/justep/output/output" class="x-output"
                xid="output1" bind-ref="ref('content')" style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;width:300px;padding:5px 5px 5px 5px;border-width:1px 1px 1px 1px;height:30px;"
                bind-click="textOutputClick"/>
            </div>  
            <div class="x-col" xid="col6">
              <div component="$UI/system/components/justep/output/output" class="x-output"
                xid="output2" bind-ref="ref('time')"/>
            </div>
          </div> 
        </li> 
      </ul> 
    </div>
  </div>
</div>
