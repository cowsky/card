<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>订单确认</title>
    
<meta charset="UTF-8">

<meta name="viewport" content=" initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<%=basePath %>/webpage/weixin/shop/wap/style.css" rel="stylesheet">
<link href="<%=basePath %>/webpage/weixin/shop/wap/templates.css" rel="stylesheet">
    <script src="aLocation.js"></script>
    <style type="text/css">
        .btn_radio {
            display: inline-block;
            width: 15px;
            height: 15px;
            background: url(../statics/images/radio.png) no-repeat center -15px;
            -webkit-background-size: 15px auto;
        }

            .btn_radio.checked {
                background-position: center 0;
            }

        .btn_checkbox {
            display: inline-block;
            width: 15px;
            height: 15px;
            background: url(../statics/images/checkbox.png) no-repeat center -15px;
            -webkit-background-size: 15px auto;
        }

            .btn_checkbox.checked {
                background-position: center 0;
            }

        .tip {
            text-align: center;
            line-height: 35px;
            background: #f3f3f3;
            overflow: hidden;
        }

            .tip .icons_close {
                float: right;
                display: block;
                width: 35px;
                height: 35px;
                background: url(../statics/images/icons.svg) no-repeat center -35px;
                -webkit-background-size: 35px auto;
            }

        input[type="checkbox"].input1 {
            /*background-size: auto;
            background-position: -270px -109px;*/
            -webkit-appearance: checkbox;
        }
        /*input[type="checkbox"].input1:checked {
            background-position: -270px -126px;
        }*/
    </style>
</head>
<body>
    
<div class="lay_header" style="height: 45px">
    <div class="lay_toptab mod_tab" id="lay_head">
         <a class="tab_item" href="http://1071.vshop.weimob.com/list/all.html?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2"><i class="qb_icon icon_goback"></i></a>
        <!--<div class="tab_item go_back"><i class="qb_icon icon_goback"></i></div>-->
        
        <a class="tab_item tab_item_logo" href="http://1071.vshop.weimob.com/?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2">
            <img src="20140528214743_9818.png">
        </a>
        
        <a class="tab_item" href="http://1071.vshop.weimob.com/my/index.html?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2"><i class="qb_icon icon_icenter"></i></a>
        <a class="tab_item" href="http://1071.vshop.weimob.com/cart.html?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2"><i class="qb_icon icon_cart"></i><i class="qb_icon icon_number_bubble qb_none"></i></a>
    </div>
    <div class="lay_toptab mod_tab fixed animate qb_none" id="lay_head_fixed">
        <a class="tab_item" href="http://1071.vshop.weimob.com/list/all.html?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2"><i class="qb_icon icon_goback"></i></a>
        <!--<div class="tab_item go_back"><i class="qb_icon icon_goback"></i></div>-->
        
        <a class="tab_item tab_item_logo" href="http://1071.vshop.weimob.com/?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2">
            <img src="20140528214743_9818.png" style="width: 132px; margin-top: 8px;">
        </a>
        
        <a class="tab_item" href="http://1071.vshop.weimob.com/my/index.html?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2"><i class="qb_icon icon_icenter"></i></a>
        <a class="tab_item" href="http://1071.vshop.weimob.com/cart.html?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2"><i class="qb_icon icon_cart"></i><i class="qb_icon icon_number_bubble qb_none"></i></a>
    </div>
