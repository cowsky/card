<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="format-detection" content="telephone=no">
    <title>购物车</title>
    <script src="plug-in/shop/js/jquery-1.9.1.min.js" type="text/javascript"> </script>
    <script src="plug-in/shop/js/jquery.lazyload.js" type="text/javascript"></script>
    <script src="plug-in/shop/js/notification.js" type="text/javascript">
    </script><script src="plug-in/shop/js/swiper.min.js" type="text/javascript"></script>
    <script src="plug-in/shop/css/main.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="plug-in/shop/css/style_touch.css">
    <script>
        $(document).ready(function(){
            $(".m-hd .cat").parent('div').click( function() {
                var docH=$(document).height();
                $('.sub-menu-list').toggle();
                $(".m-right-pop-bg2").addClass("on").css('min-height',docH);
            });
            $(".m-right-pop-bg2").click( function() {
                $('.sub-menu-list').hide();
                $(".m-right-pop-bg2").removeClass("on").removeAttr("style");
            });
        });
    </script>
</head>
<body>
    <div id="top"></div>
    <div id="scnhtm5" class="m-body">
        <div class="m-detail-mainout">
            <div class="m-hd">
				 <div>
				     <a href="javascript:history.go(-1);" class="back">返回</a>
				 </div>
				 <div>
				     <a href="weixinShopController.do?goPage&page=index" class="cat">商品分类</a>
				 </div>
				 <div class="tit">购物车</div>
				 <div>
				     <a href="weixinShopDealController.do?gomyorder&shopSymbol=shop" class="uc">用户中心</a>
				 </div>
				 <div>
				     <a href="weixinShopCartController.do?goCart&shopSymbol=shop" class="cart">购物车<i class="cart_com">1</i></a>
				 </div>
            </div>
           
            <ul class="m-cart-list">
            	<c:forEach items="${ShopCarList}" var="mallcar">
            		 <li number="${mallcar.count}" goodsId="${mallcar.shopGoodsEntity.id}">
	                    <span class="pic">
	                        <a href="#">
	                            <img src="${mallcar.shopGoodsEntity.titleImg}" width="75" height="75">
	                        </a>
	                    </span>
	                    <span class="con">
	                        <a href="weixinShopController.do?goPage&page=goodsdetail&goodsid=${mallcar.shopGoodsEntity.id}" class="t">测试</a>
	                        <p><label>数量：</label><span><i style="cursor: pointer;" onclick="plus_minus(637, -1, 23)" class="dec"></i>
	                        <input type="text" value="${mallcar.count}" onchange="change_minus(637, 23)" id="num_637_23">
	                        <i style="cursor: pointer;" onclick="plus_minus(637, 1, 23)" class="add"></i>
	                    </span>
	                    </p>
	                       
	                        <p>
	                            <label>价格：</label>
	                            <span class="price">￥${mallcar.buyPrice}</span>
	                            <!-- <label style="cursor:pointer" onclick="location.href='/index.php?g=Wap&m=Store&a=deleteCart&token=yicms&id=637&did=23&wecha_id=oLA6VjvtaKhnWKq1G0S8gxil7nbU'" class="del">删除</label> -->
	                            <label style="cursor:pointer" onclick="deleteShopCart('${mallcar.id}')" class="del">删除</label>
	                        </p>
	                    </span>
	                  </li>
            	</c:forEach>
               
            </ul>
            <div class="m-cart-toal">
                <!-- <p style="color:#E58B4C;text-align:left;padding:0 10px 1rem;border-bottom:1px dotted #ccc;margin:0 -10px 1rem;font-size:1.2rem;line-height:1.4rem">享受的优惠: 注册名鞋库会员，满百包邮！（货到付款除外）</p> -->
                <p class="check" style="font-size:1.4rem">商品总数:<b id="total_count">${totalNum}</b>　商品总额:<b id="total_price">￥${totalMoney}</b></p>
                <p class="act">
                    <a href="weixinShopController.do?goPage&page=index" class="back">继续购物<i></i>
                    </a>
                    <a href="javascript:jumpConfirm();" class="checkout">下单结算</a>
                </p>
            </div>
