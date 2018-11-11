<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<fmt:setLocale value="en-US" />
<x:parse var="d" doc="${data}"/>
<x:set var="tpl_id" select="string($d//template_id)"/>
<c:set var="tpl_vals" value="${fn:split(tpl_id,'_')}"/>
<c:set var="stage" value = "${tpl_vals[2]}"/>

<c:set var="tpl_id" value="string($d//template_id)"/>
<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.gif"/> 

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="" width="660" border="0">

<tr><td><img src="<c:out value="${rh_img}"/>" <BR></td></tr>


<tr><td><font face="Arial" size="2"><br><x:out select="$d//customer/name"/></font><br></td></tr>
<tr><td><font face="Arial" size="2">帐号 - <x:out select="$d//acct_no"/></font><br><br></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2">您好！非常感谢您选择红帽软件解决方案。<br> <br> </font></td></tr> 
<tr><td><font face="Arial" size="2">根据我们的记录，

<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}"> 
您的红帽软件订阅将在 ${stage} 天后过期。<br><br></font></td></tr>
<tr><td><font face="Arial" size="2">敬请在截止日期前延续订阅以便继续收益于使用红帽软件，包括软件升级、安全补丁、技术支援以及红帽开源保障计划。
</c:when>

<c:otherwise> 
您的红帽软件订阅已经过期。敬请在截止日期前延续订阅以便继续收益于使用红帽软件，包括软件升级、安全补丁、技术支援以及红帽开源保障计划。
</c:otherwise>
</c:choose>
<br><br></font></td></tr>

<c:if test="${tpl_vals[1] == 'Web'}">  

<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>点击这里 <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/button_renew_now.gif" border=0> </a> <br><br></font> </td></tr> 
</c:if>

<tr><td><font face="Arial" size="2">借此机会通知，基于广泛顾客的反馈，我们在诸多方面做出了改进。您将可从红帽软件订阅得到更灵活的服务和高值配套。当您延续订阅，我们会提供更具个性化的增强型红帽软件解决方案。<br><br></font></td></tr>

<tr><td><font face="Arial" size="2">下表显示您当前使用的红帽软件可续约的新配套订阅：<br><br></font></td></tr>
</table>
<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Contract<BR> No.</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Qty</font></th>
<th  align="left" valign="center"><font face="Arial" size="2" color="ffffff">Old Product Description </font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Old SKUS</font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Configured <br>SKUS</font><br></th>
<th  align="center" valign="center">
<font face="Arial" size="2" color="ffffff">Configured Product<br>Description</font><br></th>

<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Expiration <br>Date</font><br></th>


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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd/MM/yyyy") %></c:if></font></td>
</tr>
</c:when>
<c:otherwise>
  <tr bgcolor="e0e0e0">
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$d//contract_no"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">  <x:out select="$p/desc"/>  </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/oldsku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font> </td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/newprod"/>  </td>
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd/MM/yyyy") %></c:if></font></td>
</tr>
</c:otherwise>
</c:choose>

<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>

<br>
<br>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2">红帽订阅为您提供持续的价值，以助于您解决日常商务困难。红帽是基于运行红帽软件资源数量而衡量这个价值。所以，一旦您持有任何有效订阅，您须在每安装实例维持红帽软件订阅。只有这些订阅您才能享有：<br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>新技术：</b>新芯片集、主性能优化和特定工作量增强的支持。此外更多服务是每季度您红帽软件订阅所配套的，完全不另加费用。
<li>
<b>软件更新、错误修复、安全勘误：</b>增强功能、修复、新功能和持续认证可享用于整个订阅周期。 
<li>
<b>软件测试与质量保证：</b>最新技术完全通过成功测试并为你配套组装。给你更多信心于关键程序应用。
<li>
<b>升级灵活性：</b>只要您的订阅有效，您可展用所发布的任何新软件版本。
<li>
<b>技术支持：</b>利用无限事件和服务支持位满足您的需求。 
<li>
<b>硬件和软件认证：</b>完全通过认证的硬件和软件给您在程序解决方案使用上带来信心。
<li>
<b>源代码和文档：</b>享用我们的红帽软件产品二进制文档与文件资料。
<li>
<b>知识产权保障：</b>当有合法要求时，红帽软件的知识产权的保障计划能在您有效订阅期提供一定的保护。
</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">想了解更多关于红帽软件订阅益处和续约条件，请点击<a href ="http://www.redhat.com/subscriptions/" >这里</a>。
</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">如果另有人应该得到未来红帽的订阅通知，请电邮细节到 <a href=mailto:customerdata-apac@redhat.com> customerdata-apac@redhat.com</a><BR></font><br></td></tr>

<c:choose>
<c:when test="${tpl_vals[1] == 'Direct'}"> 

<tr><td><font face="Arial" size="2">如果您需要更多信息或想了解我们的其他服务，请与我联络 <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/phone"/></x:when><x:otherwise><x:out select="$d//client/rep_tel"/></x:otherwise></x:choose>。
<BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2">敬启<br><br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 
<x:choose>
<x:when select="$d//client/rep_name/node()">

<x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/name"/></x:when><x:otherwise><x:out select="$d//client/rep_name"/></x:otherwise></x:choose> 
</x:when>
<x:otherwise>
<x:out select="$d//ssirep/name"/>
</x:otherwise>
</x:choose>


<br><br><br></font> </td></tr> 

</c:when>

<c:when test="${tpl_vals[1] == 'Web'}"> 
<tr><td><font face="Arial" size="2">我们很高兴为您服务。<br><br></font>  </td></tr>

<tr><td><font face="Arial" size="2">敬启<br><br><br><br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> Red Hat Renewals Team <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 900 Main Campus Dr.<br><br> </font> </td></tr> 
<tr><td><font face="Arial" size="2"> Raleigh, NC 27606 <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 877-707-3757<br> <br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> <a href=mailto:renewals@redhat.com > renewals@redhat.com</a> <br><br><br></font> </td></tr> 


</c:when>
</c:choose>
<tr><td><font face="Arial" size="1">

© 2009 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.
<BR><BR></font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
