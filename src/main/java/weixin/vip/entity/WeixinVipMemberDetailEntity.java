<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 

<html>
<head>
<title>wxCloud - /src/weixin/vip/entity/WeixinVipMemberDetailEntity.java - Taocode</title> 

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
    <a href="/p/wxCloud/logs/src/weixin/vip/entity/WeixinVipMemberDetailEntity.java"> 历史</a>
    |
    <a href="/p/wxCloud/log/2/src/weixin/vip/entity/WeixinVipMemberDetailEntity.java">r2</a>
    |
    <em>2016-03-03 15:28:54</em>
    |
    <a href="/p/wxCloud/src/src/weixin/vip/entity/WeixinVipMemberDetailEntity.java?orig"> 下载</a>
</div>
  <p>
    
    <pre><code class="java">package weixin.vip.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = &quot;weixin_vip_member_detailInfo&quot;, schema = &quot;&quot;)
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings(&quot;serial&quot;)
public class WeixinVipMemberDetailEntity implements java.io.Serializable{
	private String id;
	private String eduBackground;
	private String eduBackground_school;
	private String eduBackground_major;
	private String eduBackground_record;
	private String artCourse;
	private String languSpoken;
	private String languWrite;
	private String levelCertificate;
	private String expertise;
	private String interest;
	private String health;
	private String isBreakLow;
	private String volunteExper;
	private String voluntePlanTarget;
	private String servePeople;
	private String serveType;
	private String servePeriod;
	private String serveFrequency;
	private String serveTime;
	private String proveName;
	private String provePosition;
	private String proveLink;
	private String proveProperty;
	private String urgentContacts;
	private String urgentMobile;
	private String urgentMail;
	private String urgentRelation;
	private String languSpokenDetail;
	private String languWriteDetail;
	private String healthDetail;
	private String servePeopleDetail;
	private String serveTypeDesignDetail;
	private String serveTypeDetail;
	private String servePeriodCurrDetail;
	private String servePeriodDetail;
	private String serveFrequencyDays;
	private String serveFrequencyHours;
	private WeixinVipMemberEntity member;

