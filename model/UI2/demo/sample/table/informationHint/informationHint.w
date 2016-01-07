<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:180px;top:166px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="tableData" idColumn="tID">
   <column label="ID" name="tID" type="String" xid="xid1"></column>
  <column label="姓名" name="tName" type="String" xid="xid2"></column>
  <column label="提示信息" name="tHint" type="String" xid="xid3"></column>
  <column label="性别" name="tSex" type="String" xid="xid3"></column>
  <column label="年龄" name="tAge" type="Float" xid="xid4"></column>
  <column label="职业" name="tJob" type="String" xid="xid5"></column>
  <column label="手机" name="tPhone" type="String" xid="xid6"></column>
  <column label="地址" name="tAddress" type="String" xid="xid7"></column>
  <data xid="default1">[{&quot;tID&quot;:&quot;1&quot;,&quot;tName&quot;:&quot;张小三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:21,&quot;tJob&quot;:&quot;Java开发工程师&quot;,&quot;tPhone&quot;:&quot;18888888889&quot;,&quot;tAddress&quot;:&quot;北京市东城区西长安街&quot;,&quot;tRemark&quot;:&quot;北京市东城区西长安街天安门广场&quot;},{&quot;tID&quot;:&quot;2&quot;,&quot;tName&quot;:&quot;李小四&quot;,&quot;tSex&quot;:&quot;女&quot;,&quot;tAge&quot;:20,&quot;tJob&quot;:&quot;平面设计工程师&quot;,&quot;tPhone&quot;:&quot;13264987091&quot;,&quot;tAddress&quot;:&quot;北京市朝阳区十里河&quot;,&quot;tRemark&quot;:&quot;十里河万家灯火欢乐无限,万家灯火欢乐无限&quot;},{&quot;tID&quot;:&quot;3&quot;,&quot;tName&quot;:&quot;张三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:41,&quot;tJob&quot;:&quot;中层领导&quot;,&quot;tPhone&quot;:&quot;18888888888&quot;,&quot;tAddress&quot;:&quot;北京市东城区西长安街&quot;,&quot;tRemark&quot;:&quot;北京市东城区西长安街&quot;},{&quot;tID&quot;:&quot;4&quot;,&quot;tName&quot;:&quot;张三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:38,&quot;tJob&quot;:&quot;经理&quot;,&quot;tPhone&quot;:&quot;13596487298&quot;,&quot;tAddress&quot;:&quot;北京市东城区西长安街&quot;,&quot;tRemark&quot;:&quot;北京市东城区西长安街&quot;},{&quot;tID&quot;:&quot;5&quot;,&quot;tName&quot;:&quot;张三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:38,&quot;tJob&quot;:&quot;经理&quot;,&quot;tPhone&quot;:&quot;13398746534&quot;,&quot;tAddress&quot;:&quot;北京市东城区西长安街&quot;,&quot;tRemark&quot;:&quot;北京市东城区西长安街&quot;},{&quot;tID&quot;:&quot;6&quot;,&quot;tName&quot;:&quot;张三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:38,&quot;tJob&quot;:&quot;经理&quot;,&quot;tPhone&quot;:&quot;17036985429&quot;,&quot;tAddress&quot;:&quot;北京市东城区西长安街&quot;,&quot;tRemark&quot;:&quot;北京市东城区西长安街&quot;},{&quot;tID&quot;:&quot;7&quot;,&quot;tName&quot;:&quot;张三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:38,&quot;tJob&quot;:&quot;经理&quot;,&quot;tPhone&quot;:&quot;15896324719&quot;,&quot;tAddress&quot;:&quot;北京市东城区西长安街&quot;,&quot;tRemark&quot;:&quot;北京市东城区西长安街&quot;},{&quot;tID&quot;:&quot;8&quot;,&quot;tName&quot;:&quot;张三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:38,&quot;tJob&quot;:&quot;总监&quot;,&quot;tPhone&quot;:&quot;15298476324&quot;,&quot;tAddress&quot;:&quot;北京市东城区西长安街&quot;,&quot;tRemark&quot;:&quot;北京市东城区西长安街&quot;},{&quot;tID&quot;:&quot;9&quot;,&quot;tName&quot;:&quot;张三&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:38,&quot;tJob&quot;:&quot;经理&quot;,&quot;tPhone&quot;:&quot;13894658753&quot;,&quot;tAddress&quot;:&quot;北京市东城区西长安街&quot;,&quot;tRemark&quot;:&quot;北京市东城区西长安街&quot;},{&quot;tID&quot;:&quot;10&quot;,&quot;tName&quot;:&quot;李四&quot;,&quot;tSex&quot;:&quot;女&quot;,&quot;tAge&quot;:21,&quot;tJob&quot;:&quot;销售员&quot;,&quot;tPhone&quot;:&quot;15298476324&quot;,&quot;tAddress&quot;:&quot;上海新东方东方明珠之城&quot;,&quot;tRemark&quot;:&quot;香港九龙岛环线&quot;},{&quot;tID&quot;:&quot;11&quot;,&quot;tName&quot;:&quot;肖红&quot;,&quot;tSex&quot;:&quot;女&quot;,&quot;tAge&quot;:22,&quot;tJob&quot;:&quot;销售员&quot;,&quot;tPhone&quot;:&quot;13596487298&quot;,&quot;tAddress&quot;:&quot;西藏布达拉宫旁边&quot;,&quot;tRemark&quot;:&quot;上海新东方东方明珠之城&quot;},{&quot;tID&quot;:&quot;12&quot;,&quot;tName&quot;:&quot;李四&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:26,&quot;tJob&quot;:&quot;业务员&quot;,&quot;tPhone&quot;:&quot;15896324719&quot;,&quot;tAddress&quot;:&quot;香港九龙岛环线&quot;,&quot;tRemark&quot;:&quot;香港九龙岛环线&quot;},{&quot;tID&quot;:&quot;13&quot;,&quot;tName&quot;:&quot;王五&quot;,&quot;tSex&quot;:&quot;女&quot;,&quot;tAge&quot;:28,&quot;tJob&quot;:&quot;销售员&quot;,&quot;tPhone&quot;:&quot;15298476324&quot;,&quot;tAddress&quot;:&quot;上海新东方东方明珠之城&quot;,&quot;tRemark&quot;:&quot;西藏布达拉宫旁边&quot;},{&quot;tID&quot;:&quot;14&quot;,&quot;tName&quot;:&quot;李四&quot;,&quot;tSex&quot;:&quot;女&quot;,&quot;tAge&quot;:32,&quot;tJob&quot;:&quot;售后服务&quot;,&quot;tPhone&quot;:&quot;13596487298&quot;,&quot;tAddress&quot;:&quot;西藏布达拉宫旁边&quot;,&quot;tRemark&quot;:&quot;香港九龙岛环线&quot;},{&quot;tID&quot;:&quot;15&quot;,&quot;tName&quot;:&quot;李四&quot;,&quot;tSex&quot;:&quot;男&quot;,&quot;tAge&quot;:24,&quot;tJob&quot;:&quot;销售员&quot;,&quot;tPhone&quot;:&quot;13264987091&quot;,&quot;tAddress&quot;:&quot;上海新东方东方明珠之城&quot;,&quot;tRemark&quot;:&quot;西藏布达拉宫旁边&quot;}]</data>
  <column label="备注" name="tRemark" type="String" xid="xid8"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="popOverData" idColumn="tName">
   <column label="姓名" name="tName" type="String" xid="xid9"></column>
   <column label="性别" name="tSex" type="String" xid="xid10"></column>
   <column label="年龄" name="tAge" type="String" xid="xid11"></column>
   <data xid="default2">[]</data>
   <column label="手机" name="tPhone" type="String" xid="xid13"></column>
   <column label="地址" name="tAddress" type="String" xid="xid14"></column></div></div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="demoPopOver" opacity="0.1" position="center" dismissible="true" direction="right-top" anchor="tHintcolumn">
   <div class="x-popOver-overlay" xid="div6"></div>
   <div class="x-popOver-content" xid="div7">
    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="display: block; position: static;background-color:pink;width:300px;height:250px;" xid="ul1">
      
     <div component="$UI/system/components/justep/bar/bar" class="x-titlebar x-bar" xid="bar1" bind-html='"用户详细信息"' style="font-weight:bolder;background-color:pink;"></div><li role="presentation" xid="li1">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput1">
   <label class="x-label" xid="label1" style="text-align:right;"><![CDATA[姓名：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6" bind-ref="popOverData.ref('tName')"></div></div></li><li role="presentation" xid="li2">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput2">
   <label class="x-label" xid="label2" style="text-align:right;"><![CDATA[性别：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref="popOverData.ref('tSex')"></div></div></li> 
     <li role="presentation" xid="li3">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput3">
   <label class="x-label" xid="label3" style="text-align:right;"><![CDATA[年龄：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8" bind-ref="popOverData.ref('tAge')"></div></div></li>
      <li role="presentation" xid="li4">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput4">
   <label class="x-label" xid="label4" style="text-align:right;"><![CDATA[手机：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output9" bind-ref="popOverData.ref('tPhone')"></div></div></li><li role="presentation" xid="li5">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput5">
   <label class="x-label" xid="label5" style="text-align:right;"><![CDATA[地址：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output10" bind-ref="popOverData.ref('tAddress')"></div></div></li></ul> 
  </div> </div>
  <div component="$UI/system/components/justep/dataTables/dataTables" flexibleWidth="true" rowActiveClass="active" xid="dataTables" data="tableData" responsive="false" class="table table-hover table-striped" onCellRender="dataTablesCellRender" onRowClick="dataTablesRowClick">
   <columns xid="columns">
    <column name="tID" xid="column8" visible="false" width="100px"></column>
    <column name="tName" xid="nameColumn" width="100px" label="姓名"></column>
    <column name="tSex" xid="column10" width="100px" label="性别"></column>
    <column name="tAge" xid="column11" width="100px" label="年龄"></column>
    <column name="tJob" xid="column12" label="职业" width="100px"></column>
    <column name="tPhone" xid="column13" label="手机" width="100px"></column>
    <column name="tAddress" xid="column14" label="地址" width="150px"></column>
    <column name="tRemark" xid="column15" label="备注" width="200px"></column><column name="tHint" xid="tHintcolumn" width="100px"></column>
  </columns> </div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="JS代码" xid="showJSButton" onClick="showJSButtonClick">
   <i xid="i1"></i>
   <span xid="span1">JS代码</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="源码" xid="showSourceBtn" bind-visible="isVisible" onClick="showSourceBtnClick">
   <i xid="i2"></i>
   <span xid="span2">源码</span></a>
  </div>