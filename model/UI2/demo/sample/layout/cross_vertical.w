<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:126px;top:318px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="statusData" idColumn="edit"><column label="edit" name="edit" type="String" xid="xid1"></column>
  <data xid="default1">[{&quot;edit&quot;:&quot;1&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="textData" idColumn="fID" onCustomRefresh="textDataCustomRefresh"><column label="ID" name="fID" type="String" xid="xid2"></column>
  <column label="姓名" name="fName" type="String" xid="xid3"></column>
  <column label="性别" name="fSex" type="Integer" xid="xid4"></column>
  <column label="地址" name="fAddress" type="String" xid="xid5"></column>
  <column label="备注" name="fRemark" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sexData" idColumn="sex"><column label="性别：" name="sex" type="String" xid="xid7"></column>
  <data xid="default2">[{&quot;sex&quot;:&quot;男&quot;},{&quot;sex&quot;:&quot;女&quot;}]</data></div></div> 
<div xid="menu" style="height:100%;width:123px;" class="div1">
    
    
    
    
    
  <a component="$UI/system/components/justep/button/button" class="btn2 btn btn-link btn-icon-right" label="选项1" xid="selectOne" bind-css="{'btn1': $model.statusData.val(&quot;edit&quot;) == 1}" icon="icon-chevron-right" onClick="selectOneClick">
    <i xid="i12" class="icon-chevron-right" bind-visible=' $model.statusData.val("edit") == 1'></i>
    <span xid="span12">选项1</span></a><a component="$UI/system/components/justep/button/button" class="btn2 btn btn-link btn-icon-right" label="选项2" xid="selectTwo" bind-css="{'btn1': $model.statusData.val(&quot;edit&quot;) == 2}" icon="icon-chevron-right" onClick="selectTwoClick">
    <i xid="i13" class="icon-chevron-right" bind-visible=' $model.statusData.val("edit") == 2'></i>
    <span xid="span13">选项2</span></a><a component="$UI/system/components/justep/button/button" class="btn2 btn btn-link btn-icon-right" label="选项3" xid="selectThree" bind-css="{'btn1': $model.statusData.val(&quot;edit&quot;) == 3}" icon="icon-chevron-right" onClick="selectThreeClick">
    <i xid="i14" class="icon-chevron-right" bind-visible=' $model.statusData.val("edit") == 3'></i>
    <span xid="span14">选项3</span></a><a component="$UI/system/components/justep/button/button" class="btn2 btn btn-link btn-icon-right" label="选项4" xid="selectFour" bind-css="{'btn1': $model.statusData.val(&quot;edit&quot;) == 4}"  icon="icon-chevron-right" onClick="selectFourClick">
    <i xid="i15" class="icon-chevron-right" bind-visible=' $model.statusData.val("edit") == 4'></i>
    <span xid="span15">选项4</span></a><a component="$UI/system/components/justep/button/button" class="btn2 btn btn-link btn-icon-right" label="选项5" xid="selectFive" bind-css="{'btn1': $model.statusData.val(&quot;edit&quot;) == 5}"  icon="icon-chevron-right" onClick="selectFiveClick">
    <i xid="i16" class="icon-chevron-right" bind-visible=' $model.statusData.val("edit") == 5'></i>
    <span xid="span16">选项5</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="js" xid="button3" onClick="showjsSource">
   <i xid="i3"></i>
   <span xid="span4" class="span4">js</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="源码" xid="button4" bind-visible="isVisible" onClick="showSource">
   <i xid="i4"></i>
   <span xid="span5">源码</span></a></div>
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents3" style="top:10px;left:180px;width:85%;">
   <div class="x-contents-content" xid="pageOne">
    
    
    
    
    <div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs">
   <ul class="nav nav-tabs" xid="ul1">
    <li class="active" xid="li1">
     <a content="tabContentOne" xid="tabItem1"><![CDATA[选项1]]></a></li> 
    <li role="presentation" xid="li2">
     <a content="tabContentTwo" xid="tabItem2"><![CDATA[选项2]]></a></li> </ul> 
   <div class="tab-content" xid="div2">
    <div class="tab-pane active" xid="tabContentOne"><div xid="div3" style="height:72px;width:200px;"><label xid="label2"><![CDATA[横纵向tab]]></label></div>
  <div xid="div4" style="height:72px;width:200px;">
   <label xid="label4">横纵向tab</label></div>
  <div xid="div5" style="height:72px;width:200px;">
   <label xid="label5">横纵向tab</label></div>
  </div>
    <div class="tab-pane" xid="tabContentTwo"><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="查询用户" xid="controlGroup1">
   <div class="x-control-group-title" xid="controlGroupTitle1" style="background-color:#D8F7FA;">
    <span xid="span1"><![CDATA[查询用户]]></span></div> 
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;">
    <label xid="label27" bind-text="sexData.label('sex')"></label></div> 
   <div class="x-col x-col-fixed" xid="col2" style="width:auto;">
    <select component="$UI/system/components/justep/select/select" class="form-control " xid="select8" bind-options="sexData" bind-optionsValue="sex" bind-optionsLabel="sex" bind-optionsCaption="请选择"></select></div> 
   <div class="x-col x-col-fixed x-col-center" xid="col3" style="width:auto;">
    <label xid="label28" bind-text="textData.label('fName')+&quot;：&quot;"></label></div> 
   <div class="x-col x-col-fixed" xid="col7" style="width:auto;">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1"></input></div> 
   <div class="x-col x-col-fixed" xid="col8" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="查询" xid="button1" icon="icon-android-search" style="width:67px;background-color:#EEEEEE;">
     <i xid="i1" class="icon-android-search"></i>
     <span xid="span2">查询</span></a> </div> 
   <div class="x-col x-col-fixed" xid="col9" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="全部" xid="button2" icon="icon-loop" style="width:67px;background-color:#EEEEEE;">
     <i xid="i2" class="icon-loop"></i>
     <span xid="span3">全部</span></a> </div> </div><div component="$UI/system/components/justep/dataTables/dataTables" flexibleWidth="true" rowActiveClass="active" class="table table-hover table-striped" xid="dataTables1" data="textData" ordering="false">
   <columns xid="columns1"><column name="fID" xid="column1"></column>
  <column name="fName" xid="column2"></column>
  <column name="fSex" xid="column6"></column><column name="fAddress" xid="column4"></column>
  <column name="fRemark" xid="column5"></column>
  </columns></div>
  </div>
  </div></div> 
  </div>
  
  </div> 
   </div></div>