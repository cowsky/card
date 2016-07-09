<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 

<html>
<head>
<title>wxCloud - /src/weixin/vip/entity/WeixinVipMemberEntity.java - Taocode</title> 

	<link rel="stylesheet" href="/css/code-min.css?ver=2" />


<link rel="stylesheet" href="http://a.tbcdn.cn/p/global/1.0/global-min.css" />



<script src="http://a.tbcdn.cn/??s/kissy/1.3.0/kissy-min.js,p/global/1.0/global-min.js"></script>
	<script type="text/javascript" src="/js/jquery-1.5.min.js"></script>
	<script type="text/javascript" src="/js/utils.js"></script>
	<script type="text/javascript" src="/js/ajaxcall.js"></script>
	
	<script type="text/javascript">
     
      $(document).ready(function() {
      init_csrf();
      
      
      
      
      
      start_auth_call();
      
      });
       
      KISSY.config({
        packages:[
            {
                name:"js",
                tag:"20130306",
                path:"/"
            }
        ]
   	  });
   	 
     KISSY.use('js/app/login/login');
      
      
    </script>
    
    
    
    

<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.2/styles/zenburn.min.css">
<script src="http://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.2/highlight.min.js"></script>
</style>
 






</head>
<body>
	
	<div class="d-m-nav">
		<div class="d-m-nav-top layout">
		
		<a class="d-m-nav-logo" href="/my/">Taocode</a>
		
		<a class="d-m-nav-crp" href="https://code.aliyun.com/?from_taocode">Aliyun Code</a>

			<ul class="d-m-main-nav">
                          <li><a href="/project/explore" >项目</a></li>
                          <!--<li><a href="/p/taobaocode/wiki/" target="_blank">帮助</a></li>-->
			  <li><a href="http://click.aliyun.com/m/4282/" target="_blank">买服务器</a>
 </li>
                        </ul>

			<div class="d-m-search">



<form id="search" action="/search/" method="POST">
	
	<input id="type" name="type" type="hidden" value="project" />
	<input id="q" name="q" type="text" value="" placeholder='请输入搜索内容' class="search-text" ></input>
	
	   		  <span class="d-m-search-type">
                   <ul class="d-m-search-type-list">
                   			<li data-type="project" ><a href="javascript:void(0);">项目</a></li>
	                   		<li data-type="user" ><a href="javascript:void(0);">用户</a></li>
	                   			
	                   		<li data-type="language" ><a href="javascript:void(0);">语言</a></li>
                   </ul>
              </span>
              	
	
    <a id="btn-search" href="javascript:search.submit()" class="search-btn">搜索</a><b></b>

<div style='display:none'><input type='hidden' name='csrfmiddlewaretoken' value='7f14d9ff835fc99fdb8553f00b7167dd' /></div>

			  <span class="d-m-main-logined">Hi,<a href="/my">winnerong</a>
			  站内信<a href="/msg/" id='msg_count'>(0)</a>
			  </span>
              <!--   <a href="/p/taobaocode/wiki/SiteHelp/">帮助</a>	 -->
              <a href="/logout/">退出</a>




</form>

			</div>
		</div>


</div>

	
	
	<div class="d-g-wrapper d-p-code">
		<div class="d-p-project-top">
			<h2 class="d-p-project-name">
				    
				    <a href="/project/explore">首页</a><span>&nbsp;&nbsp;>&nbsp;&nbsp;</span> <a href="/u/gemway/mypro/">gemway</a> / wxCloud</h2>
			   		<span class="d-p-project-lang">项目语言:None</span>
				    

			  </h2>
			  
	 
	
	 
	
<ul class="layout d-p-project-tabs">
	  
	  
	  <li class="d-p-project-tab">
	    <a href="/p/wxCloud/src/" class="current">源码</a>
	  </li>
	  
	  
	  
	  <li class="d-p-project-tab">
	    <a href="/p/wxCloud/issues/">issues</a>
	  </li>
	  
	  
	  
	  <li class="d-p-project-tab">
	    <a href="/p/wxCloud/wiki/">文档</a>
	  </li>
	  
	  
</ul>










	
	
	
	
	
	 
	
	
<div class="d-p-project-content">
   <div class="d-p-project-svn">
     <span class="d-p-project-svnurl">
       <input type="text" readonly spellcheck="false"  value=http://code.taobao.org/svn/wxCloud/>
     </span>
     <span class="d-p-project-power">
                
              	<b> 权限:read-only(如需更高权限请先加入项目)</b>
                
                
		  
		
      </span>
  </div> 	
