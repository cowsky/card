package weixin.vip.service;

import java.util.List;

import org.jeecgframework.core.common.service.CommonService;
import org.jeecgframework.web.system.pojo.base.TSUser;

import weixin.vip.entity.WeixinVipInfoEntity;
import weixin.vip.entity.WeixinVipIntegralType;
import weixin.vip.entity.WeixinVipMemberEntity;
import weixin.vip.entity.WeixinVipMemberIntegralEntity;

public interface WeixinVipMemberServiceI extends CommonService{
	
	public void saveMemberByVip(TSUser user);
	
	/**
	 * 增加或减少积分 积分减少时，传递负数即可  返回FALSE即操作失败
	 * @param userid
	 * @param accountid
	 * @param integral
	 * @return
	 */
	public Boolean updateMemberIntegral(String userid,String accountid,Integer integral);
	/**
	 * 积分业务处理，获得或使用积分。
	 * @param openid openid
	 * @param userid 用户id
	 * @param accountid 商家id
	 * @param integral 积分
	 * @param integralType 积分类型
	 * @param detailtype 详情类型 获得or使用
	 * @param remark 备注 ，积分描述
	 * @return
	 */
	public Boolean updateMemberIntegral(String openid,String userid,String accountid,int integral,WeixinVipIntegralType integralType,String detailtype,String remark);
	
	/**
	 * 会员登录查询是否有此用户
	 * @param member
	 * @return
	 */
	public WeixinVipMemberEntity checkMemberExits(WeixinVipMemberEntity member);
	
	/**
	 * 检测登录用户是否唯一
	 * @param member
	 * @return
	 */
	public WeixinVipMemberEntity checkMemberUnique(String memberName);
	
	/**
	 * 验证当前用户是否获取了会员卡。
	 * @param accountid 商家ID
	 * @param openid 微信openid
	 * @param userid session个中的userid
	 * @return
	 */
	public WeixinVipMemberEntity checkMemberGetOrNot(String accountid,String openid,String userid);

	/**
	 * 获取积分详情
	 * @param memberid 会员ID
	 * @param detailtype 详情类型 支出or获得
	 * @return
	 */
	public List<WeixinVipMemberIntegralEntity> getIntegeraDetail(String memberid,String detailtype);
	/**
	 * 通过规则名称，获取积分规则
	 * @param accountid
	 * @param typename
	 * @return
	 */
	public WeixinVipIntegralType getIntegraltype(String accountid,String typename);
	
	
	
	public List<WeixinVipMemberEntity> getAllDateEndVipInfo(String dateTime);
	
	/**
	 * 根据会员id查询会员积分总和
	 * @param memberId
	 * @return
	 */
	public Long getAllScore(String memberId);

}
