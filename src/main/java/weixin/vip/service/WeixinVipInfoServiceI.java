package weixin.vip.service;

import org.jeecgframework.core.common.service.CommonService;
import org.jeecgframework.web.system.pojo.base.TSUser;

import weixin.vip.entity.WeixinVipInfoEntity;

public interface WeixinVipInfoServiceI extends CommonService{
	
	public WeixinVipInfoEntity getDefaultVipCard(String accountid);

}
