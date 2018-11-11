<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<fmt:setLocale value="en-US" />
<x:parse var="d" doc="${data}"/>
<x:set var="tpl_id" select="string($d//template_id)"/>
<c:set var="tpl_vals" value="${fn:split(tpl_id,'_')}"/>
<c:set var="tpl_id" value="string($d//template_id)"/>
<c:set var="stage" value = "${tpl_vals[2]}"/>

<c:set var="tpl_id" value="string($d//template_id)"/>
<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat2/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.gif"/> 



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><img src="<c:out value="${rh_img}"/>"  <br> <br></td></tr>

<tr><td><font face="Arial" size="2"><br>帐号 - <x:out select="$d//contract_no"/></font><br><br></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>您好！
<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2">
<br>
我们想通知您，您的红帽订阅已到期请务必在截止日期前续约您的订阅以便继续获得红帽软件，更新，升级，技术支持，安全补丁和Red Hat's Open Source Assurance Program 合法使用。
<br>
请阅读以下条款以便充分理解我们续订产品的好处。
<br><br></font></td></tr>

<tr><td><font face="Arial" size="2">
为了使您继续享受服务，请联络的电子邮件如下，您的经销商或我们的合作伙伴服务台将安排您的续订<a href=mailto:APAC-Partner-Helpdesk@redhat.com>APAC-Partner-Helpdesk@redhat.com</a>。   

<br><br></font></td></tr>


</c:when>

<c:when test="${tpl_vals[2] == '0'}"> 
<tr><td><font face="Arial" size="2">
<br>
我们希望通知您，您的红帽订阅将于今天到期。请务必在截止日期前续约您的订阅以便继续获得红帽软件，更新，升级，技术支持，安全补丁和Red Hat's Open Source Assurance Program合法使用。请阅读以下条款以便充分理解我们续订产品的好处。
<br><br></font></td></tr>

<tr><td><font face="Arial" size="2">
为了使您继续享受服务，请通过下面的电子邮件联系我们的经销商和服务合作伙伴以帮助和安排您续订红帽产品。<a href=mailto:APAC-Partner-Helpdesk@redhat.com>APAC-Partner-Helpdesk@redhat.com</a>。   
<br><br></font></td></tr>
</c:when>


<c:otherwise> 
<tr><td><font face="Arial" size="2">
<br>
我们想通知您，以下所示的红帽软件订阅即将过期。请务必在截止日期前续约您的订阅以便继续获得红帽软件，更新，升级，技术支持，安全补丁和Red Hat's Open Source Assurance Program合法使用。请阅读以下条款以便充分理解我们续订产品的好处。
<br><br></font></td></tr>
<tr><td><font face="Arial" size="2">

为了使您继续享受服务，请联络的电子邮件如下，您的经销商或我们的合作伙伴服务台将安排您的续订<a href=mailto:APAC-Partner-Helpdesk@redhat.com>APAC-Partner-Helpdesk@redhat.com</a>。
<br><br></font></td></tr>

</c:otherwise>
</c:choose>
</font></td></tr> 

<tr><td><font face="Arial" size="2"><br>
我们还希望借此机会通知您，我们在原有客户反馈的基础上做出了一些改进，以便于您在使用红帽产品的时候获得更多的灵活性和价值。在您拥有有效订阅的基础上，我们将为您提供更加个性化的解决方案和产品版本的增强。我们的产品更新包括全新和更加灵活的产品配置，产品编号，定价方案，技术支持和可选的技术支援服务级别。因产品的更新及优化，您的续订价格可能会与之前购买的价格有所不同。


<br><br></font></td></tr>

<tr><td><font face="Arial" size="2">
下表显示您之前所使用的红帽产品和续订之后新产品的对应关系：
<br><br></font></td></tr>
</table>
<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Contract<BR> No.</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Qty</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Old Product Description </font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Old SKUS</font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Configured <br>SKUS</font><br></th>
<th  align="center" valign="center">
<font face="Arial" size="2" color="ffffff">Configured Product<br>Description</font><br></th>

