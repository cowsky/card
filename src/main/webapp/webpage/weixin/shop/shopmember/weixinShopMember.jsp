<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>商城会员</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinShopMemberController.do?save">
			<input id="id" name="id" type="hidden" value="${weixinShopMemberPage.id }">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							用户名:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="username" name="username" 
							   value="${weixinShopMemberPage.username}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							密码:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="password" name="password" 
							   value="${weixinShopMemberPage.password}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							注册时间:
						</label>
					</td>
					<td class="value">
						<input class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"  style="width: 150px" id="addtime" name="addtime" ignore="ignore"
							     value="<fmt:formatDate value='${weixinShopMemberPage.addtime}' type="date" pattern="yyyy-MM-dd hh:mm:ss"/>">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							手机号:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="mobile" name="mobile" ignore="ignore"
							   value="${weixinShopMemberPage.mobile}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>