<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:18px;top:347px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data" idColumn="tName"><column label="姓名" name="tName" type="String" xid="xid1"></column>
  <column label="年龄" name="tAge" type="String" xid="xid2"></column>
  <column label="籍贯" name="tNative" type="String" xid="xid3"></column>
  <column label="性别" name="tSex" type="String" xid="xid4"></column>
  <column label="民族" name="tNation" type="String" xid="xid5"></column>
  <column label="职业" name="tJob" type="String" xid="xid6"></column>
  <column label="学历" name="tDegree" type="String" xid="xid7"></column>
  <column label="手机" name="tPhone" type="String" xid="xid8"></column>
  <column label="邮箱" name="tEmail" type="String" xid="xid9"></column>
  <column label="详细地址" name="tAddress" type="String" xid="xid10"></column>
  <data xid="default1">[{&quot;tName&quot;:&quot;张小三&quot;,&quot;tAge&quot;:&quot;21&quot;,&quot;tNative&quot;:&quot;北京&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tNation&quot;:&quot;汉族&quot;,&quot;tJob&quot;:&quot;软件设计师&quot;,&quot;tDegree&quot;:&quot;本科&quot;,&quot;tPhone&quot;:&quot;18888888888&quot;,&quot;tEmail&quot;:&quot;tiananmen@sina.com&quot;,&quot;tAddress&quot;:&quot;北京市东城区西长安街天安门广场&quot;}]</data></div></div> 
<div component="$UI/system/components/bootstrap/row/row(bootstrap)" class="row" xid="formRow3Flex" align="center">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="background-color:#99BAF3;">
   <div class="x-col" xid="col21"></div>
   
  <div class="x-col" xid="col22"><label xid="label1" style="font-size:20px;"><![CDATA[详细信息]]></label></div>
  <div class="x-col" xid="col23"><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right text-danger" label="js" xid="showJSButton" onClick="showJSButtonClick">
   <i xid="i3"></i>
   <span xid="span3">js</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="源码" xid="button" bind-visible="isVisible">
   <i xid="i4"></i>
   <span xid="span4">源码</span></a></div></div><div xid="div1" class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" style="background-color:#99BAF3;border-style:solid solid solid solid;border-width:1px 0px 0px 1px;">
    <div class="form-group" xid="formGroup1">
     <div class="col-sm-4" xid="col1">
      <label class="control-label pull-right" xid="controlLabel1" style="font-weight:normal;"><![CDATA[姓名:]]></label></div> 
     <div class="col-sm-8" xid="col2">
      <input class="form-control" component="$UI/system/components/justep/input/input" xid="input1" bind-text=" $model.data.val('tName')" bind-ref="data.ref('tName')"></input></div> </div> </div> 
   <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="div2" style="background-color:#99BAF3;border-style:solid solid solid solid;border-width:1px 1px 0px 1px;">
    <div class="form-group" xid="formGroup2">
     <div class="col-sm-4" xid="col3">
      <label class="control-label pull-right" xid="controlLabel2" style="font-weight:normal;"><![CDATA[性别:]]></label></div> 
     <div class="col-sm-8" xid="col4">
      <input class="form-control" component="$UI/system/components/justep/input/input" xid="input2" bind-ref="data.ref('tSex')"></input></div> </div> </div> 
   <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="div3" style="background-color:#99BAF3;border-style:solid solid solid solid;border-width:1px 0px 0px 1px;">
    <div class="form-group" xid="formGroup3">
     <div class="col-sm-4" xid="col5">
      <label class="control-label pull-right" xid="controlLabel3" style="font-weight:normal;"><![CDATA[籍贯:]]></label></div> 
     <div class="col-sm-8" xid="col6">
      <input class="form-control" component="$UI/system/components/justep/input/input" xid="input3" bind-ref="data.ref('tNative')"></input></div> </div> </div> 
  <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="div4" style="background-color:#99BAF3;border-style:solid solid solid solid;border-width:1px 1px 0px 1px;">
   <div class="form-group" xid="formGroup4">
    <div class="col-sm-4" xid="col7">
     <label class="control-label pull-right" xid="controlLabel4" style="font-weight:normal;"><![CDATA[民族:]]></label></div> 
    <div class="col-sm-8" xid="col8">
     <input class="form-control" component="$UI/system/components/justep/input/input" xid="input4" bind-ref="data.ref('tNation')"></input></div> </div> </div>
  <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="div5" style="background-color:#99BAF3;border-style:solid solid solid solid;border-width:1px 0px 0px 1px;">
   <div class="form-group" xid="formGroup5">
    <div class="col-sm-4" xid="col9">
     <label class="control-label pull-right" xid="controlLabel5" style="font-weight:normal;"><![CDATA[年龄:]]></label></div> 
    <div class="col-sm-8" xid="col10">
     <input class="form-control" component="$UI/system/components/justep/input/input" xid="input5" bind-ref="data.ref('tAge')"></input></div> </div> </div>
  <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="div6" style="background-color:#99BAF3;border-style:solid solid solid solid;border-width:1px 1px 0px 1px;">
   <div class="form-group" xid="formGroup6">
    <div class="col-sm-4" xid="col11">
     <label class="control-label pull-right" xid="controlLabel6" style="font-weight:normal;"><![CDATA[职业:]]></label></div> 
    <div class="col-sm-8" xid="col12">
     <input class="form-control" component="$UI/system/components/justep/input/input" xid="input6" bind-ref="data.ref('tJob')"></input></div> </div> </div>
  <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="div7" style="background-color:#99BAF3;border-style:solid solid solid solid;border-width:1px 0px 0px 1px;">
   <div class="form-group" xid="formGroup7">
    <div class="col-sm-4" xid="col13">
     <label class="control-label pull-right" xid="controlLabel7" style="font-weight:normal;"><![CDATA[学历:]]></label></div> 
    <div class="col-sm-8" xid="col14">
     <input class="form-control" component="$UI/system/components/justep/input/input" xid="input7" bind-ref="data.ref('tDegree')"></input></div> </div> </div>
  <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="div8" style="background-color:#99BAF3;border-style:solid solid solid solid;border-width:1px 1px 0px 1px;">
   <div class="form-group" xid="formGroup8">
    <div class="col-sm-4" xid="col15">
     <label class="control-label pull-right" xid="controlLabel8" style="font-weight:normal;"><![CDATA[手机:]]></label></div> 
    <div class="col-sm-8" xid="col16">
     <input class="form-control" component="$UI/system/components/justep/input/input" xid="input8" bind-ref="data.ref('tPhone')"></input></div> </div> </div>
  <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="div9" style="background-color:#99BAF3;border-style:solid solid solid solid;border-width:1px 0px 1px 1px;">
   <div class="form-group" xid="formGroup9">
    <div class="col-sm-4" xid="col17">
     <label class="control-label pull-right" xid="controlLabel9" style="font-weight:normal;"><![CDATA[邮箱:]]></label></div> 
    <div class="col-sm-8" xid="col18">
     <input class="form-control" component="$UI/system/components/justep/input/input" xid="input9" bind-ref="data.ref('tEmail')"></input></div> </div> </div>
  <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="div10" style="background-color:#99BAF3;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;">
   <div class="form-group" xid="formGroup10">
    <div class="col-sm-4" xid="col25">
     <label class="control-label pull-right" xid="controlLabel10" style="font-weight:normal;"><![CDATA[详细地址:]]></label></div> 
    <div class="col-sm-8" xid="col24">
     <input class="form-control" component="$UI/system/components/justep/input/input" xid="input10" bind-ref="data.ref('tAddress')"></input></div> </div> </div></div></div>