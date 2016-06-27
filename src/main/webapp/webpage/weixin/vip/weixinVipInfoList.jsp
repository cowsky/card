<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinVipInfoList" title="微信会员卡表" actionUrl="weixinVipInfoController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="会员卡名称" field="vipName" ></t:dgCol>
   <t:dgCol title="会员卡图片" field="vipImg" image="true" imageSize="100,50" ></t:dgCol>
   <t:dgCol title="描述" field="vipDescribe" ></t:dgCol>
   <t:dgCol title="发行时间" field="startTime" formatter="yyyy-MM-dd"></t:dgCol>
   <t:dgCol title="会员卡级别" field="levelId" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinVipInfoController.do?del&id={id}" exp="levelId#ne#1" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinVipInfoController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinVipInfoController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinVipInfoController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script>
 	function del(id){
 		delobj("weixinVipInfoController.do?del&id="+id,'weixinVipInfoList');
 	}
 </script>