<h2 class="d-p-project-root">wxCloud/
  
     <a href="/p/wxCloud/src/src/">src</a>
      <span>/</span>
   
     <a href="/p/wxCloud/src/src/weixin/">weixin</a>
      <span>/</span>
   
     <a href="/p/wxCloud/src/src/weixin/vip/">vip</a>
      <span>/</span>
   
     <a href="/p/wxCloud/src/src/weixin/vip/entity/">entity</a>
      <span>/</span>
       
</h2>

<div>
    <a href="/p/wxCloud/logs/src/weixin/vip/entity/WeixinVipMemberEntity.java"> 历史</a>
    |
    <a href="/p/wxCloud/log/2/src/weixin/vip/entity/WeixinVipMemberEntity.java">r2</a>
    |
    <em>2016-03-03 15:28:54</em>
    |
    <a href="/p/wxCloud/src/src/weixin/vip/entity/WeixinVipMemberEntity.java?orig"> 下载</a>
</div>
  <p>
    
    <pre><code class="java">package weixin.vip.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import org.jeecgframework.web.system.pojo.base.TSUser;

/**   
 * @Title: Entity
 * @Description: 微信会员卡和用户关系表
 * @author XiaoFeng
 * @date 2014-08-03 07:28:41
 * @version V1.0   
 *
 */
@Entity
@Table(name = &quot;weixin_vip_member&quot;, schema = &quot;&quot;)
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings(&quot;serial&quot;)
public class WeixinVipMemberEntity implements java.io.Serializable {
	/**id*/
	private java.lang.String id;
	/**memberName*/
	private java.lang.String memberName;
	/**memberBalance*/
	private BigDecimal memberBalance;
	/**memberIntegral*/
	private java.lang.Integer memberIntegral;
	/**createTime*/
	private java.util.Date createTime;
	/**vipId*/
	private WeixinVipInfoEntity vipInfo;
	/**memberId*/
	private TSUser tsuer;
	
	
	//会员姓名
	private String memberRealName;
	//会员密码
	private String password;
	//会员类型{申请中、活跃、待续约、资格取消}
	private WeixinVipMembersType memberType;
	//组织类型
	private String memberOrg;
	//组织类型信息
	private String memberOrgInfo;
	//会员状态
	private String memberStatus;
	//会员性别
	private String memberSex;
	//会员生日
	private java.util.Date memberBrith;
	//国籍
	private String memberNational;
	//所属机构/院校
	private String memberInstitution;
	//职业/专业
	private String memberProfessional;
	//教育程度/资历
	private String memberEducation ;
	//会员手机
	private String memberMobile;
	//会员电话
	private String memberphone;
	//会员传真
	private String memberFax;
	//会员邮件
	private String memberEmail;
	//会员地址
	private String memberAddress;
	//会员身份证号
	private String memberIdent;
	//调研信息
	private String memberResearchInfo;
	//接收展讯方式
	private String memberReceiveType;
	//会员邮寄地址
	private String memberMailAddress;
	//介绍会员
	private String memberIntroduce;
	
	//调研信息—公众媒体详细
	private String memResGzmtDetail;
	//调研信息—朋友介绍详细
	private String memResPyjsDetail;
	//调研信息—其它详细
	private String memResOtherDetail;
	
	//审核状态：0非会员默认状态  1审核通过 2审核不通过  3临时会员
	private String verifyStatus ;
	//有效日期
	private java.util.Date effectiveDate ;
	//办理日期
	private java.util.Date dealDate ;
	//审核备注
	private String memberRemarks; 
	//会员卡号
	private String memberVipCode;
	//办理人
	private TSUser operator ;
	
	
	//会员省份
	private String memberVipProvince;
	//会员城市
	private String memberVipCity;
	//会员类型（文本）
	private String memberVipType;
	//会员头像
	private String memberPhoto;
	//会员简介
	private String remark;
	//微信ID
	private String openid;
	//商家ID
	private String accountid;
	
	
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  id
	 */
	
