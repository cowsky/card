<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微信会员卡和用户关系表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="weixinVipMemberController.do?save">
		<input id="id" name="id" type="hidden" value="${weixinVipMemberPage.id }">
		<fieldset class="step">
			<div class="form">
		      <label class="Validform_label">memberName:</label>
		      <input class="inputxt" id="memberName" name="memberName" ignore="ignore"
					   value="${weixinVipMemberPage.memberName}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">memberBalance:</label>
		      <input class="inputxt" id="memberBalance" name="memberBalance" ignore="ignore"
					   value="${weixinVipMemberPage.memberBalance}" datatype="d">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">memberIntegral:</label>
		      <input class="inputxt" id="memberIntegral" name="memberIntegral" ignore="ignore"
					   value="${weixinVipMemberPage.memberIntegral}" datatype="n">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">createTime:</label>
		      <input class="Wdate" onClick="WdatePicker()"  style="width: 150px" id="createTime" name="createTime" 
					   value="<fmt:formatDate value='${weixinVipMemberPage.createTime}' type="date" pattern="yyyy-MM-dd"/>" datatype="*">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">vipId:</label>
		      <input class="inputxt" id="vipId" name="vipId" ignore="ignore"
					   value="${weixinVipMemberPage.vipId}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">memberId:</label>
		      <input class="inputxt" id="memberId" name="memberId" ignore="ignore"
					   value="${weixinVipMemberPage.memberId}">
		      <span class="Validform_checktip"></span>
		    </div>
	    </fieldset>
  </t:formvalid>
 </body>