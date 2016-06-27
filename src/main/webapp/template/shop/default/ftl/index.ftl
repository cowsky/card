<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="format-detection" content="telephone=no">
    <title>商品分类</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
    <meta name="format-detection" content="telephone=no">
    <script src="template/shop/default/js/jquery-1.9.1.min.js" type="text/javascript">
    </script><script src="template/shop/default/js/jquery.lazyload.js" type="text/javascript"></script>
    <script src="template/shop/default/js/notification.js" type="text/javascript"></script>
    <script src="template/shop/default/js/swiper.min.js" type="text/javascript"></script>
    <script src="template/shop/default/js/main.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="template/shop/default/css/touch_index.css">
    <link type="text/css" rel="stylesheet" href="template/shop/default/css/style.css">
</head><body><div id="top">

</div>
    <div id="scnhtm5" class="m-body">
            <div class="menu">
                <a href="weixinShopController.do?goPage&page=index"><i></i>所有分类</a>
                <a href="weixinShopCartController.do?goCart&shopSymbol=shop"><i> </i>购物车</a>
                <a href="weixinShopDealController.do?gomyorder&shopSymbol=shop"><i></i>我的订单</a>
            </div>
        <!--主体-->
        <#list weixinShopContent.categoryList as category>
        <div class="m-floor">
            <ul>
                <li class="tit bgf${category_index+1}"><i>${category_index+1}F</i>${category.name}</li>
                <li class="img">
                    <a href="weixinShopController.do?goPage&page=goodslist&categoryid=${category.id}">
                        <img src="${category.imgurl}" width="380" height="190">
                    </a>
                </li>
                <!-- <li class="ad"><a href="/index.php/touch/goods/goodslist/keyword/NEO%09"><img src="style/images/f1-2.jpg"/></a></li> -->
            </ul>
        </div>
       	</#list>
    </div>
</body>
</html>