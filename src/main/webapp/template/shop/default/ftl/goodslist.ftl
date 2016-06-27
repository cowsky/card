<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="format-detection" content="telephone=no">
    <title>${weixinShopContent.category.name}</title>
    <script src="template/shop/default/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="template/shop/default/js/jquery.lazyload.js" type="text/javascript"></script>
    <script src="template/shop/default/js/notification.js" type="text/javascript"></script>
    <script src="template/shop/default/js/swiper.min.js" type="text/javascript"></script>
    <script src="template/shop/default/js/main.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="template/shop/default/css/style_touch.css">
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
    <div id="top">
    </div><div id="scnhtm5" class="m-body">
        <div class="m-detail-mainout">
            <div class="m-hd">
                <div>
                    <a href="javascript:history.go(-1);" class="back">返回</a>
                </div>
                <div>
                    <a href="javascript:void(0);" class="cat">商品分类</a></div>
                <div class="tit">${weixinShopContent.category.name}</div>
                <div>
    				 <a href="weixinShopDealController.do?gomyorder&shopSymbol=shop" class="uc">用户中心</a>
 				</div>
				<div>
   					 <a href="weixinShopCartController.do?goCart&shopSymbol=shop" class="cart">购物车<i class="cart_com">1</i></a>
			    </div>
            </div>
            <ul class="sub-menu-list">
            	<li>
                    <a href="weixinShopController.do?goPage&page=index">首页</a>
                </li>
             <#list weixinShopContent.categoryList as category>
                <li>
                    <a href="weixinShopController.do?goPage&page=goodslist&categoryid=${category.id}">${category.name}</a>
                </li>
              </#list>
            </ul>
            <form id="search_form" name="search_form" action="" method="post">
                <div class="m-l-search"><input type="hidden" name="wecha_id" value="oLA6VjvtaKhnWKq1G0S8gxil7nbU">
                    <input type="hidden" name="token" value="yicms">
                    <input id="search_name" class="inp-search" name="search_name" type="search" value="" placeholder="输入关键字搜索">
                    <input class="btn-search" name="search-btn" type="submit" value="">
                </div>
                <input type="hidden" name="__hash__" value="525416ccbf4abccd8b81f59add48e3c9_96c311a24982b363aa7df324e015647c">
            </form>
            <div class="m-select c666 order_control">
                <span>
                    <a href="javascript:" order="createDate" >时间<i><em></em></i></a>
                </span>
                <span>
                    <a href="javascript:" order="sellcount">销量<i><em></em></i></a>
                </span>
                <span>
                    <a href="javascript:" order="realprice">价格<i><em></em></i></a></span>
                <span>
                    <a href="javascript:" order="sale">折扣<i><em></em></i></a>
                </span>
                <input type="hidden" id="view_list" value="">
                <!-- <span class="filter"><a href="javascript:;" class="ary li">排列</a><a href="javascript:;" class="flt">筛选</a></span> -->
            </div>
            <ul id="m_list" class="m-list ">
             <#list weixinShopContent.goodsList as goods>
                <li>
                    <span class="pic">
                        <a href="weixinShopController.do?goPage&page=goodsdetail&goodsid=${goods.id}">
                            <img src="${goods.titleImg}">
                        </a>
                    </span>
                    <span class="con">
                        <a class="t" href="weixinShopController.do?goPage&page=goodsdetail&goodsid=${goods.id}">${goods.title}</a><b>￥${goods.realPrice}</b><del>￥${goods.price}</del>
                    </span>
                </li>
              </#list>
            </ul>
            <a class="more" id="show_more" page="2" style="display: none;" href="javascript:void(0);">加载更多</a>
            <input type="hidden" value="1" id="pageid">
            <input type="hidden" id="canScroll" value="1">
            <script type="text/javascript">
    $(function() {
        $('#search_form').submit(function() {
            var search_name = $('#search_name').val();
            if (search_name == '') {
                return false;
            }
        });

        //点击排序
        var base_url = 'weixinShopController.do?goPage&page=goodslist&categoryid=${weixinShopContent.params.categoryid}';
        var b_url = 'weixinShopController.do?goPage&page=goodslist&categoryid=${weixinShopContent.params.categoryid}'
        method = 'DESC',
                _get_method = '${weixinShopContent.params.order?default("DESC")}',
                order = 'createDate',
                _get_order  = '${weixinShopContent.params.sort?default("createDate")}';
        if (_get_order != '') {
            order = _get_order;
        }
        $('.order_control a').removeClass('arrow-down');
        if (_get_method == 'DESC')  {
            method = 'ASC';
            $('.order_control a[order="' + order + '"]').addClass('arrow-up');
        } else {
            $('.order_control a[order="' + order + '"]').addClass('arrow-down');
        }
        $('.order_control a').click(function() {
            var order = $(this).attr('order');
            var url = base_url + '&sort=' + order+'&order='+method;
            location.href = url;
        });

        /*---------------------加载更多--------------------*/
         var pbase_url = 'weixinShopController.do?goodslist&categoryid=${weixinShopContent.params.categoryid}';
        var pb_url = 'weixinShopController.do?goodslist&categoryid=${weixinShopContent.params.categoryid}'
    
        //总记录数
        var total = ${weixinShopContent.page.total},
	    //每页显示多少行
	    pagesize = ${weixinShopContent.page.pageSize},
	    //共有多少页
	    pages = Math.ceil(total / pagesize);
	    //请求url
        var com_link = 'weixinShopController.do?goPage&page=goodsdetail';
        var label_arr = ["\u8bf7\u9009\u62e9\u6807\u7b7e","\u70ed\u5356","\u7206\u6b3e"];
        if (pages > 1) {
            var _page = $('#show_more').attr('page');
            $(window).bind("scroll",function() {
                if ($(document).scrollTop() + $(window).height() >= $(document).height()) {
                    $('#show_more').show().html('加载中...');
                    if (_page > pages) {
                        $('#show_more').show().html('没有更多了').delay(2300).slideUp(1600);
                        return;
                    }
                    if($('#canScroll').val()==0){//不要重复加载
                        return;
                    }
                    $('#canScroll').attr('value',0);
                    $.ajax({
                        type : "GET",
                        data : {'page' : _page, 'inajax' : 1},
                        url :  pb_url + '&order=' + order + '&method=' + _get_method + '&pagesize='+pagesize,
                        dataType : "json",
                        success : function(RES) {
                            $('#canScroll').attr('value',1);
                            $('#show_more').hide().html('加载更多');
                            data = RES;
                            if(data.length){
                                $('#show_more').attr('page',parseInt(_page)+1);
                            }
                            _page = $('#show_more').attr('page');
                            var _tmp_html = '';
                            $.each(data, function(x, y) {
                                _tmp_html +=    '<li><span class="pic">' +
                                        '<a href="' + com_link + '&goodsid=' + y.id + '">' +
                                        '<img src="' +y.titleImg + '" />' +
                                        '</a></span><span class="con"><a class="t" href="' + com_link + '&goodsid=' + y.id + '">' + y.title + '</a><b>￥'+ y.realPrice +'&nbsp;元</b><del>￥' + y.price + '</del></span></li>';
                            });
                            $('#m_list').append(_tmp_html);
                        }
                    });
                }
            });
        }
    });
</script><script type="text/javascript">
    window.shareData = {
        "moduleName":"Store",
        "moduleID":"637",
        "imgUrl": "http://weixin3.gg.pp.cc/data/product_logo/20130830164751785.JPG",
        "timeLineLink": "http://demo.pigcms.cn/index.php?g=Wap&m=Store&a=products&token=yicms",
        "sendFriendLink": "http://demo.pigcms.cn/index.php?g=Wap&m=Store&a=products&token=yicms",
        "weiboLink": "http://demo.pigcms.cn/index.php?g=Wap&m=Store&a=products&token=yicms",
        "tTitle": "衣服列表",
        "tContent": "衣服列表"
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