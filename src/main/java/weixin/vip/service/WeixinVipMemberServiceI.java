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
	 * ���ӻ���ٻ��� ���ּ���ʱ�����ݸ�������  ����FALSE������ʧ��
	 * @param userid
	 * @param accountid
	 * @param integral
	 * @return
	 */
	public Boolean updateMemberIntegral(String userid,String accountid,Integer integral);
	/**
	 * ����ҵ������û�ʹ�û��֡�
	 * @param openid openid
	 * @param userid �û�id
	 * @param accountid �̼�id
	 * @param integral ����
	 * @param integralType ��������
	 * @param detailtype �������� ���orʹ��
	 * @param remark ��ע ����������
	 * @return
	 */
	public Boolean updateMemberIntegral(String openid,String userid,String accountid,int integral,WeixinVipIntegralType integralType,String detailtype,String remark);
	
	/**
	 * ��Ա��¼��ѯ�Ƿ��д��û�
	 * @param member
	 * @return
	 */
	public WeixinVipMemberEntity checkMemberExits(WeixinVipMemberEntity member);
	
	/**
	 * ����¼�û��Ƿ�Ψһ
	 * @param member
	 * @return
	 */
	public WeixinVipMemberEntity checkMemberUnique(String memberName);
	
	/**
	 * ��֤��ǰ�û��Ƿ��ȡ�˻�Ա����
	 * @param accountid �̼�ID
	 * @param openid ΢��openid
	 * @param userid session���е�userid
	 * @return
	 */
	public WeixinVipMemberEntity checkMemberGetOrNot(String accountid,String openid,String userid);

	/**
	 * ��ȡ��������
	 * @param memberid ��ԱID
	 * @param detailtype �������� ֧��or���
	 * @return
	 */
	public List<WeixinVipMemberIntegralEntity> getIntegeraDetail(String memberid,String detailtype);
	/**
	 * ͨ���������ƣ���ȡ���ֹ���
	 * @param accountid
	 * @param typename
	 * @return
	 */
	public WeixinVipIntegralType getIntegraltype(String accountid,String typename);
	
	
	
	public List<WeixinVipMemberEntity> getAllDateEndVipInfo(String dateTime);
	
	/**
	 * ���ݻ�Աid��ѯ��Ա�����ܺ�
	 * @param memberId
	 * @return
	 */
	public Long getAllScore(String memberId);

}
