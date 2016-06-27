<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinShopMemberList" title="商城会员" actionUrl="weixinShopMemberController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="用户名" field="username" width="100"></t:dgCol>
   <t:dgCol title="注册时间" field="addtime" formatter="yyyy-MM-dd hh:mm:ss" width="100"></t:dgCol>
   <t:dgCol title="手机号" field="mobile" width="100"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinShopMemberController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinShopMemberController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinShopMemberController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinShopMemberController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>