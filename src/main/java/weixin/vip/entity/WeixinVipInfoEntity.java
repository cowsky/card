<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 

<html>
<head>
<title>wxCloud - /src/weixin/vip/entity/WeixinVipInfoEntity.java - Taocode</title> 

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
    <a href="/p/wxCloud/logs/src/weixin/vip/entity/WeixinVipInfoEntity.java"> 历史</a>
    |
    <a href="/p/wxCloud/log/2/src/weixin/vip/entity/WeixinVipInfoEntity.java">r2</a>
    |
    <em>2016-03-03 15:28:54</em>
    |
    <a href="/p/wxCloud/src/src/weixin/vip/entity/WeixinVipInfoEntity.java?orig"> 下载</a>
</div>
  <p>
    
    <pre><code class="java">package weixin.vip.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;

/**   
 * @Title: Entity
 * @Description: 微信会员卡表
 * @author XiaoFeng
 * @date 2014-07-29 22:28:56
 * @version V1.0   
 *
 */
@Entity
@Table(name = &quot;weixin_vip_info&quot;, schema = &quot;&quot;)
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings(&quot;serial&quot;)
public class WeixinVipInfoEntity implements java.io.Serializable {
	/**id*/
	private java.lang.String id;
	/**vipName*/
	private java.lang.String vipName;
	/**vipImg*/
	private java.lang.String vipImg;
	/**vipDescribe*/
	private java.lang.String vipDescribe;
	/**vipCofing*/
	private java.lang.String vipCofing;
	/**startTime*/
	private java.util.Date startTime;
	/**endTime*/
	private java.util.Date endTime;
	/**levelId*/
	private java.lang.String levelId;
	/**accountid*/
	private java.lang.String accountid;
	
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
	 *@return: java.lang.String  vipName
	 */
	@Column(name =&quot;VIP_NAME&quot;,nullable=false,length=100)
	public java.lang.String getVipName(){
		return this.vipName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  vipName
	 */
	public void setVipName(java.lang.String vipName){
		this.vipName = vipName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  vipImg
	 */
	@Column(name =&quot;VIP_IMG&quot;,nullable=true,length=200)
	public java.lang.String getVipImg(){
		return this.vipImg;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  vipImg
	 */
	public void setVipImg(java.lang.String vipImg){
		this.vipImg = vipImg;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  vipDescribe
	 */
	@Column(name =&quot;VIP_DESCRIBE&quot;,nullable=true,length=200)
	public java.lang.String getVipDescribe(){
		return this.vipDescribe;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  vipDescribe
	 */
	public void setVipDescribe(java.lang.String vipDescribe){
		this.vipDescribe = vipDescribe;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  vipCofing
	 */
	@Column(name =&quot;VIP_COFING&quot;,nullable=true,length=20)
	public java.lang.String getVipCofing(){
		return this.vipCofing;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  vipCofing
	 */
	public void setVipCofing(java.lang.String vipCofing){
		this.vipCofing = vipCofing;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  startTime
	 */
	@Column(name =&quot;START_TIME&quot;,nullable=true)
	public java.util.Date getStartTime(){
		return this.startTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  startTime
	 */
	public void setStartTime(java.util.Date startTime){
		this.startTime = startTime;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  endTime
	 */
	@Column(name =&quot;END_TIME&quot;,nullable=true)
	public java.util.Date getEndTime(){
		return this.endTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  endTime
	 */
	public void setEndTime(java.util.Date endTime){
		this.endTime = endTime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  levelId
	 */
	@Column(name =&quot;LEVEL_ID&quot;,nullable=false,length=36)
	public java.lang.String getLevelId(){
		return this.levelId;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  levelId
	 */
	public void setLevelId(java.lang.String levelId){
		this.levelId = levelId;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  accountid
	 */
	@Column(name =&quot;ACCOUNTID&quot;,nullable=true,length=100)
	public java.lang.String getAccountid(){
		return this.accountid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  accountid
	 */
	public void setAccountid(java.lang.String accountid){
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