	@Id
	@GeneratedValue(generator = &quot;paymentableGenerator&quot;)
	@GenericGenerator(name = &quot;paymentableGenerator&quot;, strategy = &quot;uuid&quot;)
	@Column(name =&quot;ID&quot;,nullable=false,length=36)
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Column(name =&quot;eduBackground&quot;,nullable=true)
	public String getEduBackground() {
		return eduBackground;
	}
	public void setEduBackground(String eduBackground) {
		this.eduBackground = eduBackground;
	}
	@Column(name =&quot;eduBackground_school&quot;,nullable=true)
	public String getEduBackground_school() {
		return eduBackground_school;
	}
	public void setEduBackground_school(String eduBackground_school) {
		this.eduBackground_school = eduBackground_school;
	}
	@Column(name =&quot;eduBackground_major&quot;,nullable=true)
	public String getEduBackground_major() {
		return eduBackground_major;
	}
	public void setEduBackground_major(String eduBackground_major) {
		this.eduBackground_major = eduBackground_major;
	}
	@Column(name =&quot;eduBackground_record&quot;,nullable=true)
	public String getEduBackground_record() {
		return eduBackground_record;
	}
	public void setEduBackground_record(String eduBackground_record) {
		this.eduBackground_record = eduBackground_record;
	}
	@Column(name =&quot;artCourse&quot;,nullable=true)
	public String getArtCourse() {
		return artCourse;
	}
	public void setArtCourse(String artCourse) {
		this.artCourse = artCourse;
	}
	@Column(name =&quot;languSpoken&quot;,nullable=true)
	public String getLanguSpoken() {
		return languSpoken;
	}
	public void setLanguSpoken(String languSpoken) {
		this.languSpoken = languSpoken;
	}
	@Column(name =&quot;languWrite&quot;,nullable=true)
	public String getLanguWrite() {
		return languWrite;
	}
	public void setLanguWrite(String languWrite) {
		this.languWrite = languWrite;
	}
	@Column(name =&quot;levelCertificate&quot;,nullable=true)
	public String getLevelCertificate() {
		return levelCertificate;
	}
	public void setLevelCertificate(String levelCertificate) {
		this.levelCertificate = levelCertificate;
	}
	@Column(name =&quot;expertise&quot;,nullable=true)
	public String getExpertise() {
		return expertise;
	}
	public void setExpertise(String expertise) {
		this.expertise = expertise;
	}
	@Column(name =&quot;interest&quot;,nullable=true)
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	@Column(name =&quot;health&quot;,nullable=true)
	public String getHealth() {
		return health;
	}
	public void setHealth(String health) {
		this.health = health;
	}
	@Column(name =&quot;isBreakLow&quot;,nullable=true)
	public String getIsBreakLow() {
		return isBreakLow;
	}
	public void setIsBreakLow(String isBreakLow) {
		this.isBreakLow = isBreakLow;
	}
	@Column(name =&quot;volunteExper&quot;,nullable=true)
	public String getVolunteExper() {
		return volunteExper;
	}
	public void setVolunteExper(String volunteExper) {
		this.volunteExper = volunteExper;
	}
	@Column(name =&quot;voluntePlanTarget&quot;,nullable=true)
	public String getVoluntePlanTarget() {
		return voluntePlanTarget;
	}
	public void setVoluntePlanTarget(String voluntePlanTarget) {
		this.voluntePlanTarget = voluntePlanTarget;
	}
	@Column(name =&quot;servePeople&quot;,nullable=true)
	public String getServePeople() {
		return servePeople;
	}
	public void setServePeople(String servePeople) {
		this.servePeople = servePeople;
	}
	@Column(name =&quot;serveType&quot;,nullable=true)
	public String getServeType() {
		return serveType;
	}
	public void setServeType(String serveType) {
		this.serveType = serveType;
	}
	@Column(name =&quot;servePeriod&quot;,nullable=true)
	public String getServePeriod() {
		return servePeriod;
	}
	public void setServePeriod(String servePeriod) {
		this.servePeriod = servePeriod;
	}
	@Column(name =&quot;serveFrequency&quot;,nullable=true)
	public String getServeFrequency() {
		return serveFrequency;
	}
	public void setServeFrequency(String serveFrequency) {
		this.serveFrequency = serveFrequency;
	}
	@Column(name =&quot;serveTime&quot;,nullable=true)
	public String getServeTime() {
		return serveTime;
	}
	public void setServeTime(String serveTime) {
		this.serveTime = serveTime;
	}
	@Column(name =&quot;proveProperty&quot;,nullable=true)
	public String getProveProperty() {
		return proveProperty;
	}
	public void setProveProperty(String proveProperty) {
		this.proveProperty = proveProperty;
	}
	@Column(name =&quot;urgentContacts&quot;,nullable=true)
	public String getUrgentContacts() {
		return urgentContacts;
	}
	public void setUrgentContacts(String urgentContacts) {
		this.urgentContacts = urgentContacts;
	}
	@Column(name =&quot;urgentMobile&quot;,nullable=true)
	public String getUrgentMobile() {
		return urgentMobile;
	}
	public void setUrgentMobile(String urgentMobile) {
		this.urgentMobile = urgentMobile;
	}
	@Column(name =&quot;urgentMail&quot;,nullable=true)
	public String getUrgentMail() {
		return urgentMail;
	}
	public void setUrgentMail(String urgentMail) {
		this.urgentMail = urgentMail;
	}
	@Column(name =&quot;urgentRelation&quot;,nullable=true)
	public String getUrgentRelation() {
		return urgentRelation;
	}
	public void setUrgentRelation(String urgentRelation) {
		this.urgentRelation = urgentRelation;
	}
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = &quot;MEMBER_ID&quot;)
	public WeixinVipMemberEntity getMember() {
		return member;
	}
	public void setMember(WeixinVipMemberEntity member) {
		this.member = member;
	}
	@Column(name =&quot;proveName&quot;,nullable=true)
	public String getProveName() {
		return proveName;
	}
	public void setProveName(String proveName) {
		this.proveName = proveName;
	}
	@Column(name =&quot;provePosition&quot;,nullable=true)
	public String getProvePosition() {
		return provePosition;
	}
	public void setProvePosition(String provePosition) {
		this.provePosition = provePosition;
	}
	@Column(name =&quot;proveLink&quot;,nullable=true)
	public String getProveLink() {
		return proveLink;
	}
	public void setProveLink(String proveLink) {
		this.proveLink = proveLink;
	}
	@Column(name =&quot;languSpokenDetail&quot;,nullable=true)
	public String getLanguSpokenDetail() {
		return languSpokenDetail;
	}
	public void setLanguSpokenDetail(String languSpokenDetail) {
		this.languSpokenDetail = languSpokenDetail;
	}
	@Column(name =&quot;languWriteDetail&quot;,nullable=true)
	public String getLanguWriteDetail() {
		return languWriteDetail;
	}
	public void setLanguWriteDetail(String languWriteDetail) {
		this.languWriteDetail = languWriteDetail;
	}
	@Column(name =&quot;healthDetail&quot;,nullable=true)
	public String getHealthDetail() {
		return healthDetail;
	}
	public void setHealthDetail(String healthDetail) {
		this.healthDetail = healthDetail;
	}
	@Column(name =&quot;servePeopleDetail&quot;,nullable=true)
	public String getServePeopleDetail() {
		return servePeopleDetail;
	}
	public void setServePeopleDetail(String servePeopleDetail) {
		this.servePeopleDetail = servePeopleDetail;
	}
	@Column(name =&quot;serveTypeDetail&quot;,nullable=true)
	public String getServeTypeDetail() {
		return serveTypeDetail;
	}
	public void setServeTypeDetail(String serveTypeDetail) {
		this.serveTypeDetail = serveTypeDetail;
	}
	
	@Column(name =&quot;serveTypeDesignDetail&quot;,nullable=true)
	public String getServeTypeDesignDetail() {
		return serveTypeDesignDetail;
	}
	public void setServeTypeDesignDetail(String serveTypeDesignDetail) {
		this.serveTypeDesignDetail = serveTypeDesignDetail;
	}
	
	@Column(name =&quot;servePeriodCurrDetail&quot;,nullable=true)
	public String getServePeriodCurrDetail() {
		return servePeriodCurrDetail;
	}
	public void setServePeriodCurrDetail(String servePeriodCurrDetail) {
		this.servePeriodCurrDetail = servePeriodCurrDetail;
	}
	@Column(name =&quot;servePeriodDetail&quot;,nullable=true)
	public String getServePeriodDetail() {
		return servePeriodDetail;
	}
	public void setServePeriodDetail(String servePeriodDetail) {
		this.servePeriodDetail = servePeriodDetail;
	}
	@Column(name =&quot;serveFrequencyDays&quot;,nullable=true)
	public String getServeFrequencyDays() {
		return serveFrequencyDays;
	}
	public void setServeFrequencyDays(String serveFrequencyDays) {
		this.serveFrequencyDays = serveFrequencyDays;
	}
	@Column(name =&quot;serveFrequencyHours&quot;,nullable=true)
	public String getServeFrequencyHours() {
		return serveFrequencyHours;
	}
	public void setServeFrequencyHours(String serveFrequencyHours) {
		this.serveFrequencyHours = serveFrequencyHours;
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
