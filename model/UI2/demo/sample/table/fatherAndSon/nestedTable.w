<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:226px;top:310px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="mainData" idColumn="mID"><column label="ID" name="mID" type="String" xid="xid16"></column>
  <column label="姓名" name="mName" type="String" xid="xid17"></column>
  <column label="性别" name="mSex" type="String" xid="xid18"></column>
  <column label="年龄" name="mAge" type="String" xid="xid19"></column>
  <column label="备注" name="mRemark" type="String" xid="xid20"></column>
  <data xid="default5">[{&quot;mID&quot;:&quot;1&quot;,&quot;mName&quot;:&quot;张三&quot;,&quot;mSex&quot;:&quot;男&quot;,&quot;mAge&quot;:&quot;23&quot;,&quot;mRemark&quot;:&quot;大家好，我叫张三，性别男，爱好女，身高180cm，体重180斤，有车有房有存款。&quot;},{&quot;mID&quot;:&quot;2&quot;,&quot;mName&quot;:&quot;李四&quot;,&quot;mSex&quot;:&quot;女&quot;,&quot;mAge&quot;:&quot;19&quot;,&quot;mRemark&quot;:&quot;五十六个民族，五十六枝花，五十六个兄弟姐妹是一家，五十六种语言汇成一句话：钱不够花，钱不够花，钱不够花！！！&quot;},{&quot;mID&quot;:&quot;3&quot;,&quot;mName&quot;:&quot;小明&quot;,&quot;mSex&quot;:&quot;男&quot;,&quot;mAge&quot;:&quot;21&quot;,&quot;mRemark&quot;:&quot;无所不能的小明是个传说，江湖中一直在流传，小明的传奇故事&quot;}]</data></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="secondData" idColumn="sid"><column label="ID" name="sid" type="String" xid="xid11"></column>
  <column label="课程" name="sOne" type="String" xid="xid5"></column>
  <column label="成绩" name="sTwo" type="String" xid="xid6"></column>
  <column label="描述" name="sThree" type="String" xid="xid7"></column>
  <column label="parent" name="parent" type="String" xid="xid9"></column>
  <data xid="default2">[{&quot;sid&quot;:&quot;1&quot;,&quot;sOne&quot;:&quot;语文&quot;,&quot;sTwo&quot;:&quot;110&quot;,&quot;sThree&quot;:&quot;3+大综合&quot;,&quot;parent&quot;:&quot;1&quot;},{&quot;sid&quot;:&quot;2&quot;,&quot;sOne&quot;:&quot;数学&quot;,&quot;sTwo&quot;:&quot;120&quot;,&quot;sThree&quot;:&quot;3+大综合&quot;,&quot;parent&quot;:&quot;1&quot;},{&quot;sid&quot;:&quot;3&quot;,&quot;sOne&quot;:&quot;英语&quot;,&quot;sTwo&quot;:&quot;110&quot;,&quot;sThree&quot;:&quot;3+大综合&quot;,&quot;parent&quot;:&quot;1&quot;},{&quot;sid&quot;:&quot;4&quot;,&quot;sOne&quot;:&quot;综合&quot;,&quot;sTwo&quot;:&quot;210&quot;,&quot;sThree&quot;:&quot;3+大综合&quot;,&quot;parent&quot;:&quot;1&quot;},{&quot;sid&quot;:&quot;5&quot;,&quot;sOne&quot;:&quot;语文&quot;,&quot;sTwo&quot;:&quot;120&quot;,&quot;sThree&quot;:&quot;语数外&quot;,&quot;parent&quot;:&quot;2&quot;},{&quot;sid&quot;:&quot;6&quot;,&quot;sOne&quot;:&quot;数学&quot;,&quot;sTwo&quot;:&quot;105&quot;,&quot;sThree&quot;:&quot;语数外&quot;,&quot;parent&quot;:&quot;2&quot;},{&quot;sid&quot;:&quot;7&quot;,&quot;sOne&quot;:&quot;英语&quot;,&quot;sTwo&quot;:&quot;125&quot;,&quot;sThree&quot;:&quot;语数外&quot;,&quot;parent&quot;:&quot;2&quot;},{&quot;sid&quot;:&quot;8&quot;,&quot;sOne&quot;:&quot;语文&quot;,&quot;sTwo&quot;:&quot;110&quot;,&quot;sThree&quot;:&quot;语文&quot;,&quot;parent&quot;:&quot;3&quot;},{&quot;sid&quot;:&quot;9&quot;,&quot;sOne&quot;:&quot;数学&quot;,&quot;sTwo&quot;:&quot;110&quot;,&quot;sThree&quot;:&quot;数学&quot;,&quot;parent&quot;:&quot;3&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="aData" idColumn="mID"><column label="ID" name="mID" type="String" xid="xid10"></column>
  <column label="姓名" name="mName" type="String" xid="xid12"></column>
  <column label="性别" name="mSex" type="String" xid="xid13"></column>
  <column label="年龄" name="mAge" type="String" xid="xid14"></column>
  <column label="备注" name="mRemark" type="String" xid="xid15"></column>
  <data xid="default1">[{&quot;mID&quot;:&quot;1&quot;,&quot;mName&quot;:&quot;张三&quot;,&quot;mSex&quot;:&quot;男&quot;,&quot;mAge&quot;:&quot;15&quot;,&quot;mRemark&quot;:&quot;张三是何许人也&quot;},{&quot;mID&quot;:&quot;2&quot;,&quot;mName&quot;:&quot;李四&quot;,&quot;mSex&quot;:&quot;女&quot;,&quot;mAge&quot;:&quot;19&quot;,&quot;mRemark&quot;:&quot;奋战高考300天&quot;},{&quot;mID&quot;:&quot;3&quot;,&quot;mName&quot;:&quot;王二&quot;,&quot;mSex&quot;:&quot;男&quot;,&quot;mAge&quot;:&quot;8&quot;,&quot;mRemark&quot;:&quot;小P孩儿&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bData" idColumn="sId" onCustomRefresh="bDataCustomRefresh"><column label="ID" name="sId" type="String" xid="xid1"></column>
  <column label="课程" name="sCourse" type="String" xid="xid2"></column>
  <column label="成绩" name="sScore" type="String" xid="xid3"></column>
  <column label="描述" name="sDescribe" type="String" xid="xid4"></column>
  <column label="parent" name="parent" type="String" xid="xid8"></column>
  <data xid="default3">[]</data></div></div> 

  
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="JS代码" xid="showJSButton" onClick="showJSButton">
   <i xid="i5"></i>
   <span xid="span1">JS代码</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="源码" xid="showSourceBtn" bind-visible="isVisible" onClick="showSourceBtnClick">
   <i xid="i6"></i>
   <span xid="span2">源码</span></a><div component="$UI/system/components/justep/tabs/tabs" class="x-tabs" xid="tabs1" style="height:280px;">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel1">
    <div class="x-panel-top" xid="top1">
     <ul class="nav nav-tabs" xid="navs1">
      <li class="active" xid="li1">
       <a content="tabContent_1" xid="tabItem1"><![CDATA[基本使用]]></a></li> </ul> 
  </div> 
    <div class="x-panel-content" xid="content2">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents1">
      <div class="x-contents-content active" xid="content1">
  <h5 xid="h52"><![CDATA[默认父子表格全部展开。]]></h5>
  <div component="$UI/system/components/fragment/list/listTable" data="mainData" masterData="" masterCol="" xid="listTable3">
   <div component="$UI/system/components/justep/list/list" class="x-list" data="mainData" xid="list3">
    <table class="table table-bordered table-hover table-striped table-condensed" component="$UI/system/components/bootstrap/table/table" xid="table3">
     <thead xid="thead3">
      <tr class="success" xid="tr6">
       <th width="60px" xid="col10">
        <label xid="label12"></label></th> 
       <th xid="col11">
        <label bind-text="$model.mainData.label('mName')" xid="label13"></label></th> 
       <th xid="col12">
        <label bind-text="$model.mainData.label('mSex')" xid="label14"></label></th> 
       <th xid="col13">
        <label bind-text="$model.mainData.label('mAge')" xid="label15"></label></th> 
       <th xid="col14">
        <label bind-text="$model.mainData.label('mRemark')" xid="label16"></label></th> </tr> </thead> 
     <tbody class="x-list-template" bind-click="$model!=$object?$object.data.to($object):null" xid="listTemplate3">
      <tr class="info" bind-click="function(){var $e = $($element);$('&gt;td&gt;i.x-expand-i',$e).toggleClass('icon-android-add');$e.next().toggleClass('hide');}" xid="tr7">
       <td class="text-center" style="vertical-align:middle;" xid="td11">
        <i class="x-expand-i " style="color:#808080;padding-right:6px;" xid="i3"></i>
        <label bind-text="$index()+1" xid="label17"></label></td> 
       <td xid="td12">
        <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mName')" xid="output8"></div></td> 
       <td xid="td13">
        <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mSex')" xid="output9"></div></td> 
       <td xid="td14">
        <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mAge')" xid="output10"></div></td> 
       <td xid="td15">
        <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mRemark')" xid="output11"></div></td> </tr> 
      <tr xid="tr8">
       <td colspan="5" xid="td16">
        <div component="$UI/system/components/fragment/list/listTable" data="secondData" masterData="mainData" masterCol="parent" xid="listTable4">
         <div component="$UI/system/components/justep/list/list" class="x-list" data="secondData" xid="list4">
          <table class="table table-bordered table-hover table-striped table-condensed" component="$UI/system/components/bootstrap/table/table" xid="table4">
           <thead xid="thead4">
            <tr class="danger" xid="tr9">
             <th width="60px" xid="col15">
              <label xid="label18"></label></th> 
             <th xid="col16">
              <label bind-text="$model.secondData.label('sOne')" xid="label19"></label></th> 
             <th xid="col17">
              <label bind-text="$model.secondData.label('sTwo')" xid="label20"></label></th> 
             <th xid="col18">
              <label bind-text="$model.secondData.label('sThree')" xid="label21"></label></th> </tr> </thead> 
           <tbody class="x-list-template" bind-click="$model!=$object?$object.data.to($object):null" xid="listTemplate4">
            <tr class="warning" xid="tr10">
             <td class="text-center" style="vertical-align:middle;" xid="td17">
              <i class="x-expand-i " style="color:#808080;padding-right:6px;" xid="i4"></i>
              <label bind-text="$index()+1" xid="label22"></label></td> 
             <td xid="td18">
              <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('sOne')" xid="output12"></div></td> 
             <td xid="td19">
              <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('sTwo')" xid="output13"></div></td> 
             <td xid="td20">
              <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('sThree')" xid="output14"></div></td> </tr> </tbody> </table> </div> </div> </td> </tr> </tbody> </table> </div> </div>
  </div></div> 
  </div> </div> </div><hr xid="hr1"></hr><div component="$UI/system/components/justep/tabs/tabs" class="x-tabs" xid="tabs2" style="height:280px;">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel2">
    <div class="x-panel-top" xid="top2">
     <ul class="nav nav-tabs" xid="navs2">
      <li class="active" xid="li2">
       <a content="tabContent_1" xid="tabItem2"><![CDATA[另一种展开方式]]></a></li> </ul> 
  </div> 
    <div class="x-panel-content" xid="content3">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents2">
      <div class="x-contents-content active" xid="content1"><h5 xid="h51"><![CDATA[父子表格全部折叠]]></h5><div component="$UI/system/components/fragment/list/listTable" data="mainData" masterData="" masterCol="" xid="listTable1">
   <div component="$UI/system/components/justep/list/list" class="x-list" data="mainData" xid="list1">
    <table class="table table-bordered table-hover table-striped table-condensed" component="$UI/system/components/bootstrap/table/table" xid="table1">
     <thead xid="thead1">
      <tr class="success" xid="tr1">
       <th width="60px" xid="col1">
        <label xid="label1"></label></th> 
       <th xid="col2" style="width:180px;">
        <label bind-text="$model.mainData.label('mName')" xid="label2"></label></th> 
       <th xid="col3" style="width:180px;">
        <label bind-text="$model.mainData.label('mSex')" xid="label3"></label></th> 
       <th xid="col4" style="width:180px;">
        <label bind-text="$model.mainData.label('mAge')" xid="label4"></label></th> 
       <th xid="col5">
        <label bind-text="$model.mainData.label('mRemark')" xid="label5"></label></th> </tr> </thead> 
     <tbody class="x-list-template" bind-click="$model!=$object?$object.data.to($object):null" xid="listTemplate1">
      <tr class="info" bind-click="function(){var $e = $($element);$('&gt;td&gt;i.x-expand-i',$e).toggleClass('icon-arrow-right-b');$e.next().toggleClass('hide');}" xid="tr2">
       <td class="text-center" style="vertical-align:middle;" xid="td1">
        <i class="x-expand-i icon-arrow-right-b" style="color:#808080;padding-right:6px;" xid="i1"></i>
        <label bind-text="$index()+1" xid="label6"></label></td> 
       <td xid="td2">
        <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mName')" xid="output1"></div></td> 
       <td xid="td3">
        <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mSex')" xid="output2"></div></td> 
       <td xid="td4">
        <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mAge')" xid="output3"></div></td> 
       <td xid="td5">
        <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mRemark')" xid="output4"></div></td> </tr> 
      <tr class="hide" xid="tr3">
       <td colspan="5" xid="td6">
        <div component="$UI/system/components/fragment/list/listTable" data="secondData" masterData="mainData" masterCol="parent" xid="listTable2">
         <div component="$UI/system/components/justep/list/list" class="x-list" data="secondData" xid="list2">
          <table class="table table-bordered table-hover table-striped table-condensed" component="$UI/system/components/bootstrap/table/table" xid="table2">
           <thead xid="thead2">
            <tr class="danger" xid="tr4">
             <th width="60px" xid="col6">
              <label xid="label7"></label></th> 
             <th xid="col7">
              <label bind-text="$model.secondData.label('sOne')" xid="label8"></label></th> 
             <th xid="col8">
              <label bind-text="$model.secondData.label('sTwo')" xid="label9"></label></th> 
             <th xid="col9">
              <label bind-text="$model.secondData.label('sThree')" xid="label10"></label></th> </tr> </thead> 
           <tbody class="x-list-template" bind-click="$model!=$object?$object.data.to($object):null" xid="listTemplate2">
            <tr class="warning" xid="tr5">
             <td class="text-center" style="vertical-align:middle;" xid="td7">
              <i class="x-expand-i " style="color:#808080;padding-right:6px;" xid="i2"></i>
              <label bind-text="$index()+1" xid="label11"></label></td> 
             <td xid="td8">
              <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('sOne')" xid="output5"></div></td> 
             <td xid="td9">
              <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('sTwo')" xid="output6"></div></td> 
             <td xid="td10">
              <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('sThree')" xid="output7"></div></td> </tr> </tbody> </table> </div> </div> </td> </tr> </tbody> </table> </div> </div></div></div> 
  </div> </div> 
  </div><hr xid="hr2"></hr><div component="$UI/system/components/justep/tabs/tabs" class="x-tabs" xid="tabs3" style="height:280px;">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel3">
    <div class="x-panel-top" xid="top3">
     <ul class="nav nav-tabs" xid="navs3">
      <li class="active" xid="li3">
       <a content="tabContent_1" xid="tabItem3"><![CDATA[ajax加载子表]]></a></li> </ul> </div> 
    <div class="x-panel-content" xid="content5">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents3">
      <div class="x-contents-content active" xid="content4">
       <h5 xid="h53"><![CDATA[点击表格行ajax加载]]></h5>
       <div component="$UI/system/components/fragment/list/listTable" data="aData" masterData="" masterCol="" xid="listTable5">
        <div component="$UI/system/components/justep/list/list" class="x-list" data="aData" xid="list6">
         <table class="table table-bordered table-hover table-striped table-condensed" component="$UI/system/components/bootstrap/table/table" xid="table5">
          <thead xid="thead6">
           <tr class="success" xid="tr11">
            <th width="60px" xid="col23">
             <label xid="label31"></label></th> 
            <th xid="col25" style="width:180px;">
             <label bind-text="$model.aData.label('mName')" xid="label32"></label></th> 
            <th xid="col24" style="width:180px;">
             <label bind-text="$model.aData.label('mSex')" xid="label33"></label></th> 
            <th xid="col20" style="width:180px;">
             <label bind-text="$model.aData.label('mAge')" xid="label28"></label></th> 
            <th xid="col19">
             <label bind-text="$model.aData.label('mRemark')" xid="label27"></label></th> </tr> </thead> 
          <tbody class="x-list-template" bind-click="$model!=$object?$object.data.to($object):null" xid="listTemplate5">
           <tr class="info" bind-click="function(){var $e = $($element);$('&gt;td&gt;i.x-expand-i',$e).toggleClass('icon-arrow-right-b');$e.next().toggleClass('hide');}" xid="tr12">
            <td class="text-center" style="vertical-align:middle;" xid="td24">
             <i class="x-expand-i icon-arrow-right-b" style="color:#808080;padding-right:6px;" xid="i8"></i>
             <label bind-text="$index()+1" xid="label26"></label></td> 
            <td xid="td26">
             <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mName')" xid="output18"></div></td> 
            <td xid="td25">
             <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mSex')" xid="output17"></div></td> 
            <td xid="td28">
             <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mAge')" xid="output16"></div></td> 
            <td xid="td27">
             <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('mRemark')" xid="output15"></div></td> </tr> 
           <tr xid="tr13" class="hide">
            <td colspan="5" xid="td30">
             <div component="$UI/system/components/fragment/list/listTable" data="bData" masterData="aData" masterCol="parent" xid="listTable6">
              <div component="$UI/system/components/justep/list/list" class="x-list" data="bData" xid="list5">
               <table class="table table-bordered table-hover table-striped table-condensed" component="$UI/system/components/bootstrap/table/table" xid="table6">
                <thead xid="thead5">
                 <tr class="danger" xid="tr14">
                  <th width="60px" xid="col22">
                   <label xid="label25"></label></th> 
                  <th xid="col21">
                   <label xid="label30" bind-text="$model.bData.label('sCourse')"></label></th> 
                  <th xid="col27">
                   <label bind-text="$model.bData.label('sScore')" xid="label29"></label></th> 
                  <th xid="col26">
                   <label bind-text="$model.bData.label('sDescribe')" xid="label24"></label></th> </tr> </thead> 
                <tbody class="x-list-template" bind-click="$model!=$object?$object.data.to($object):null" xid="listTemplate6">
                 <tr class="warning" xid="tr15">
                  <td class="text-center" style="vertical-align:middle;" xid="td29">
                   <i class="x-expand-i " style="color:#808080;padding-right:6px;" xid="i7"></i>
                   <label bind-text="$index()+1" xid="label23"></label></td> 
                  <td xid="td23">
                   <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('sCourse')" xid="output21"></div></td> 
                  <td xid="td22">
                   <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('sScore')" xid="output20"></div></td> 
                  <td xid="td21">
                   <div component="$UI/system/components/justep/output/output" class="x-output" bind-ref="ref('sDescribe')" xid="output19"></div></td> </tr> </tbody> </table> </div> </div> </td> </tr> </tbody> </table> </div> </div> </div> </div> </div> </div> </div><h3 xid="h31" style="color:#FF0000;"><![CDATA[使用listTable组件怎么实现点击一行时，其他打开的自动关闭？？？]]>
  </h3></div>