<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Expiration <br>Date</font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Reseller </font><br></th>


</tr>
<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/products/product" var="p">

<c:choose>
<c:when test="${pcount mod 2 == '0'}">

<tr>

<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$d//contract_no"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">  <x:out select="$p/desc"/>  </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/oldsku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font> </td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/newprod"/>  </td>
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
</c:if></font></td>
<td align="center" valign="center"><font face="Arial" style="font-size:8pt">  <x:out  select="$d//reseller"/></font> </td>



</c:when>
<c:otherwise>
  <tr bgcolor="e0e0e0">
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$d//contract_no"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">  <x:out select="$p/desc"/>  </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/oldsku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font> </td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/newprod"/>  </td>
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
</c:if></font></td>
<td align="center" valign="center"><font face="Arial" style="font-size:8pt">  <x:out  select="$d//reseller"/></font> </td>

</c:otherwise>
</c:choose>

</tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>


<br>

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2">关于我们新产品的更多信息请访问 <a href=http://www.redhat.com/rhel/renew/>http://www.redhat.com/rhel/renew/</a><br><br></font></td></tr>
<tr><td><font face="Arial" size="2">
红帽订阅帮助您解决使用红帽产品过程中出现的并提供持续和稳定的业务价值。红帽提供的服务价格是由所运行Red Hat软件系统的数量为计算单位，所以在您与红帽签订协议的期间即当您持有任何有效红帽订阅期间，您必须保证对每一个安装或使用的红帽系统和相关软件拥有合法和有效的订阅。在合法和有效的订阅服务期内方可获得如下权利：
<br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>新技术：</b>在不增加额外费用的情况下不间断获得对新产品硬件的支持、同时也能获得红帽产品在例如性能优化、工作量等方面的增强支持和支持。
<li>
<b>更新，bug修复，安全勘误：</b>增强功能，漏洞修复，新功能，并继续在整个认证周期可享受这些服务。 
<li>
<b>软件测试和QA：</b>最新的技术测试和产品封装，让您有信心可以运行您的关键部署以确保您的关键部署稳定运行。
<li>
<b>升级的灵活性：</b>在订阅有效期内您可以合法部署红帽发布任何发布的新版本。
<li>
<b>技术支持：</b>在您的服务级别内可以根据需要无限制地利用红帽的技术支持和事件响应系统。 
<li>
<b>硬件和软件认证：</b>为您在软件和硬件部署方面提供兼容性的建议方案。
<li>
<b>源代码和文档：</b>在使用红帽软件二进制版本的同时可以获得产品源代码和相关文档。
<li>
<b>知识产权保证：</b>当您在正确使用红帽产品订阅遇到法律索赔时，红帽将会为您提供法律保障。
</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">
您可以通过访问<a href="http://www.redhat.com/subscriptions/">该链接</a>了解红帽订阅的更多优点。如果您需要任何额外的信息，或者对我们的其他服务的信息，请联系您的经销商。

</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">如果您没有专属红帽产品供应商，请联系红帽亚太<a href=mailto:APAC-Partner-Helpdesk@redhat.com>APAC-Partner-Helpdesk@redhat.com</a>, 我们将很乐意为您联系合各的红帽经销商。</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">如若贵公司其他人员也需要收到红帽的订阅通知，请电邮相关内容至 <a href=mailto:customerdata-apac@redhat.com>customerdata-apac@redhat.com</a>。请务必在Email中提供您的红帽登录ID和你的合同号码。

</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">我们很高兴为您服务。<BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2">顺祝商旗,<br><br></font></td></tr>
<tr><td><font face="Arial" size="2">红帽队续约<br><br><b></b><br><br></font></td></tr>

<tr><td><font face="Arial" size="1">

© 2011 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.
<BR><BR></font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