	@Id
	@GeneratedValue(generator = &quot;paymentableGenerator&quot;)
	@GenericGenerator(name = &quot;paymentableGenerator&quot;, strategy = &quot;uuid&quot;)
	@Column(name =&quot;ID&quot;,nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  id
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  memberName
	 */
	@Column(name =&quot;MEMBER_NAME&quot;,nullable=true,length=100)
	public java.lang.String getMemberName(){
		return this.memberName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  memberName
	 */
	public void setMemberName(java.lang.String memberName){
		this.memberName = memberName;
	}
	/**
	 *方法: 取得BigDecimal
	 *@return: BigDecimal  memberBalance
	 */
	@Column(name =&quot;MEMBER_BALANCE&quot;,nullable=true,precision=9,scale=2)
	public BigDecimal getMemberBalance(){
		return this.memberBalance;
	}

	/**
	 *方法: 设置BigDecimal
	 *@param: BigDecimal  memberBalance
	 */
	public void setMemberBalance(BigDecimal memberBalance){
		this.memberBalance = memberBalance;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  memberIntegral
	 */
	@Column(name =&quot;MEMBER_INTEGRAL&quot;,nullable=true,precision=10,scale=0)
	public java.lang.Integer getMemberIntegral(){
		return this.memberIntegral;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  memberIntegral
	 */
	public void setMemberIntegral(java.lang.Integer memberIntegral){
		this.memberIntegral = memberIntegral;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  createTime
	 */
	@Column(name =&quot;CREATE_TIME&quot;,nullable=false)
	public java.util.Date getCreateTime(){
		return this.createTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  createTime
	 */
	public void setCreateTime(java.util.Date createTime){
		this.createTime = createTime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  vipId
	 */
    //update--start---author:zhangguoming---------date:2014-10-29------for：修改为立即加载
	@ManyToOne(fetch = FetchType.EAGER)
    //update--end---author:zhangguoming---------date:2014-10-29------for：修改为立即加载
	@JoinColumn(name = &quot;VIP_ID&quot;)
	public WeixinVipInfoEntity getVipInfo() {
		return vipInfo;
	}

	public void setVipInfo(WeixinVipInfoEntity vipInfo) {
		this.vipInfo = vipInfo;
	}

    //update--start---author:zhangguoming---------date:2014-10-29------for：修改为立即加载
	@OneToOne(fetch = FetchType.EAGER)
    //update--end---author:zhangguoming---------date:2014-10-29------for：修改为立即加载
	@JoinColumn(name = &quot;MEMBER_ID&quot;)
	public TSUser getTsuer() {
		return tsuer;
	}

	public void setTsuer(TSUser tsuer) {
		this.tsuer = tsuer;
	}

	@Column(name =&quot;memberOrg&quot;,nullable=true)
	public String getMemberOrg() {
		return memberOrg;
	}

    //update--start---author:zhangguoming---------date:2014-10-29------for：修改为立即加载
	@ManyToOne(fetch = FetchType.EAGER)
    //update--end---author:zhangguoming---------date:2014-10-29------for：修改为立即加载
	@JoinColumn(name = &quot;memberType&quot;)
	public WeixinVipMembersType getMemberType() {
		return memberType;
	}

	public void setMemberType(WeixinVipMembersType memberType) {
		this.memberType = memberType;
	}

	public void setMemberOrg(String memberOrg) {
		this.memberOrg = memberOrg;
	}

	@Column(name =&quot;memberOrgInfo&quot;,nullable=true)
	public String getMemberOrgInfo() {
		return memberOrgInfo;
	}

	public void setMemberOrgInfo(String memberOrgInfo) {
		this.memberOrgInfo = memberOrgInfo;
	}

	@Column(name =&quot;memberStatus&quot;,nullable=true)
	public String getMemberStatus() {
		return memberStatus;
	}

	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}

	@Column(name =&quot;memberSex&quot;,nullable=true)
	public String getMemberSex() {
		return memberSex;
	}

	public void setMemberSex(String memberSex) {
		this.memberSex = memberSex;
	}

	@Column(name =&quot;memberNational&quot;,nullable=true)
	public String getMemberNational() {
		return memberNational;
	}

	public void setMemberNational(String memberNational) {
		this.memberNational = memberNational;
	}

	@Column(name =&quot;memberInstitution&quot;,nullable=true)
	public String getMemberInstitution() {
		return memberInstitution;
	}

	public void setMemberInstitution(String memberInstitution) {
		this.memberInstitution = memberInstitution;
	}

	@Column(name =&quot;memberProfessional&quot;,nullable=true)
	public String getMemberProfessional() {
		return memberProfessional;
	}

	public void setMemberProfessional(String memberProfessional) {
		this.memberProfessional = memberProfessional;
	}

	@Column(name =&quot;memberEducation&quot;,nullable=true)
	public String getMemberEducation() {
		return memberEducation;
	}

	public void setMemberEducation(String memberEducation) {
		this.memberEducation = memberEducation;
	}

	@Column(name =&quot;memberMobile&quot;,nullable=true)
	public String getMemberMobile() {
		return memberMobile;
	}

	public void setMemberMobile(String memberMobile) {
		this.memberMobile = memberMobile;
	}

	@Column(name =&quot;memberphone&quot;,nullable=true)
	public String getMemberphone() {
		return memberphone;
	}

	public void setMemberphone(String memberphone) {
		this.memberphone = memberphone;
	}

	@Column(name =&quot;memberFax&quot;,nullable=true)
	public String getMemberFax() {
		return memberFax;
	}

	public void setMemberFax(String memberFax) {
		this.memberFax = memberFax;
	}

	@Column(name =&quot;memberEmail&quot;,nullable=true)
	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	@Column(name =&quot;memberAddress&quot;,nullable=true)
	public String getMemberAddress() {
		return memberAddress;
	}

	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}

	@Column(name =&quot;memberIdent&quot;,nullable=true)
	public String getMemberIdent() {
		return memberIdent;
	}

	public void setMemberIdent(String memberIdent) {
		this.memberIdent = memberIdent;
	}

	@Column(name =&quot;memberResearchInfo&quot;,nullable=true)
	public String getMemberResearchInfo() {
		return memberResearchInfo;
	}

	public void setMemberResearchInfo(String memberResearchInfo) {
		this.memberResearchInfo = memberResearchInfo;
	}

	@Column(name =&quot;memberReceiveType&quot;,nullable=true)
	public String getMemberReceiveType() {
		return memberReceiveType;
	}

	public void setMemberReceiveType(String memberReceiveType) {
		this.memberReceiveType = memberReceiveType;
	}

	@Column(name =&quot;memberMailAddress&quot;,nullable=true)
	public String getMemberMailAddress() {
		return memberMailAddress;
	}

	public void setMemberMailAddress(String memberMailAddress) {
		this.memberMailAddress = memberMailAddress;
	}

	@Column(name =&quot;memberIntroduce&quot;,nullable=true)
	public String getMemberIntroduce() {
		return memberIntroduce;
	}

	public void setMemberIntroduce(String memberIntroduce) {
		this.memberIntroduce = memberIntroduce;
	}

	@Column(name =&quot;memberBrith&quot;,nullable=true)
	public java.util.Date getMemberBrith() {
		return memberBrith;
	}

	public void setMemberBrith(java.util.Date memberBrith) {
		this.memberBrith = memberBrith;
	}

	@Column(name =&quot;memResGzmtDetail&quot;,nullable=true)
	public String getMemResGzmtDetail() {
		return memResGzmtDetail;
	}

	public void setMemResGzmtDetail(String memResGzmtDetail) {
		this.memResGzmtDetail = memResGzmtDetail;
	}

	@Column(name =&quot;memResPyjsDetail&quot;,nullable=true)
	public String getMemResPyjsDetail() {
		return memResPyjsDetail;
	}

	public void setMemResPyjsDetail(String memResPyjsDetail) {
		this.memResPyjsDetail = memResPyjsDetail;
	}

	@Column(name =&quot;memResOtherDetail&quot;,nullable=true)
	public String getMemResOtherDetail() {
		return memResOtherDetail;
	}

	public void setMemResOtherDetail(String memResOtherDetail) {
		this.memResOtherDetail = memResOtherDetail;
	}

	@Column(name =&quot;verifyStatus&quot;,nullable=true)
	public String getVerifyStatus() {
		return verifyStatus;
	}

	public void setVerifyStatus(String verifyStatus) {
		this.verifyStatus = verifyStatus;
	}

	@Column(name =&quot;effectiveDate&quot;,nullable=true)
	public java.util.Date getEffectiveDate() {
		return effectiveDate;
	}

	public void setEffectiveDate(java.util.Date effectiveDate) {
		this.effectiveDate = effectiveDate;
	}

	@Column(name =&quot;dealDate&quot;,nullable=true)
	public java.util.Date getDealDate() {
		return dealDate;
	}

	public void setDealDate(java.util.Date dealDate) {
		this.dealDate = dealDate;
	}

	@Column(name =&quot;memberRemarks&quot;,nullable=true)
	public String getMemberRemarks() {
		return memberRemarks;
	}

	public void setMemberRemarks(String memberRemarks) {
		this.memberRemarks = memberRemarks;
	}
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = &quot;operator&quot;)
	public TSUser getOperator() {
		return operator;
	}

	public void setOperator(TSUser operator) {
		this.operator = operator;
	}

	@Column(name =&quot;memberVipCode&quot;,nullable=true)
	public String getMemberVipCode() {
		return memberVipCode;
	}

	public void setMemberVipCode(String memberVipCode) {
		this.memberVipCode = memberVipCode;
	}

	@Column(name =&quot;password&quot;,nullable=true)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name =&quot;memberRealName&quot;,nullable=true)
	public String getMemberRealName() {
		return memberRealName;
	}

	public void setMemberRealName(String memberRealName) {
		this.memberRealName = memberRealName;
	}

	@Column(name =&quot;memberVipProvince&quot;,nullable=true)
	public String getMemberVipProvince() {
		return memberVipProvince;
	}

	public void setMemberVipProvince(String memberVipProvince) {
		this.memberVipProvince = memberVipProvince;
	}

	@Column(name =&quot;memberVipCity&quot;,nullable=true)
	public String getMemberVipCity() {
		return memberVipCity;
	}

	public void setMemberVipCity(String memberVipCity) {
		this.memberVipCity = memberVipCity;
	}

	@Column(name =&quot;memberPhoto&quot;,nullable=true)
	public String getMemberPhoto() {
		return memberPhoto;
	}

	public void setMemberPhoto(String memberPhoto) {
		this.memberPhoto = memberPhoto;
	}

	@Column(name =&quot;remark&quot;,nullable=true)
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Column(name =&quot;openid&quot;,nullable=true)
	public String getOpenid() {
		return openid;
	}

	public void setOpenid(String openid) {
		this.openid = openid;
	}

	@Column(name =&quot;memberVipType&quot;,nullable=true)
	public String getMemberVipType() {
		return memberVipType;
	}

	public void setMemberVipType(String memberVipType) {
		this.memberVipType = memberVipType;
	}
	
	@Column(name=&quot;accountid&quot;,nullable=true)
	public String getAccountid() {
		return accountid;
	}
	
	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}
}

    </code>
    </pre>
    
    

    

    
  </p>
</div>
<script>hljs.initHighlightingOnLoad();</script>
 
	
	<div class="d-m-footer layout">
		<div class="d-m-footer-main layout">
			<dl>
			  <dt>关于Taocode</dt>				
			  <dd>
			    <a href="/aboutus/">关于我们</a>
			  </dd>
			</dl>
                        <dl>
                          <dt>帮助中心</dt>
                          <dd>
                            <a href="/p/taobaocode/wiki/SiteHelp/">如何创建项目</a>
			  </dd>
                          <dd>
                            <a href="/p/taobaocode/wiki/SiteHelp/">如何成为项目成员</a>
                          </dd>
                          <dd>
                            <a href="/p/taobaocode/issues/">问题反馈</a>
			  </dd>
                        </dl>
			<dl>
			  <dt>联系我们</dt>
			  <dd>
			    <a class="d-m-email" href="mailto:opensource@taobao.com">邮箱</a> 
			    <a class="d-m-weibo" href="http://e.weibo.com/taobaoopensource " target="_blank">微博</a> 
			  </dd>
			</dl>
		</div>
		<p class="d-m-right">©&nbsp;&nbsp;2013&nbsp;&nbsp;Alibaba&nbsp;&nbsp;Inc.&nbsp;&nbsp;All&nbsp;&nbsp;rights&nbsp;&nbsp;resvered.<span>
		Powered by <a href="http://click.aliyun.com/m/5135/" target="_blank"><img src="https://img.alicdn.com/tps/TB1fNLMKFXXXXXYXFXXXXXXXXXX-265-68.png"/></a>
</span></a>
</p>
	</div>
	

<script src="http://s11.cnzz.com/z_stat.php?id=1259464474&web_id=1259464474" language="JavaScript"></script>

</body>
</html>