</div>

    
    <div class="lay_page page_order current" id="page_order">
        <div class="lay_page_wrap">
            <ul id="toAddrList" evttag="toAddrList" class="mod_addresslist ui_mt15">
                <li class="address_item arrow" evttag="toAddrList">
                    <div class="address_detail" evttag="toAddrList">
                        配送信息<span id="goaddlist" evttag="toAddrList" style="display: none" addr="/my/recvaddr/getAddrList.html?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2&amp;addrId=305684&amp;bc=1&amp;attr=&amp;mid=&amp;ic="></span>
                    </div>
                </li>
            </ul>
            
            <div class="mod_cell ui_gap">
                <dl class="mod_dl dl_tabel">
                    <dt class="ui_color_weak">姓名：</dt>
                    
                    <dd class="">咯恩</dd>
                    <dt class="ui_color_weak">地址：</dt>
                    <dd class="">
                        <p class="address qb_fs_m">
                            </p><div id="cityName305684" style="display: inline">河北省 邯郸市 峰峰矿区</div>
                            <script type="text/javascript">
                                document.getElementById("cityName305684").innerHTML=getLocation("130000", "130400", "130406");
                            </script>
                            看见了吗
                        <p></p>
                    </dd>
                    <dt class="ui_color_weak">电话：</dt>
                    
                    <dd class="">15632265589</dd>
                </dl>
            </div>
            

            <div class="mod_cell">
                <div class="mod_celltitle">商品信息</div>
                <div class="ui_color_weak qb_mb10"></div>
                <ul class="mod_list">
                    
                </ul>
                <div class="qb_flex qb_mb10" id="coupon-node" index="0"></div>
                <div class="qb_flex qb_mb10" id="promote-node" index="0"></div>
                <div class="mod_cell_hr"></div>
                <div class="ui_mb10">
                    <p class="ui_align_right qb_none" id="free-div"></p>
                    <p class="ui_align_right qb_none" id="dealoff-div">优惠金额：<strong class="mod_color_strong"><span id="dealoff-price"></span></strong></p>
                </div>
            </div>

            <div class="mod_cell ui_gap">
                <dl class="mod_dl dl_tabel">
                    <dt class="ui_color_weak">配送方式：</dt>
                    <dd class="">
                        <div class="mod_select select_block flex_box">
                            <select data-price="0" evttag="sendType" id="select_shipFee">
                                
                            </select>
                        </div>
                    </dd>

                </dl>
            </div>

            <input id="hidSwitch" type="hidden">

            <div class="mod_cell ui_gap">
                <dl class="mod_dl dl_tabel">
                    <dt class="ui_color_weak">应付金额：</dt>
                    <dd class="ui_align_right">
                        <span id="total-price"></span>
                    </dd>
                </dl>
            </div>


            
            <script type="text/javascript">

                document.getElementById("hidSwitch").tag='';
            </script>
            
            <div class="mod_cell ui_gap" style="margin-bottom: 0px;">
                <dl class="mod_dl dl_tabel">
                    <dd style="padding-left: 5px; margin-left: 5px;" evttag="choicetype1">
                        <span id="ckb1" name="multiChoice" value="1" class="btn_checkbox">&nbsp;</span>
                        普通会员享100%价格优惠<input name="multiChoiceValue" value="100" type="hidden"></dd>
                </dl>
            </div>
            
            <div class="mod_cell ui_gap" style="margin-bottom: 0px;">
                 <dl class="mod_dl dl_tabel">
                    <dd style="padding-left: 5px; margin-left: 5px;" evttag="choicetype3">
                        <span id="ckb3" name="multiChoice" value="3" class="btn_checkbox">&nbsp;</span>
                        使用积分抵现: <input name="multiChoiceValue" evttag="jifeninput" style="width: 50px;overflow: hidden; border: 1px solid #eaeaea" maxvalue="1" type="number">元
                   
                    <div style="text-align: right; padding-left: 20px">(10积分=1元,可用11积分)</div>
                        </dd>
                </dl>
            </div>
            
             <div class="mod_cell ui_gap qb_none">
               <dl class="mod_dl dl_tabel">
                    <dd style="padding-left: 5px; margin-left: 5px;" evttag="choicetype4">
                        <span id="ckb4" type="checkbox" name="multiChoice" value="4" class="btn_checkbox">&nbsp;</span>
                        余额支付:￥<input name="multiChoiceValue" evttag="yueinput" style="width: 50px;overflow: hidden; border: 1px solid #eaeaea" maxvalue="0.00" type="number">元(￥0.00元)
                    </dd>
                </dl>
            </div>
            

            <div class="mod_cell ui_gap">
                <dl class="mod_dl dl_tabel">
                    <dt class="ui_color_weak">实付金额：</dt>
                    <dd class="ui_align_right" id="real-price"></dd>
                </dl>
            </div>

            <div class="mod_cell ui_gap">
                <dl class="mod_dl dl_tabel">
                    <dt class="ui_color_weak">支付方式：</dt>
                    <dd class="">
                        <div class="mod_select select_block flex_box">
                            <select evttag="changePay">
                                <option selected="selected" value="-1">请选择支付方式</option>
                                
                                <option value="1014">支付宝</option>
                                
                                <option value="1061">货到付款</option>
                                
                                <option value="20263">银联全民付</option>
                                
                                <option value="20266">财付通</option>
                                
                            </select>
                        </div>
                    </dd>

                </dl>
            </div>

            <div class="mod_cell ui_gap">
                <dl class="mod_dl dl_tabel">
                    <dt class="ui_color_weak">备注：</dt>
                    <dd class="">
                        
                        <textarea id="memo" rows="2" evttag="memoinput" style="width: 100%; overflow: hidden; border: 1px solid #eaeaea"></textarea>
                    </dd>

                </dl>
            </div>

            <div class="ui_gap">
                <a id="submit-order" evttag="submitOrder" class="mod_btn btn_strong btn_block">提交订单</a>
            </div>
        </div>
    </div>
    <div class="qb_quick_tip qb_none" id="bubble"></div>
    <div class="mod_dialog qb_none" id="message-notice">
        <div class="dialog_mask"></div>
        <div class="dialog_main qb_br qb_tac">
            <div class="dialog_bd" id="notice-content"></div>
            <div class="dialog_ft qb_flex"><a href="javascript:void(0);" class="flex_box" id="notice-cancel">取消</a><a href="javascript:void(0);" class="flex_box" id="notice-sure">确定</a></div>
        </div>
    </div>
    <script type="text/template" id="Script1">
        <div class="mod_select select_block flex_box">
            <select id="Select1" evttag="{#evtTag#}">{#optList#}</select>
        </div>
    </script>
    <script type="text/template" id="Script2">
        <li index="{#index#}">{#name#} <span class="mod_color_weak">{#mobile#}</span>{#selected#}<div class="address">{#address#}</div>
        </li>
    </script>
    <script type="text/template" id="Script3">
        <div class="qb_tar qb_mb10">货到付款优惠（减免零头）：<strong class="mod_color_strong qb_fs_s">&yen;{#free#}</strong></div>
        <div class="qb_tar">包裹小计：<strong class="mod_color_strong">&yen;{#pkgTotal#}</strong></div>
    </script>
    
<div class="lay_footer qb_tac qb_fs_s mod_mb15">
    <div class="fn_quicklinks">
        <a class="mod_color_weak" href="http://1071.vshop.weimob.com/?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2">商户首页</a>
        <span class="mod_color_comment">|</span>
        <a class="mod_color_weak" href="http://1071.vshop.weimob.com/my/index.html?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2">会员中心</a>
        <span class="mod_color_comment">|</span>
        <a class="mod_color_weak" href="http://1071.vshop.weimob.com/cmd/about.html?wechatid=osXr8jhAFMm6V2YtUjM7XS3egeGs&amp;v=cde824e3a9acce3182a90ecaf4e6f0b2">品牌介绍</a>
    </div>
    <div class="fn_copyright qb_bfc">
        <div class="mod_color_comment bfc_c">©&nbsp;2013 微盟版权所有</div>
    </div>
</div>
<script type="text/javascript" src="ChatFloat.js"></script>
<script>
    new ChatFloat({
        AId:1071,
        right:0,
        top:150,
        openid:"osXr8jhAFMm6V2YtUjM7XS3egeGs"
    });
</script><a style="position: fixed; right: 0px; top: 150px; z-index: 99999; height: 70px; width: 65px; min-width: 65px; background: url(&quot;http://kf.weimob.com/images/MobileChatFloat.png&quot;) no-repeat scroll 0px 0px / 65px auto transparent;" id="CustomerChatFloat" href="http://kf.weimob.com/MobileTalking.aspx?aid=1071&amp;openid=osXr8jhAFMm6V2YtUjM7XS3egeGs"></a>
    <script type="text/template" id="promote-tpl">
        <div class="mod_select select_block flex_box">
            <select id="{#id#}" evttag="{#evtTag#}">{#optList#}</select>
        </div>
    </script>
    <script type="text/template" id="addr-tpl">
        <li index="{#index#}">{#name#} <span class="mod_color_weak">{#mobile#}</span>{#selected#}<div class="address">{#address#}</div>
        </li>
    </script>
    <script type="text/template" id="free-tpl">
        <div class="qb_tar qb_mb10">货到付款优惠（减免零头）：<strong class="mod_color_strong qb_fs_s">&yen;{#free#}</strong></div>
        <div class="qb_tar">包裹小计：<strong class="mod_color_strong">&yen;{#pkgTotal#}</strong></div>
    </script>
    <script type="text/javascript"> 
        var shareData = {"send2Friend":{"content":"关注我吧！更多会员特权等着你！","img":"http://1071.vshop.weimob.com/statics/images/share_logo.jpg","link":"http://1071.vshop.weimob.com","title":"推荐给你看看，关注即可成为会员享受特权"},"share2Friend":{"img":"http://1071.vshop.weimob.com/statics/images/share_logo.jpg","link":"http://1071.vshop.weimob.com","title":"推荐给你看看，关注即可成为会员享受特权"},"share2qqBlog":{"content":"关注我吧！更多会员特权等着你！","link":"http://1071.vshop.weimob.com"}};
        !function () { function c() { var a = WeixinJSBridge; a.on("menu:share:appmessage", e), a.on("menu:share:weibo", f), a.on("menu:share:timeline", g), a.invoke("getNetworkType", {}, d) } function d(a) { var b, c; switch (a.err_msg) { case "network_type:wwan": b = 2e3; break; case "network_type:edge": b = 3e3; break; case "network_type:wifi": b = 4e3 } c = new Image, c.onerror = c.onload = function () { c = null } } function e() { var a = window.shareData.send2Friend, b = h(a); a.content = b ? b.content : a.content, a.img = b && b.img ? b.img : a.img, WeixinJSBridge.invoke("sendAppMessage", { img_url: a.img, img_width: "640", img_height: "640", link: a.link, desc: a.content, title: a.title }, function () { }) } function f() { var b = window.shareData.share2qqBlog; WeixinJSBridge.invoke("shareWeibo", { content: a.isios ? b.content + b.link : b.content, url: b.link }, function () { }) } function g() { var a = window.shareData.share2Friend,b = h(a); a.img = b && b.img ? b.img : a.img, WeixinJSBridge.invoke("shareTimeline", { img_url: a.img, img_width: "640", img_height: "640", link: a.link, desc: " ", title: a.title }, function () { }) } function h() { return "function" == typeof b ? b() : "" } var b, a = function () { var a = window.navigator.userAgent; return this.isAndroid = a.match(/(Android)\s+([\d.]+)/) || a.match(/Silk-Accelerated/) ? !0 : !1, this.isiPad = a.match(/iPad/) ? !0 : !1, this.isiPod = a.match(/(iPod).*OS\s([\d_]+)/) ? !0 : !1, this.isiPhone = !this.isiPad && a.match(/(iPhone\sOS)\s([\d_]+)/) ? !0 : !1, this.isios = this.isiPhone || this.isiPad || this.isiPod, this }(); window.shareData && document.addEventListener("WeixinJSBridgeReady", c, !1), window.setShareListener = function (a) { b = a } }();
    </script>
    <script src="zepto.js"></script>
    <script type="text/javascript">
        var pageParam, promoteIndex, subParam;
        pageParam = { 
            "adid": "305684",//地址编号
            "cart":0, //购物车编号
            "totalPrice": "0",//总价
            "totalCount": "1",//总数
            "payType": "0",
            "minipay": "true",
            "promotion": [ 
            ],
            "coupon": [

            ],
            "isVip":"True",
            "bonus_points":"10",
            "ship_address":"看见了吗",
            
            "ship_area_store":document.getElementById("cityName305684").innerHTML+"看见了吗",
            
            "ship_mobile":"15632265589",
            "ship_name":"咯恩"
        };
        subParam = ;
        mobile.o2ocn.cmdyDeal.init();

        var bonus_points = 10;
    </script>


</body></html>