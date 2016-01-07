<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:132px;top:437px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="educationData" idColumn="type">
   <column label="类型" name="type" type="String" xid="xid1"></column>
   <data xid="default1">[{&quot;type&quot;:&quot;博士&quot;},{&quot;type&quot;:&quot;硕士&quot;},{&quot;type&quot;:&quot;研究生&quot;},{&quot;type&quot;:&quot;本科&quot;},{&quot;type&quot;:&quot;专科&quot;},{&quot;type&quot;:&quot;高中&quot;},{&quot;type&quot;:&quot;初中&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sexData" idColumn="type">
   <column label="性别" name="type" type="String" xid="xid2"></column>
   <data xid="default2">[{&quot;type&quot;:&quot;男&quot;},{&quot;type&quot;:&quot;女&quot;}]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   
  <div class="x-panel-content" xid="content1">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
    <div class="x-col" xid="col2">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput1">
      <label class="x-label" xid="label12" style="text-align:right;">用户名：</label>
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="inputName" placeHolder="请输入用户名" pattern="[a-zA-z]" maxLength="5"></input></div> </div> 
    <div class="x-col x-col-33 x-col-center text-danger" xid="col2">
     <h5 xid="h51">用户名不能为空</h5></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
    <div class="x-col" xid="col4">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelPassword1">
      <label class="x-label" xid="label13" style="text-align:right;">密码：</label>
      <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="pwd"></input></div> </div> 
    <div class="x-col x-col-33 x-col-center text-danger" xid="col5">
     <h5 xid="h52">密码为6位数字或字符组成</h5></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
    <div class="x-col" xid="col7">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelPassword2">
      <label class="x-label" xid="label14" style="text-align:right;">确认密码：</label>
      <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="pwds"></input></div> </div> 
    <div class="x-col x-col-33 x-col-center text-danger" xid="col3">
     <h5 xid="h53">两次密码必须一致</h5></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
    <div class="x-col" xid="col10">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput3">
      <label class="x-label" xid="label8" style="text-align:right;">年龄：</label>
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="inputAge" maxLength="3" pattern="[0-9]" dataType="Integer"></input></div> </div> 
    <div class="x-col x-col-33 x-col-center text-danger" xid="col11">
     <h5 xid="h54">年龄必须在0-120之间</h5></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
    <div class="x-col" xid="col13">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelSelect1">
      <label class="x-label" xid="label11" style="text-align:right;">学历：</label>
      <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select" bind-options="educationData" bind-optionsValue="type" bind-optionsLabel="type" bind-optionsCaption="--请选择--"></select></div> </div> 
    <div class="x-col x-col-33 x-col-center" xid="col14">
     <h5 xid="h55"></h5></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
    <div class="x-col" xid="col16">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelRadioGroup1">
      <label class="x-label" xid="label10" style="text-align:right;">性别：</label>
      <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit" xid="radioGroup" bind-itemset="sexData" bind-itemsetLabel="ref('type')" bind-itemsetValue="ref('type')"></span></div> </div> 
    <div class="x-col x-col-33 x-col-center" xid="col17">
     <h5 xid="h56"></h5></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
    <div class="x-col" xid="col19">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput2">
      <label class="x-label" xid="label9" style="text-align:right;">入职日期：</label>
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="inputDate" dataType="Date" format="yyyy-MM-dd" max="js:new Date()"></input></div> </div> 
    <div class="x-col x-col-33 x-col-center" xid="col20">
     <h5 xid="h57"></h5></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
    <div class="x-col" xid="col22">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelTextarea1">
      <label class="x-label" xid="label8" style="text-align:right;">备注：</label>
      <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="textarea" placeHolder="请输入..."></textarea></div> </div> 
    <div class="x-col x-col-33 x-col-center" xid="col23">
     <h5 xid="h58"></h5></div> </div> </div><div class="x-panel-bottom" xid="bottom1">
  
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row9">
   <div class="col col-xs-4" xid="col25"></div>
   <div class="col col-xs-4" xid="col26"><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="取消" xid="cancelButton" onClick="{operation:'windowReceiver.windowCancel'}">
   <i xid="i2"></i>
   <span xid="span2">取消</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="确定" xid="OKButton" onClick="OKButtonClick">
   <i xid="i1"></i>
   <span xid="span1">确定</span></a></div>
   <div class="col col-xs-4" xid="col27"></div></div></div></div>
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver"></span></div>