<script type="text/javascript">

	function jumpConfirm(){
		var liArray = $(".m-cart-list li");
		var goodsdata = [];
		for(var i = 0 ;i<liArray.length;i++){
			var liObj = liArray[i];
			var xmtyp = {};
            xmtyp.goodsId = $(liObj).attr("goodsId");
            xmtyp.num =  $(liObj).attr("number");
            goodsdata[i]=xmtyp;
		}
		var params = JSON.stringify(goodsdata);
	    location.href="weixinShopDealController.do?weixinShopDeal&shopSymbol=shop&params="+params+"&symbol=cart";
	}

    function deleteShopCart(cartId){
    	$.ajax({
    		url:"weixinShopCartController.do?del&id="+cartId,
    	    method:"POST",
    	    dataType:"JSON",
    	    success:function(data){
    	    	var success = data.success;
    	    	if(success){
    	    		alert("删除成功！");
    	    		location.reload() ;
    	    	}
    	    }
    	});
    }
    function full_update(rowid,price) {
        var _this = $('#qty'+rowid);
        var this_val = parseInt($(_this).val());
        if (this_val < 1 || isNaN(this_val)) {
            alert('购买数量不能小于1！');
            $(_this).focus();
            return false;
        }
        update_cart(rowid, this_val,price);
    }
    //加减
    function plus_minus(rowid, number, did) {
        var num = parseInt($('#num_'+rowid + '_' + did).val());
        num = num + number;
        if (num < 1) {
            return false;
        }
        $('#num_'+rowid + '_' + did).attr('value',num);
        update_cart(rowid, num, did);
    }
    function change_minus(rowid, did) {
        var num = parseInt($('#num_'+rowid + '_' + did).val());
        if (num < 1) {
            return false;
        }
        $('#num_'+rowid + '_' + did).attr('value',num);
        update_cart(rowid, num, did);
    }
    //更新购物车
    function update_cart(rowid, num, did) {
        if (num > parseInt($("#stock").text())) {
            num = parseInt($("#stock").text());
            $('#num_'+rowid + '_' + did).val(num);
            floatNotify.simple('抱歉，您的购买量超过了库存了');
        }
        $.ajax({
            url: '/index.php?g=Wap&m=Store&a=ajaxUpdateCart&token=yicms&wecha_id=oLA6VjvtaKhnWKq1G0S8gxil7nbU&id='+rowid+'&count='+num+'&did='+ did,
            success: function( data ) {
                if(data){
                    var datas=data.split('|');
                    //$('#p_buy #all_price').html('￥'+datas[1]);
                    $('#total_count').html(datas[0]);
                    $('#total_price').html('￥'+datas[1]);
                }
            }
        });
    }
</script>
<script type="text/javascript">
    window.shareData = {
        "moduleName":"Store",
        "moduleID":"0",
        "imgUrl": "",
        "timeLineLink": "http://demo.pigcms.cn/index.php?g=Wap&m=Store&a=cart&token=yicms",
        "sendFriendLink": "http://demo.pigcms.cn/index.php?g=Wap&m=Store&a=cart&token=yicms",
        "weiboLink": "http://demo.pigcms.cn/index.php?g=Wap&m=Store&a=cart&token=yicms",
        "tTitle": "购物车",
        "tContent": "购物车"
    };
</script><script>
    window.shareData.sendFriendLink=window.shareData.sendFriendLink.replace('http://demo.pigcms.cn','http://demo.pigcms.cn');
    document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
        WeixinJSBridge.on('menu:share:appmessage', function (argv) {
            shareHandle('friend');
            WeixinJSBridge.invoke('sendAppMessage', {
                "img_url": window.shareData.imgUrl,
                "img_width": "640",
                "img_height": "640",
                "link": window.shareData.sendFriendLink,
                "desc": window.shareData.tContent,
                "title": window.shareData.tTitle
            }, function (res) {
                _report('send_msg', res.err_msg);
            })
        });

        WeixinJSBridge.on('menu:share:timeline', function (argv) {
            shareHandle('frineds');
            WeixinJSBridge.invoke('shareTimeline', {
                "img_url": window.shareData.imgUrl,
                "img_width": "640",
                "img_height": "640",
                "link": window.shareData.sendFriendLink,
                "desc": window.shareData.tContent,
                "title": window.shareData.tTitle
            }, function (res) {
                _report('timeline', res.err_msg);
            });
        });

        WeixinJSBridge.on('menu:share:weibo', function (argv) {
            shareHandle('weibo');
            WeixinJSBridge.invoke('shareWeibo', {
                "content": window.shareData.tContent,
                "url": window.shareData.sendFriendLink,
            }, function (res) {
                _report('weibo', res.err_msg);
            });
        });
    }, false)

    function shareHandle(to) {
        var submitData = {
            module: window.shareData.moduleName,
            moduleid: window.shareData.moduleID,
            token:'yicms',
            wecha_id:'oLA6VjvtaKhnWKq1G0S8gxil7nbU',
            url: window.shareData.sendFriendLink,
            to:to
        };
        $.post('/index.php?g=Wap&m=Share&a=shareData&token=yicms&wecha_id=oLA6VjvtaKhnWKq1G0S8gxil7nbU',submitData,function (data) {},'json')
    }
</script></div></div></body></html>