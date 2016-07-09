package weixin.vip.service.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import weixin.util.WeiXinConstants;
import weixin.vip.common.WeixinVipConstants;
import weixin.vip.entity.WeixinVipInfoEntity;
import weixin.vip.entity.WeixinVipIntegralType;
import weixin.vip.entity.WeixinVipMemberEntity;
import weixin.vip.entity.WeixinVipMemberIntegralEntity;
import weixin.vip.service.WeixinVipInfoServiceI;
import weixin.vip.service.WeixinVipMemberServiceI;

@Service("weixinVipMemberService")
@Transactional
public class WeixinVipMemberServiceImpl extends CommonServiceImpl implements WeixinVipMemberServiceI {
	
	@Autowired
	private WeixinVipInfoServiceI weixinVipInfoService;
	
	@Override
	public void saveMemberByVip(TSUser user) {
		WeixinVipMemberEntity member = new WeixinVipMemberEntity();
		WeixinVipInfoEntity vipinfo = weixinVipInfoService.get(WeixinVipInfoEntity.class, WeixinVipConstants.DEFAULT_VIP_ID);
		member.setTsuer(user);
		member.setVipInfo(vipinfo);
		member.setCreateTime(new Date());
		member.setMemberName(user.getUserName());
		super.save(member);
	}
	
	public Boolean updateMemberIntegral(String userid,String accountid,Integer integral){
		Boolean flag = false;
		try {
			//第一步,获取当前商家创建的会员卡，理论上商家必须创建会员卡。这样才能与用户之间建立联系,否则不能购买
			List<WeixinVipInfoEntity> list =  weixinVipInfoService.
					findByQueryString("from WeixinVipInfoEntity vipinfo where vipinfo.accountid='"+accountid+"' order by vipinfo.levelId asc");
			String ids="";
			for(WeixinVipInfoEntity v : list){
				ids=ids+"'"+v.getId()+"',";
			}
			ids= ids.substring(0,ids.length()-1);
			//第二步获取当前当前用户在当前商家的会员卡信息（比如预存款，积分。等等）
			List<WeixinVipMemberEntity> memberlist = this.
					findByQueryString("from WeixinVipMemberEntity m where m.vipInfo in ("+ids+") and m.tsuer = '"+userid+"'");
			if(memberlist != null && memberlist.size()>0){
				WeixinVipMemberEntity membervip = memberlist.get(0);
				//如果传递参数积分大于0,则是增加积分操作.反之为扣积分操作
				if(integral>0){
					membervip.setMemberIntegral(membervip.getMemberIntegral()+integral);
				}else{
					if(!((membervip.getMemberIntegral()+integral)<0)){
						membervip.setMemberIntegral(membervip.getMemberIntegral()+integral);
					}
				}
				this.saveOrUpdate(membervip);
				flag= true;
			}
		} catch (Exception e) {
			flag = false;
		}
		return flag;
	}

	/**
	 * 会员登录查询是否有此用户
	 */
	@Override
	public WeixinVipMemberEntity checkMemberExits(WeixinVipMemberEntity member) {
		String query = "from WeixinVipMemberEntity u where u.memberName = :memberName and u.password=:passowrd";
		Query queryObject = getSession().createQuery(query);
		queryObject.setParameter("memberName", member.getMemberName());
		queryObject.setParameter("passowrd", member.getPassword());
		List<WeixinVipMemberEntity> members = queryObject.list();
		if (members != null && members.size() > 0) {
			return members.get(0);
		}
		return null;
	}
	
	@Override
	public Boolean updateMemberIntegral(String openid,String userid, String accountid,
			int integral, WeixinVipIntegralType integralType,String detailtype,String remark) {
		// TODO Auto-generated method stub
		WeixinVipMemberEntity member = checkMemberGetOrNot(accountid, openid, userid);
		if(member!=null){
			//如果是获得积分
			if(WeiXinConstants.INTEGRAL_DETAILTYPE_GET.equals(detailtype)){
				//更新积分
				member.setMemberIntegral(member.getMemberIntegral().intValue()+integral);
			}
			//如果是使用积分
			if(WeiXinConstants.INTEGRAL_DETAILTYPE_USE.equals(detailtype)){
				//更新积分
				member.setMemberIntegral(member.getMemberIntegral().intValue()-integral);
			}
			//保存积分详情
			WeixinVipMemberIntegralEntity integraldetail = new WeixinVipMemberIntegralEntity();
			integraldetail.setCreateTime(new Date());
			integraldetail.setDetailtype(detailtype);
			integraldetail.setIntegral(integral+"");
			integraldetail.setRemark(remark);
			integraldetail.setMember(member);
			integraldetail.setIntegralType(integralType);
			integraldetail.setAccountid(accountid);
			this.save(integraldetail);
			this.updateEntitie(member);
			return true;
		}
		return false;
	}
	
	@Override
	public WeixinVipMemberEntity checkMemberGetOrNot(String accountid,
			String openid, String userid) {
		// TODO Auto-generated method stub
		CriteriaQuery cq = new CriteriaQuery(WeixinVipMemberEntity.class);
		//查询条件组装器
		try{
			cq.eq("accountid", accountid);
			if(!StringUtil.isEmpty(userid)){
				cq.eq("tsuer.id", userid);
			}else{
				cq.eq("openid", openid);
			}
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		List<WeixinVipMemberEntity> memberlist = this.getListByCriteriaQuery(cq, false);
		if(memberlist.size()!=0){
			return memberlist.get(0);
		}else{
			return null;
		}
	}
	
	@Override
	public List<WeixinVipMemberIntegralEntity> getIntegeraDetail(String memberid,String detailtype) {
		String hql = " FROM WeixinVipMemberIntegralEntity mi WHERE mi.member.id ='"+memberid+"' ";
		if(!StringUtil.isEmpty(detailtype)){
			hql += " AND  mi.detailtype = '"+detailtype+"'";
		}
		return this.findByQueryString(hql);
	}
	
	@Override
	public WeixinVipIntegralType getIntegraltype(String accountid,
			String typename) {
		// TODO Auto-generated method stub
		String hql = " FROM WeixinVipIntegralType it WHERE it.accountid ='"+accountid+"' AND integral_type ='"+typename+"'";
		List<WeixinVipIntegralType> typelist = this.findByQueryString(hql);
		if(typelist.size()!=0)
		{
			return typelist.get(0);
		}else{
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public WeixinVipMemberEntity checkMemberUnique(String memberName) {
		String query = "from WeixinVipMemberEntity u where u.memberName = :memberName";
		Query queryObject = getSession().createQuery(query);
		queryObject.setParameter("memberName", memberName);
		List<WeixinVipMemberEntity> members = queryObject.list();
		if (members != null && members.size() > 0) {
			return members.get(0);
		}
		return null;
	}

	@Override
	public List<WeixinVipMemberEntity> getAllDateEndVipInfo(
			String dateTime) {
		String hql = "from WeixinVipMemberEntity u where u.effectiveDate ='"+dateTime+"' and u.memberStatus!='待续约'";
		
		List<WeixinVipMemberEntity> listMember = this.findByQueryString(hql);
		return listMember;
	}
	
	/**
	 * 根据会员id查询会员积分总和
	 * @param memberId
	 * @return
	 */
	@Override
	public Long getAllScore(String memberId){
		String sql = "SELECT sum(INTEGRAL) AS totalScore FROM weixin_vip_integral WHERE member_id = ?";
		return this.getCountForJdbcParam(sql, new String[]{memberId});
	}
}