<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/context/mytags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="format-detection" content="telephone=no">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="webpage/weixin/shop/myorder/js/area.js"></script>
<script type="text/javascript" src="webpage/weixin/shop/myorder/js/location.js"></script>
<script type="text/javascript" src="plug-in/Validform/js/Validform_v5.3.1_min.js"></script>
<script type="text/javascript" src="plug-in/Validform/js/Validform_Datatype.js"></script>
<script type="text/javascript" src="plug-in/Validform/js/datatype.js"></script>
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="plug-in/Validform/css/style.css" type="text/css" />
<link rel="stylesheet" href="plug-in/Validform/css/tablefrom.css" type="text/css" />

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"></link>


<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>管理收货地址</title>
<script>
$(function() {
	$("#formobj").Validform({
		btnSubmit : "#btn_sub",
		btnReset : "#btn_reset",
		ajaxPost : true,
		beforeSubmit:function(curform){
			//在验证成功后，表单提交前执行的函数，curform参数是当前表单对象。
			//这里明确return false的话表单将不会提交;	
			var pv= $("#loc_province").find("option:selected").text();
			var ct =  $("#loc_city").find("option:selected").text();
			var area =  $("#loc_area").find("option:selected").text();
			$("#province").val(pv);
			$("#city").val(ct);
			$("#area").val(area);
		},
		callback : function(data) {
			if (data.success == true) {
				alert(data.msg);
				location.href="weixinShopDealController.do?goAddressPage";
			} 
		}
	});
});

function defaultaddress(id){
	$.ajax({
        cache: true,
        type: "POST",
        url:"weixinShopAddressController.do?doDefault",
        data:[{name:"id",value:id}],
        async: false,
        error: function(request) {
            alert("Connection error");
        },
        dataType:"json",
        success: function(data) {
            alert(data.msg);
            location.href="weixinShopDealController.do?goAddressPage";
        }
    });
}
function del(id){
	$.ajax({
        cache: true,
        type: "POST",
        url:"weixinShopAddressController.do?doDel",
        data:[{name:"id",value:id}],
        async: false,
        error: function(request) {
            alert("Connection error");
        },
        dataType:"json",
        success: function(data) {
            alert(data.msg);
            location.href="weixinShopDealController.do?goAddressPage";
        }
    });
}

</script>
</head>

<body>
<h4>地址列表</h4>
 <table class="table table-hover">
      <thead>
        <tr>
          <th>序号</th>
          <th>详细地址</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach var="address" items="${addresslist}" varStatus="status" >
        <tr>
          <td>${ status.index + 1}</td>
          <td>${address.alladdress }</td>
          <td><button type="button" onclick="defaultaddress('${address.id}')" class="btn btn-success btn-xs">默认</button><button type="button"  onclick="del('${address.id}')" class="btn btn-danger btn-xs">删除</button></td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
<h4>新增地址</h4>    
<form role="form" id="formobj" method="post" action="weixinShopAddressController.do?doAdd">
  <div class="form-group">
    <label for="province">省份</label>
    <select id="loc_province"  class="form-control"  name="province_value"></select>
    <input  name="province" id="province" type="hidden"/>
  </div>
  <div class="form-group">
    <label for="city">城市</label>
    <select id="loc_city"  class="form-control"  name="city_value"></select>
    <input  name="city" id="city" type="hidden"/>
  </div>
  <div class="form-group">
    <label for="area">区域</label>
    <select id="loc_town"  class="form-control" name="area_value" ></select>
	<input  name="area" id="area" type="hidden"/>
  </div>
  <div class="form-group">
    <label for="address">详细地址</label>
   <input id="loc_address" name="address" id="address"  class="form-control" />
  </div>
  <div class="form-group">
    <label for="realname">收件人</label>
   <input id="loc_realname" name="realname" id="realname"  class="form-control" />
  </div>
    <div class="form-group">
    <label for="tel">联系电话</label>
   <input class="form-control" id="tel" name="tel" />
  </div>
<button type="button" id="btn_sub" class="btn btn-primary btn-lg btn-block">确定</button>
<button type="button" id="btn_reset"class="btn btn-default btn-lg btn-block">重置</button>
</form>
<script type="text/javascript">
$(document).ready(function() {
	showLocation();
});
</script>
</body>
</html>
