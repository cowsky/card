<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>商品信息</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
    <link type="text/css" rel="stylesheet" href="plug-in/weixin/css/appmsg_edit.css" />
  <link type="text/css" rel="stylesheet" href="plug-in/weixin/css/jquery.fileupload.css" />
  <link type="text/css" rel="stylesheet" href="plug-in/bootstrap/css/bootstrap.min.css" />
  <!--fileupload-->
  <script type="text/javascript" src="plug-in/weixin/js/vendor/jquery.ui.widget.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/load-image.min.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.fileupload.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.fileupload-process.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.fileupload-image.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.iframe-transport.js"></script>
  <!--UEditor-->
  <script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.config.js"></script>
  <script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.all.min.js"></script>
    
  <script type="text/javascript">
  //编写自定义JS代码
  /*jslint unparam: true, regexp: true */
  /*global window, $ */
  $(function () {
      'use strict';
      // Change this to the location of your server-side upload handler:
      var url = 'weixinShopGoodsController.do?upload',
          uploadButton = $('<button/>')
              .addClass('btn btn-primary')
              .prop('disabled', true)
              .text('上传中...')
              .on('click', function () {
                  var $this = $(this), data = $this.data();
                  $this.off('click').text('正在上传...').on('click', function () {
                          $this.remove();
                          data.abort();
                  });
                  data.submit().always(function () {
                      $this.remove();
                  });
              });
      $('#fileupload').fileupload({
          url: url,
          dataType: 'json',
          autoUpload: false,
          acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
          maxFileSize: 2000000, // 2 MB
          disableImageResize: /Android(?!.*Chrome)|Opera/
              .test(window.navigator.userAgent),
          previewMaxWidth: 290,
          previewMaxHeight: 160,
          previewCrop: true
      }).on('fileuploadadd', function (e, data) {
          $("#files").text("");
          data.context = $('<div/>').appendTo('#files');
          $.each(data.files, function (index, file) {
              //var node = $('<p/>').append($('<span/>').text(file.name));
              //fileupload
              var node = $('<p/>');
              if (!index) {
                  node.append('<br>').append(uploadButton.clone(true).data(data));
              }
              node.appendTo(data.context);
          });
      }).on('fileuploadprocessalways', function (e, data) {
          var index = data.index,
              file = data.files[index],
              node = $(data.context.children()[index]);
          if (file.preview) {
              node.prepend('<br>').prepend(file.preview);
          }
          if (file.error) {
              node
                  .append('<br>')
                  .append($('<span class="text-danger"/>').text(file.error));
          }
          if (index + 1 === data.files.length) {
              data.context.find('button')
                  .text('上传')
                  .prop('disabled', !!data.files.error);
          }
      }).on('fileuploadprogressall', function (e, data) {
          var progress = parseInt(data.loaded / data.total * 100, 10);
          $('#progress .progress-bar').css(
              'width',
              progress + '%'
          );
      }).on('fileuploaddone', function (e, data) {
          console.info(data);
          var  file = data.files[0];
          //var delUrl = "<a class=\"js_removeCover\" onclick=\"return false;\" href=\"javascript:void(0);\">删除</a>";
          $("#imgName").text("").append(file.name);
          $("#imageName").val(file.name);
          $("#progress").hide();
  		var d =data.result;
  		if (d.success) {
  			var link = $('<a>').attr('target', '_blank').prop('href', d.attributes.viewhref);
          	$(data.context.children()[0]).wrap(link);
          	console.info(d.attributes.viewhref);
          	$("#titleImg").val(d.attributes.url);
  		}else{
  			var error = $('<span class="text-danger"/>').text(d.msg);
              $(data.context.children()[0]).append('<br>').append(error);
  		}
      }).on('fileuploadfail', function (e, data) {
          $.each(data.files, function (index, file) {
              var error = $('<span class="text-danger"/>').text('File upload failed.');
              $(data.context.children()[index])
                  .append('<br>')
                  .append(error);
          });
      }).prop('disabled', !$.support.fileInput)
          .parent().addClass($.support.fileInput ? undefined : 'disabled');
      
      //编辑时初始化图片预览
      var name = "${weixinShopGoods.title}", imageHref = "${weixinShopGoods.titleImg}";
      if(name != ""){
          $("#imageTitle").html(name);
      }
      if(imageHref != ""){
          $("#imageShow").html('<img src="${weixinShopGoods.titleImg}" width="100%" height="160" />');
      }
  });
  function setimageTitle(obj){
	  $("#imageTitle").html($(obj).val());
  }
  function calucatereal(value){
	  var price = $("#price").val();
	  if(price==""){
		  $.messager.show({
              title:'提示信息',
              msg:'请填写商品原价',
              showType:'show'
          });  
		  return ;
	  }
	  if(value==""){
		  $.messager.show({
              title:'提示信息',
              msg:'请填写商品折扣',
              showType:'show'
          });  
		  return ;
	  }
	  var realprice  = changeTwoDecimal(parseFloat(price)*parseFloat(value)/10);
	  $("#realPrice").val(realprice);
  }
  function calucatesale(value){
	  var price = $("#price").val();
	  if(price==""){
		  $.messager.show({
              title:'提示信息',
              msg:'请填写商品原价',
              showType:'show'
          });  
		  return ;
	  }
	  if(value==""){
		  $.messager.show({
              title:'提示信息',
              msg:'请填写商品现价',
              showType:'show'
          });  
		  return ;
	  }
	  var sale  = changeTwoDecimal(parseFloat(value)/parseFloat(price)*10);
	  $("#sale").val(sale);
  }
	function changeTwoDecimal(x)
	{
	   var f_x = parseFloat(x);
	   if (isNaN(f_x))
	   {
	      return false;
	   }
	   var f_x = Math.round(x*100)/100;
	   var s_x = f_x.toString();
	   var pos_decimal = s_x.indexOf('.');
	   if (pos_decimal < 0)
	   {
	      pos_decimal = s_x.length;
	      s_x += '.';
	   }
	   while (s_x.length <= pos_decimal + 2)
	   {
	      s_x += '0';
	   }
	   return s_x;
	}

  </script>
  
 </head>
 <body>
  <div class="media_preview_area">
		<div class="appmsg editing">
				<div class="appmsg_content" id="js_appmsg_preview">
						<h4 class="appmsg_title">
							<a target="_blank" href="javascript:void(0);" onclick="return false;" id="imageTitle">标题图片</a>
						</h4>
						<div class="appmsg_info">
							<em class="appmsg_date"></em>
						</div>
						<div id="files" class="files">
							<i class="appmsg_thumb default" id="imageShow">标题图片</i>
						</div>
						 <div id="progress" class="progress">
					        <div class="progress-bar progress-bar-success"></div>
					    </div>
						<p class="appmsg_desc"></p>
				</div>
			</div>
		</div>
		<div class="media_edit_area" id="js_appmsg_editor" style="width: 100%">	
			<div class="appmsg_editor"  style="margin-top: 0px;">
		 		<div class="inner" style="width:90%">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinShopGoodsController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinShopGoodsPage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinShopGoodsPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinShopGoodsPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinShopGoodsPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinShopGoodsPage.updateDate }">
					<input id="discussCount" name="discussCount" type="hidden" value="0">
					<input id="goodCount" name="goodCount" type="hidden" value="0">
					<input id="badCount" name="badCount" type="hidden" value="0">
					<input id="statement" name="statement" type="hidden" value="${weixinShopGoodsPage.statement }">
					<input id="shelveTime" name="shelveTime" type="hidden" value="${weixinShopGoodsPage.shelveTime }">
					<input id="removeTime" name="removeTime" type="hidden" value="${weixinShopGoodsPage.removeTime }">
					<input id="sellCount" name="sellCount" type="hidden" style="width: 150px" class="inputxt"  >
					
		<table style="width: 90%;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							标题信息:
						</label>
					</td>
					<td class="value">
					     	 <input id="title" name="title" type="text" style="width: 150px" class="inputxt"  >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">标题信息</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							标题图片:
						</label>
					</td>
					<td class="value">
					     	<span class="btn btn-success fileinput-button">
							        <i class="glyphicon glyphicon-plus"></i>
							        <span>浏览</span>
							        <!-- The file input field used as target for the file upload widget -->
							        <input id="fileupload" type="file" name="files[]" multiple>
							</span>
					     	<input id="titleImg" name="titleImg" type="hidden" style="width: 150px" class="inputxt">
							<span id="imgName"></span> 
							<label class="Validform_label" style="display: none;">标题图片</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							所属分类:
						</label>
					</td>
					<td class="value">
					     	 <input id="categoryid" name="weixinShopCategory.id" type="hidden" style="width: 150px" class="inputxt" ><input id="categoryname" name="categoryname" type="text" style="width: 150px" class="inputxt" >
					     	 <t:choose hiddenName="categoryid" hiddenid="id" url="weixinShopGoodsController.do?categoryList" name="categoryList" inputTextname="categoryname" icon="icon-search" title="角色列表" textname="name" isclear="true"></t:choose>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">所属分类</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品原价:
						</label>
					</td>
					<td class="value">
					     	 <input id="price" name="price" type="text" style="width: 150px" class="inputxt" datatype="d" errormsg="商品原价格式不正确!" >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品原价</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品现价:
						</label>
					</td>
					<td class="value">
					     	 <input id="realPrice" name="realPrice" type="text" style="width: 150px" class="inputxt" onchange="calucatesale(this.value)" datatype="d" errormsg="商品现价格式不正确!"  >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品现价</label>
						</td>
				<tr>
					<td align="right">
						<label class="Validform_label">
							折扣:
						</label>
					</td>
					<td class="value">
					     	 <input id="sale" name="sale" type="text" style="width: 150px" class="inputxt"  value="10" onchange="calucatereal(this.value)"   datatype="d" errormsg="商品折扣格式不正确!">
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">折扣</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							快递名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="expressName" name="expressName" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">快递名称</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							快递费用:
						</label>
					</td>
					<td class="value">
					     	 <input id="expressPrice" name="expressPrice" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">快递费用</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							商品详情:
						</label>
					</td>
					<td class="value">
					     	 <textarea id="descriptions" name="descriptions" style="width: 600px;height:300px"></textarea>
							<script type="text/javascript">
							        var editor = UE.getEditor('descriptions');
							    </script>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">商品详情</label>
						</td>
				<tr>
			</table>
		</t:formvalid>
		</div>
		</div>
	</div>
 </body>
  <script src = "webpage/weixin/shop/base/weixinShopGoods.js"></script>		