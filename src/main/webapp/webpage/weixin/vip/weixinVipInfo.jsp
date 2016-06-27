<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微信会员卡表</title>
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
    <script type="text/javascript">
  //编写自定义JS代码
/*jslint unparam: true, regexp: true */
/*global window, $ */
$(function () {
    'use strict';
    // Change this to the location of your server-side upload handler:
    var url = 'weixinArticleController.do?upload',
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
       // console.info(data);
        var  file = data.files[0];
        //var delUrl = "<a class=\"js_removeCover\" onclick=\"return false;\" href=\"javascript:void(0);\">删除</a>";
        $("#imgName").text("").append(file.name);
        $("#progress").hide();
		var d =data.result;
		if (d.success) {
			var link = $('<a>').attr('target', '_blank').prop('href', d.attributes.viewhref);
        	$(data.context.children()[0]).wrap(link);
        	console.info(d.attributes.viewhref);
        	$("#vipImg").val(d.attributes.url);
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
});
</script>
 </head>
 <body scroll="no">
 
		<fieldset class="step">
			<table>
				<tr>
					<td style="height:350px;">
					 <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="weixinVipInfoController.do?save" >
						<input id="id" name="id" type="hidden" value="${weixinVipInfoPage.id }">
						<div class="form" style="width:300px;">
					      <label class="Validform_label">会员卡名称:</label>
					      <input class="inputxt" id="vipName" name="vipName" 
								   value="${weixinVipInfoPage.vipName}" datatype="*">
					      <span class="Validform_checktip"></span>
					    </div>
						<div class="form" style="width:300px;">
					      <label class="Validform_label">会员卡图片:</label>
				      			 <div style="height:20px;">
							      <span class="btn btn-success fileinput-button" style="height:20px;">
								        <i class="glyphicon glyphicon-plus"></i>
								        <span>浏览</span>
								        <!-- The file input field used as target for the file upload widget -->
								        <input id="fileupload" type="file" name="files[]" multiple>
								        <input id="vipImg" name="vipImg" type="hidden"  datatype="*" nullmsg="请添加图片" value="${weixinVipInfoPage.vipImg}">
									</span>
									<div id="imgName"></div>
								  </div>
					      <span class="Validform_checktip"></span>
					    </div>
						<div class="form" style="width:300px;">
					      <label class="Validform_label">会员卡描述:</label>
					      <textarea style="overflow-x:hidden;resize: none;float:left;top:auto;"  id="vipDescribe" name="vipDescribe" class="inputxt" ignore="ignore" rows="2" cols="2" >
					      ${weixinVipInfoPage.vipDescribe}
					      </textarea>
					      <span class="Validform_checktip"></span>
					    </div>
						<div class="form" style="width:300px;">
					      <label class="Validform_label">开始时间:</label>
					      <input class="Wdate" onClick="WdatePicker()"  style="width: 150px" id="startTime" name="startTime" ignore="ignore"
								   value="<fmt:formatDate value='${weixinVipInfoPage.startTime}' type="date" pattern="yyyy-MM-dd"/>">
					      <span class="Validform_checktip"></span>
					    </div>
						<div class="form" style="width:300px;">
					      <label class="Validform_label">会员卡级别:</label>
					      <select id="levelId" name="levelId" value="${weixinVipInfoPage.levelId}" >
					      	<c:forEach  var="level" items="${LEVEL}">
					      		<c:choose>
					      		<c:when test="${level.levelIndex == weixinVipInfoPage.levelId}">
					      			<option value="${level.levelIndex}" selected="selected">${level.levelName}</option>
					      		</c:when>
					      		<c:otherwise>
					      			<option value="${level.levelIndex}">${level.levelName}</option>
					      		</c:otherwise>
					      		</c:choose>
					      	</c:forEach>
					      </select>
					      <!-- <input class="inputxt" id="levelId" name="levelId" 
								   value="${weixinVipInfoPage.levelId}" datatype="*"> -->
					      <span class="Validform_checktip"></span>
					    </div>
					     </t:formvalid>
					</td>
					<td  style="height:350px;">
						<div class="media_preview_area" style="margin-left:-325px;">
							<div class="appmsg editing">
								<div class="appmsg_content" id="js_appmsg_preview">
									<h4 class="appmsg_title">
										<a target="_blank" href="javascript:void(0);"
											onclick="return false;">会员卡封面图</a>
									</h4>
									<div class="appmsg_info">
										<em class="appmsg_date"></em>
									</div>
									<div id="files" class="files">
										<i class="appmsg_thumb default">封面图片</i>
									</div>
									 <div id="progress" class="progress">
								        <div class="progress-bar progress-bar-success"></div>
								    </div>
									<p class="appmsg_desc"></p>
								</div>
							</div>
					</div>
					</td>
				<tr>
			</table>
	    </fieldset>
 </body>