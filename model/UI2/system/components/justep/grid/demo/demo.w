<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" xid="window">  
  <div component="$UI/system/components/justep/model/model" style="height:auto;left:520px;top:248px;"> 
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true"
      xid="mainData" idColumn="fID" limit="5" saveAction="saveAccount" queryAction="queryAccount"
      tableName="account" url="/justep/account"> 
      <column label="主键" name="fID" type="String" xid="xid3"/>  
      <column label="创建时间" name="fCreateTime" type="DateTime" xid="xid4"/>  
      <column label="日期" name="fDate" type="Date" xid="xid5"/>  
      <column label="金额" name="fMoney" type="Decimal" xid="xid6"/>  
      <column label="备注" name="fDescription" type="String" xid="xid7"/>  
      <column label="收入\支出" name="fType" type="String" xid="xid8"/>  
      <column label="分类" name="fClass" type="String" xid="xid9"/>  
      <data xid="default2">[]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true"
      xid="classData" idColumn="fID" queryAction="queryAccount_class" tableName="account_class"
      url="/justep/account" directDelete="true"> 
      <column label="主键" name="fID" type="String" xid="xid1"/>  
      <column label="支出\收入" name="fType" type="String" xid="xid2"/>  
      <column label="分类" name="fClass" type="String" xid="xid10"/>  
      <data xid="default1">[]</data> 
    </div> 
  </div>  
  <div xid="grid_div" style="margin:8px;height:400px;"> 
    <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
      altRows="true" class="x-grid-no-bordered" xid="grid2" data="mainData" height="100%"
      width="100%"> 
      <columns> 
        <column width="150" name="fCreateTime" xid="column1"/>  
        <column width="150" name="fDate" editable="false" xid="column2"/>  
        <column width="150" name="fMoney" xid="column3"/>  
        <column width="200" name="fDescription" editable="false" xid="column4"/>  
        <column width="100" name="fClass" xid="column5"/> 
      </columns> 
    </div> 
  </div>
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group"
    title="MainData" xid="controlGroup1"> 
    <div class="x-control-group-title" xid="controlGroupTitle1"> 
      <span xid="span2">title</span> 
    </div>  
    <div xid="div4"> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-left"
        label="" xid="button4" onClick="{operation:'mainData.refresh'}"> 
        <i xid="i4"/>  
        <span xid="span6"/> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-left"
        label="" xid="button6" onClick="{operation:'mainData.firstRow'}"> 
        <i xid="i6"/>  
        <span xid="span8"/> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-left"
        label="" xid="button7" onClick="{operation:'mainData.prevRow'}"> 
        <i xid="i7"/>  
        <span xid="span9"/> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-left"
        label="" xid="button8" onClick="{operation:'mainData.nextRow'}"> 
        <i xid="i8"/>  
        <span xid="span10"/> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-left"
        label="" xid="button9" onClick="{operation:'mainData.lastRow'}"> 
        <i xid="i9"/>  
        <span xid="span11"/> 
      </a> 
    </div>  
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20" xid="labelInput2"> 
      <label class="x-label" xid="label2" bind-text="mainData.label('fClass')" />  
      <div component="$UI/system/components/justep/gridSelect/gridSelect" bind-label="mainData.ref('fString')" bind-ref="mainData.ref('fClass')" multiselect="false" class="x-gridSelect x-edit" autoOptionWidth="false"> 
        <option data="classData" value="fClass"> 
          <columns> 
            <column name="fClass" label="类型" />  
            <column align="right" name="fType" label="支出类型" /> 
          </columns> 
        </option> 
      </div> 
    </div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20"
      xid="labelInput1"> 
      <label class="x-label" xid="label1" bind-text="mainData.label('fCreateTime')"/>  
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
        xid="input1" bind-ref="mainData.ref('fCreateTime')"/> 
    </div>  
      
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20"
      xid="labelInput3"> 
      <label class="x-label" xid="label3" bind-text="mainData.label('fDate')"/>  
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
        xid="input3" bind-ref="mainData.ref('fDate')"/> 
    </div>  
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20"
      xid="labelInput4"> 
      <label class="x-label" xid="label4" bind-text="mainData.label('fMoney')"/>  
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
        xid="input4" bind-ref="mainData.ref('fMoney')"/> 
    </div>  
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20"
      xid="labelTextarea1"> 
      <label class="x-label" xid="label9" bind-text="mainData.label('fDescription')"/>  
      <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit"
        xid="textarea1" bind-ref="mainData.ref('fDescription')" style="height:89px;"/> 
    </div> 
  </div> 
</div>
