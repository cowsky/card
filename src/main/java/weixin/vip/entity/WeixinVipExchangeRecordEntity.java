<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 

<html>
<head>
<title>wxCloud - /src/weixin/vip/entity/WeixinVipExchangeRecordEntity.java - Taocode</title> 

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
    <a href="/p/wxCloud/logs/src/weixin/vip/entity/WeixinVipExchangeRecordEntity.java"> 历史</a>
    |
    <a href="/p/wxCloud/log/2/src/weixin/vip/entity/WeixinVipExchangeRecordEntity.java">r2</a>
    |
    <em>2016-03-03 15:28:54</em>
    |
    <a href="/p/wxCloud/src/src/weixin/vip/entity/WeixinVipExchangeRecordEntity.java?orig"> 下载</a>
</div>
  <p>
    
    <pre><code class="java">package weixin.vip.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
/**   
 * @Description: 微信会员商品兑换记录
 * @author XiaoFeng
 * @date 2014-11-01
 * @version V1.0   
 *
 */
@Entity
@Table(name=&quot;weixin_vip_exchangerecord&quot;)
public class WeixinVipExchangeRecordEntity implements Serializable {
	private String id;
	/**收货人姓名**/
	private String realname;
	/**手机号**/
	private String mobilenumber;
	/**省**/
	private String province;
	/**市**/
	private String city;
	/**区**/
	private String area;
	/**省**/
	private String provincecode;
	/**市**/
	private String citycode;
	/**区**/
	private String areacode;
	/**详细地址**/
	private String detailaddress;
	/**兑换时间**/
	private Date createtime;
	/**商家ID**/
	private String accountid;
	/**会员信息**/
	private WeixinVipMemberEntity member;
	/**商品标题**/
	private String goodstitle;
	/**商品图片**/
	private String goodsimg;
	/**商品编号**/
	private String goodsnumber;
	/**兑换积分**/
	private Integer integral;
	/**商品ID**/
	private String goodsid;
	
	/**发货状态**/
	private String sendstatus;
	/**快递名称**/
	private String expressname;
	/**快递编号**/
	private String expressnumber;
	/**发货时间**/
	private Date sendtime;
	/**发货人**/
	private String senduser;
	
	@Id
	@GeneratedValue(generator = &quot;paymentableGenerator&quot;)
	@GenericGenerator(name = &quot;paymentableGenerator&quot;, strategy = &quot;uuid&quot;)
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	@Column(name =&quot;REALNAME&quot;,nullable=true,length=50)
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	@Column(name =&quot;MOBILE_NUMBER&quot;,nullable=true,length=50)
	public String getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	@Column(name =&quot;PROVINCE&quot;,nullable=true,length=50)
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	@Column(name =&quot;CITY&quot;,nullable=true,length=50)
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Column(name =&quot;AREA&quot;,nullable=true,length=50)
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	@Column(name =&quot;DETAIL_ADDRESS&quot;,nullable=true,length=50)
	public String getDetailaddress() {
		return detailaddress;
	}
	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}
	@Column(name =&quot;CREATE_TIME&quot;,nullable=true,length=50)
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	@Column(name =&quot;accountid&quot;,nullable=true,length=50)
	public String getAccountid() {
		return accountid;
	}
	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = &quot;memberid&quot;)
	public WeixinVipMemberEntity getMember() {
		return member;
	}
	public void setMember(WeixinVipMemberEntity member) {
		this.member = member;
	}
	@Column(name =&quot;goodstitle&quot;,nullable=true,length=200)
	public String getGoodstitle() {
		return goodstitle;
	}
	public void setGoodstitle(String goodstitle) {
		this.goodstitle = goodstitle;
	}
	@Column(name =&quot;goodsimg&quot;,nullable=true,length=1000)
	public String getGoodsimg() {
		return goodsimg;
	}
	public void setGoodsimg(String goodsimg) {
		this.goodsimg = goodsimg;
	}
	@Column(name =&quot;goodsnumber&quot;,nullable=true,length=200)
	public String getGoodsnumber() {
		return goodsnumber;
	}
	public void setGoodsnumber(String goodsnumber) {
		this.goodsnumber = goodsnumber;
	}
	@Column(name =&quot;integral&quot;,nullable=true)
	public Integer getIntegral() {
		return integral;
	}
	
	public void setIntegral(Integer integral) {
		this.integral = integral;
	}
	@Column(name =&quot;goodsid&quot;,nullable=true,length=50)
	public String getGoodsid() {
		return goodsid;
	}
	
	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}

	public String getProvincecode() {
		return provincecode;
	}

	public void setProvincecode(String provincecode) {
		this.provincecode = provincecode;
	}

	public String getCitycode() {
		return citycode;
	}

	public void setCitycode(String citycode) {
		this.citycode = citycode;
	}

	public String getAreacode() {
		return areacode;
	}

	public void setAreacode(String areacode) {
		this.areacode = areacode;
	}
	
	@Column(name =&quot;SEND_STATUS&quot;,nullable=true,length=5)
	public String getSendstatus() {
		return sendstatus;
	}

	public void setSendstatus(String sendstatus) {
		this.sendstatus = sendstatus;
	}

	@Column(name =&quot;EXPRESS_NUMBER&quot;,nullable=true,length=100)
	public String getExpressnumber() {
		return expressnumber;
	}

	public void setExpressnumber(String expressnumber) {
		this.expressnumber = expressnumber;
	}
	
	@Column(name =&quot;EXPRESS_NAME&quot;,nullable=true,length=200)
	public String getExpressname() {
		return expressname;
	}
	
	public void setExpressname(String expressname) {
		this.expressname = expressname;
	}
	
	@Column(name =&quot;SEND_TIME&quot;,nullable=true,length=50)
	public Date getSendtime() {
		return sendtime;
	}
	
	public void setSendtime(Date sendtime) {
		this.sendtime = sendtime;
	}
	@Column(name =&quot;SEND_USER&quot;,nullable=true,length=50)
	public String getSenduser() {
		return senduser;
	}
	
	public void setSenduser(String senduser) {
		this.senduser = senduser;
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
