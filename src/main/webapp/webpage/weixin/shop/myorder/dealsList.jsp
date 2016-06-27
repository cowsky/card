<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="dealsList" title="购物车 " actionUrl="weixinShopDealController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="订单号" field="dealNumber" ></t:dgCol>
   <t:dgCol title="买家名称" field="createName" ></t:dgCol>
   <t:dgCol title="支付方式" field="paytype" ></t:dgCol>
   <t:dgCol title="订单状态" field="dealStatement" ></t:dgCol>
   <t:dgCol title="配送信息" field="addressDetail" ></t:dgCol>
   <t:dgCol title="付款数" field="sfmny" ></t:dgCol>
   <t:dgCol title="买家留言" field="buyerLeaveWords" ></t:dgCol>
   <t:dgCol title="创建时间" field="createDate" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinShopCartController.do?del&id={id}" />
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinShopOrderController.do?goUpdate" funname="update"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>