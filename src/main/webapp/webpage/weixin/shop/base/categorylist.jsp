<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html >
<html>
<head>
<title>角色集合</title>
<t:base type="jquery,easyui,tools"></t:base>
</head>
<body style="overflow-y: hidden" scroll="no">
<t:datagrid name="categoryList" title="选择分类" actionUrl="weixinShopCategoryController.do?datagrid" idField="id" showRefresh="false">
<t:dgCol title="主键"  field="id" treefield="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
 <t:dgCol title="分类名称"   field="name"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="分类图片"  field="imgurl"  hidden="true"  queryMode="single" image="true" imageSize="100,50" ></t:dgCol>
</t:datagrid>
</body>
</html>
