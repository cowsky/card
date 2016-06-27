<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>
    ${weixinShopContent.goods.title}商品详情
    </title><script type="text/javascript"></script>
    <script type="text/javascript" src="template/shop/default/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="template/shop/default/js/yyucadapter.js"></script>
    <script src="template/shop/default/js/jquery.lazyload.js" type="text/javascript"></script>
    <script src="template/shop/default/js/notification.js" type="text/javascript"></script>
    <script src="template/shop/default/js/swiper.min.js" type="text/javascript"></script>
    <script src="template/shop/default/js/main.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="template/shop/default/css/style_touch.css">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="x-dns-prefetch-control" content="on">
    <link rel="stylesheet" href="template/shop/default/css/c3.css">
    <script type="text/javascript" src="template/shop/default/js/swipe.js"></script>
    <script>
    	
		$(function(){			
			new Swipe(document.getElementById('slideWrapper'), {
				speed:500,
				auto:3000,
				callback: function(index, elem){
					var lis = $('#bannerTab').children();
					lis.removeClass("cur").eq(index).addClass("cur");
				}
			});
			
		});
		var jjgg = [{"goods_no":"mh","spec_array":null,"store_nums":9999,"market_price":"${weixinShopContent.goods.price}","sell_price":"${weixinShopContent.goods.realPrice}","cost_price":"${weixinShopContent.goods.realPrice}","weight":"0"}];
		
		
		function seljsjg(o){
			localStorage.lastbuy = null;
			localStorage.lastbuynum = null;
			var ttgg = jjgg;
			if(o===1){
				var bnum = parseInt($('#buyNum').val());
				$('#buyNum').val(bnum+1);
			}else if(o===-1){
				var bnum = parseInt($('#buyNum').val());
				if(bnum>1){
					$('#buyNum').val(bnum-1);
				}
				
			}else if(o){
					$(o).parent().find('.option').removeClass('option_selected');
					$(o).addClass('option_selected');
			}
			var bnum = parseInt($('#buyNum').val());
			//价格计算
			var canjs = true;
			$('.skuuiidd').each(function(){
				var tttggg = [];
				var sel = $(this).find('.option_selected');
				if(sel.size()!=1){
					canjs = false;
					return; 
				}
				var tval = $.trim(sel.text());
				var xmval = $(this).attr('rel')+'_'+tval;
				for(var i=0;i<ttgg.length;i++){
					var opp = ttgg[i];
					var oop = opp.spec_array;
					for(var j=0;j<oop.length;j++){
						if(xmval==oop[j]){
							tttggg[tttggg.length] = ttgg[i];
						}
					}
				}
				ttgg = tttggg;
			});
			if(!canjs){
				return canjs;
			}
			localStorage.lastbuynum = bnum;
			//填写价格
			window.buygid = '0';
			if(ttgg.length ==1){
				var teres = ttgg[0];
				$('.price').text('¥'+(parseFloat(teres.sell_price.replace(/[^\d\.-]/g, ""))*bnum));
				$('.old_price').text('¥'+(parseFloat(teres.market_price.replace(/[^\d\.-]/g, ""))*bnum));
				localStorage.lastbuy = $.toJSON(teres);
				return teres;			
			}else{
				return true;
			}
			
		}
		
		function tobuy(){
			var res = seljsjg();
			var gid = '0';
			if(res){
				if(res===true){
					gid = '0';
				}else{
					gid = res.goods_no;
				}
				var goodsdata = [];
				var goodsId = $("#goodsId").val();
				var buyNum = $("#buyNum").val();
				var xmtyp = {};
	            xmtyp.goodsId = goodsId;
	            xmtyp.num = buyNum;
	            goodsdata[0]=xmtyp;
	            var params = JSON.stringify(goodsdata);
	            //alert(params);
				location.href="weixinShopDealController.do?weixinShopDeal&shopSymbol=shop&params="+params;
			}else{
				tusi('请选择商品规格');
			}
		}
		function togwc(){
			var res = seljsjg();
			var gid = '0';
			if(res){
				if(res===true){
					gid = '0';
				}else{
					gid = res.goods_no;
				}
				var buyNum = $("#buyNum").val();
				var goodsId = $("#goodsId").val();
				//alert(goodsId+"   "+buyNum)
				location.href="weixinShopCartController.do?save&shopSymbol=shop&buyNum="+buyNum+"&goodsId="+goodsId;
			}else{
				tusi('请选择商品规格');
			}
		}
	</script>
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
  
<div class="mod_slider" id="slideList">
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
        <div class="inner" id="slideWrapper" style="visibility: visible; ">
          <ul class="pic_list" id="bannerImg" style="width: 1920px; ">
            <li style=" max-height:400px; overflow: hidden; width: 640px; left: 0px; -webkit-transition: 500ms; -webkit-transform: translate(0px, 0px) translateZ(0px); " data-index="0">
              <a href="javascript:;">
                <img src="${weixinShopContent.goods.titleImg}" style="width:100%;">
              </a>
            </li>
         </ul>
        </div>
        <div class="bar_wrap">
          <ul class="bar" id="bannerTab">
                      <li id="1" no="1" class="cur">
            </li>
      
                    </ul>
        </div>
      </div>

