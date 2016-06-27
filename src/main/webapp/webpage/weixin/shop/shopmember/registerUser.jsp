<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta content="telephone=no" name="format-detection" />
<meta name="MobileOptimized" content="240" />
<title>用户信息注册</title>
<link href="plug-in/register/css/dialog.css" rel="stylesheet" type="text/css"/>
<link href="plug-in/register/css/index.css" rel="stylesheet" type="text/css"/>
<script src="plug-in/jquery/jquery-1.8.3.js"></script>
<script src="plug-in/register/js/dialog.js"></script>

</head>
<script>
	function change(inputid,inputvalue_default){
		document.getElementById(inputid).style.color="#000";
		var inputvalue=document.getElementById(inputid).value;
		if(inputvalue==inputvalue_default){
			document.getElementById(inputid).value="";
		}
	}
</script>
<script>
	var diaObj=null;
	function _open(){
		var name = $("#username").val();
		var password = $("#password").val();
		var mobile = $("#mobile").val();
		
		diaObj=new Dialog("<div class='pp_cont'><ul class='pp_tab'><li><span>您的姓名:</span>"+name+"</li><li><span>您的电话号码:</span>"+mobile+"</li></ul></div><div class='vege_car jj_btn'><a onclick='_close()'>确认</a></div>",{
			title:"信息确认"
		});
		diaObj.show();
	}
	function _close() //关闭
	{
		var name = $("#username").val();
	    $.ajax({
	    	url:"userController.do?saveUser&shopSymbol=shop",
	        method:"POST",
	        dataType:"JSON",
	        data:$("#registerfrom").serialize(),
	        success:function(data){
	        	var success = data.success;
	        	if(success){
	        		diaObj=new Dialog("恭喜你注册成功！你的用户名："+name+"<a href="weixinShopController.do?goPage&page=index">点击跳转到首页</a>",{
	        			title:"添加成功！"
	        		});
	        		diaObj.show();
	        	}
	        }
	    });
		diaObj.hide();
	}
</script>
<body>
<div class="wei_header"><a href="main.html" class="wei_back"></a>用户信息<a href="index.html" class="wei_kong"></a></div>
<div class="wei_sec"> 
  <!-- input-->
  
  <div class="you_ipt">
    <form id="registerfrom" method="post" action="weixinShopMemberController.do?save">
      <div class="ipt_name"><span>姓&nbsp;&nbsp;&nbsp;名:</span>
        <input type="text" name="userName" id="username" value="请输入用户名" onfocus="change('username','请输入用户名')" />
      </div>
      <div class="ipt_shf"><span>密&nbsp;&nbsp;&nbsp;码:</span>
        <input type="text" name="password" id="password"  value="请输入密码" onfocus="change('password','请输入密码')"/>
      </div>
      <div class="ipt_pwd"><span>手机号:</span>
        <input type="text" name="mobilePhone"  id="mobile" value="请输入手机号" onfocus="change('mobile','请输入手机号')"/>
      </div>
      <div class="ipt_btn">
        <div class="reg_btn"><a href="javascript:void(0);" class="test1" onClick="_open()">注册</a></div>
      </div>
      <input type="hidden" name="TSDepart.id" value="4028d881436d514601436d5214d70015"/>
    </form>
  </div>

  <!--input end-->
</div>
</body>
</html>
