<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinShopCategoryList" checkbox="true" fitColumns="false"  title="商品分类" actionUrl="weixinShopCategoryController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id" treefield="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="分类名称" treefield="text"  field="name"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="分类图片" treefield="src" field="imgurl"  hidden="true"  queryMode="single" image="true" imageSize="100,50" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinShopCategoryController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinShopCategoryController.do?goAdd" funname="add" width="100%"  height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinShopCategoryController.do?goUpdate" funname="update" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="weixinShopCategoryController.do?doBatchDel" funname="deleteALLSelect" ></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinShopCategoryController.do?goUpdate" funname="detail" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/shop/base/weixinShopCategoryList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'weixinShopCategoryController.do?upload', "weixinShopCategoryList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinShopCategoryController.do?exportXls","weixinShopCategoryList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinShopCategoryController.do?exportXlsByT","weixinShopCategoryList");
}

 </script>