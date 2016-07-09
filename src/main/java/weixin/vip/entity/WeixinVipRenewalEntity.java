<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 

<html>
<head>
<title>wxCloud - /src/weixin/vip/entity/WeixinVipRenewalEntity.java - Taocode</title> 

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
    <a href="/p/wxCloud/logs/src/weixin/vip/entity/WeixinVipRenewalEntity.java"> 历史</a>
    |
    <a href="/p/wxCloud/log/2/src/weixin/vip/entity/WeixinVipRenewalEntity.java">r2</a>
    |
    <em>2016-03-03 15:28:54</em>
    |
    <a href="/p/wxCloud/src/src/weixin/vip/entity/WeixinVipRenewalEntity.java?orig"> 下载</a>
</div>
  <p>
    
    <pre><code class="java">package weixin.vip.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

/**   
 * @Title: Entity
 * @Description: 会员续费
 * @author onlineGenerator
 * @date 2014-11-12 22:42:16
 * @version V1.0   
 *
 */
@Entity
@Table(name = &quot;weixin_vip_renewal&quot;, schema = &quot;&quot;)
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings(&quot;serial&quot;)
public class WeixinVipRenewalEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**创建人名称*/
	private java.lang.String createName;
	/**创建日期*/
	private java.util.Date createDate;
	/**修改人名称*/
	private java.lang.String updateName;
	/**修改日期*/
	private java.util.Date updateDate;
	/**会员ID*/
	/*@Excel(exportName=&quot;会员ID&quot;)
	private java.lang.String memberid;*/
	private WeixinVipMemberEntity member;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = &quot;memberid&quot;)
	public WeixinVipMemberEntity getMember() {
		return member;
	}
	public void setMember(WeixinVipMemberEntity member) {
		this.member = member;
	}
	
	
	/**续费金额*/
	@Excel(exportName=&quot;续费金额&quot;)
	private java.lang.Double amount;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
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
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人名称
	 */
	@Column(name =&quot;CREATE_NAME&quot;,nullable=true,length=50)
	public java.lang.String getCreateName(){
		return this.createName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人名称
	 */
	public void setCreateName(java.lang.String createName){
		this.createName = createName;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  创建日期
	 */
	@Column(name =&quot;CREATE_DATE&quot;,nullable=true,length=20)
	public java.util.Date getCreateDate(){
		return this.createDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  创建日期
	 */
	public void setCreateDate(java.util.Date createDate){
		this.createDate = createDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  修改人名称
	 */
	@Column(name =&quot;UPDATE_NAME&quot;,nullable=true,length=50)
	public java.lang.String getUpdateName(){
		return this.updateName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  修改人名称
	 */
	public void setUpdateName(java.lang.String updateName){
		this.updateName = updateName;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  修改日期
	 */
	@Column(name =&quot;UPDATE_DATE&quot;,nullable=true,length=20)
	public java.util.Date getUpdateDate(){
		return this.updateDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  修改日期
	 */
	public void setUpdateDate(java.util.Date updateDate){
		this.updateDate = updateDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  会员ID
	 */
	/*@Column(name =&quot;MEMBERID&quot;,nullable=true,length=32)
	public java.lang.String getMemberid(){
		return this.memberid;
	}*/

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  会员ID
	 */
	/*public void setMemberid(java.lang.String memberid){
		this.memberid = memberid;
	}*/
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  续费金额
	 */
	@Column(name =&quot;AMOUNT&quot;,nullable=true,scale=2,length=32)
	public java.lang.Double getAmount(){
		return this.amount;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  续费金额
	 */
	public void setAmount(java.lang.Double amount){
		this.amount = amount;
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