<div class="buy_area">
	<div id="testtt" style="display: none"></div>
	<input type="hidden" name="goodsId" id="goodsId" value="${weixinShopContent.goods.id}"/>
    <div class="fn_wrap"><h1 class="fn" id="itemName">${weixinShopContent.goods.title} </h1></div>

    <div class="price_wrap">
        <span class="tit" id="priceTitle">商城价：</span>
        <span class="price" id="priceSale" price="¥${weixinShopContent.goods.realPrice}">¥${weixinShopContent.goods.realPrice}</span>
        <del class="old_price"><em id="priceMarket" style="">¥${weixinShopContent.goods.price}</em></del>
        <span class="flag" id="priceDis" style="display: none"></span>
    </div>
    
	<div class="old_price_wrap">
        
        <span>销量：<b id="saleNo">${weixinShopContent.goods.sellCount}</b>件</span>
        <a id="addrArea" href="javascript:;"> 快递：<b id="addrName">${weixinShopContent.goods.expressName}</b><i class="icon_edit"></i></a>
        <span id="postPrice">邮费：${weixinShopContent.goods.expressPrice}</span>
    </div>
	<div class="buy_tip" id="statusNotice" style="display: none;">
        <i class="icon_warn"></i>
        <span id="statusNote"></span>
    </div>
    <div class="sku_container sku_container_on" id="skuCont">
	    <div class="sku_wrap">            
	    	<div id="propertyDiv">
	    	</div>
	    		<div class="sku sku_num">
	            <h3>数量</h3>
	            <div class="num_wrap">
	                <span class="minus minus_disabled" id="minus" onclick="seljsjg(-1);"></span>
	                <input class="num" id="buyNum" onchange="seljsjg(this.value)" type="tel" value="1">
	                <span class="plus" id="plus" onclick="seljsjg(1);"></span>
	            </div>
	        </div>
	    </div>
	</div>
    
    <div class="sku_tip" id="skuNotice" style="display:none">
	    <span id="skuTitle2"></span>
	</div>
    
    <div class="btn_wrap btn_wrap_static btn_wrap_nocart">
        <a class="btn btn_cart" id="addCart" href="javascript:;" style="display:table-cell; width: 46%;" onclick="togwc()"><i></i></a>
        <a class="btn btn_buy" id="buyBtn1" href="javascript:;" style="display:table-cell; width: 46%;" onclick="tobuy()">立即购买</a>
    </div>
    
    <div class="jd_service" id="shopInfo">${weixinShopContent.goods.title}。</div>
</div>

<div id="detailBaseLine" class="mod_tab_gap"></div>
<div class="mod_tab_wrap">
	<div class="mod_tab" id="detailTab">
	    <span class="cur" no="1" onclick="selhammer(this,0)">商品介绍</span>
	</div>
</div>
<script>
function selhammer(o,ind){
	$('#detailTab').children('span').removeClass('cur');
	$(o).addClass('cur');	
	$('#detailCont')[0].style['webkitTransform'] = 'translate('+(0-$(window).width()*ind)+'px,0px) translateZ(0)';
}
</script>
<div class="detail_info_wrap" id="detail" style="height: auto;">
    <div class="detail_list" id="detailCont" style="-webkit-transform: translate(0px, 0px) translateZ(0px); -webkit-transition: 300ms; ">
        <!-- 商品介绍 -->
        <div class="detail_item p_desc" id="detail1" style="position:relative;">
        	<div id="commDesc" class="detail_pc">
        	    	${weixinShopContent.goods.descriptions}</div>
        </div>
        </div>
    </div>
</div>

<div class="btn_wrap btn_wrap_nocart btn_wrap_fixed layer_show" id="buyAreaBtm" style="display: none; ">
    <a class="btn_back" href="javascript:history.go(-1)"><i>返回</i></a>
    <div class="btn_col">
        <a class="btn btn_cart" id="addCart2" href="javascript:;" style="display: none"><i></i></a>
        <a class="btn btn_buy" href="javascript:;" onclick="tobuy()" id="buyBtn2">立即购买</a>
    </div>
    <span class="avatar_wrap" id="quckIco1" style="display: none">
        <span class="avatar avatar_my"></span>
        <a href="http://mm.wanggou.com/my/index.shtml?backurl=" id="persLink"></a>
    </span>
</div>
<script type="text/javascript">
$(function(){
	$(window).scroll(function(){
		if($(window).scrollTop()>170){
			$('#buyAreaBtm').show();
		}else{
			$('#buyAreaBtm').hide();
		}
		
	});
});
</script>
<div class="mod_slider_mask" id="blackCover" style="display:none"></div>

<div class="image_viewer" id="imageViewer" style="display:none">
    <div class="inner">
        <img id="fullImg">
    </div>
</div>
<div class="mfooter" id="wxgjfooter" style="text-align: center;width: 100%;height: 20px;line-height: 20px;margin-top:10px;">
<span class="sp2"><a href="http://www.jeecg.org/" style="color: #5e5e5e;font-size: 12px;"> 技术支持：微信管家</a></span>
</div>
<script>
/**
$(function(){
	if($('body').height()<$(window).height()){
		$('body').height($(window).height());
		$('#wxgjfooter').css('position','fixed').css('bottom','0px');
	}
});
**/
</script>

  

</body></html>