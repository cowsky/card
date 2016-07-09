package weixin.vip.service;

import org.jeecgframework.core.common.service.CommonService;
import org.jeecgframework.web.system.pojo.base.TSUser;

import weixin.shop.base.entity.WeixinShopIntegralGoodsEntity;
import weixin.vip.entity.WeixinVipExchangeRecordEntity;
import weixin.vip.entity.WeixinVipInfoEntity;

public interface WeixinVipExchangeRecordServiceI extends CommonService{
	public WeixinVipExchangeRecordEntity save(WeixinVipExchangeRecordEntity entity,WeixinShopIntegralGoodsEntity goods);
}
