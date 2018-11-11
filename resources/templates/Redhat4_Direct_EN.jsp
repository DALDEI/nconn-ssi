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
<c:set var="tpl_reg" value="string($d//region)"/>
<x:set var="chng_email_not" select="string($d//chng_email_notification)"/> 

<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat2/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.gif"/> 
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="" width="660" border="0">

<tr><td><img src="<c:out value="${rh_img}"/>" <br> <BR></td></tr>


<tr><td><font face="Arial" size="2"><br><x:out select="$d//customer/name"/></font></td></tr>
<tr><td><font face="Arial" size="2">Account Number -  <x:out select="$d//acct_no"/></font><br><br></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">

<tr><td><font face="Arial" size="2">Thank you for choosing Red Hat solutions. <br> <br> </font></td></tr> 

<c:if test="${tpl_vals[0] == 'EMEA' || tpl_vals[0] == 'NALA'}">

<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2">
According to our records, your Red Hat subscriptions have expired. Please be sure to renew them <c:choose><c:when test="${tpl_vals[2] == '0' || tpl_vals[2] == 'minus30'}">right away</c:when><c:otherwise>before the expiration date</c:otherwise></c:choose> to continue receiving the benefits of your subscriptions, including access to Red Hat software, updates, upgrades, technical support, security fixes, and Red Hat's Open Source Assurance Program. Please be sure to read the terms below to fully understand the terms of your renewal offer as our product configurations have changed. If you have any questions, I am your Red Hat sales representative and you can reach me at 
<a href=mailto:<x:out select="$d//client/rep_email"/>><x:out select="$d//client/rep_email"/></a>.

</font></td></tr>
</c:when>

<c:when test="${tpl_vals[2] == '0'}"> 
<tr><td><font face="Arial" size="2">
According to our records, your Red Hat subscriptions will EXPIRE TODAY. Please be sure to renew them right away to continue receiving the benefits of your subscriptions, including access to Red Hat software, updates, upgrades, technical support, security fixes, and Red Hat's Open Source Assurance Program. Please be sure to read the terms below to fully understand the terms of your renewal offer as our product configurations have changed. If you have any questions, I am your Red Hat sales representative and you can reach me at <a href=mailto:<x:out select="$d//client/rep_email"/>><x:out select="$d//client/rep_email"/></a>.

</font></td></tr>
</c:when>


<c:otherwise> 
<tr><td><font face="Arial" size="2">
According to our records, your Red Hat subscriptions will EXPIRE IN <c:out value="${stage}"/> DAYS. Please be sure to renew them before the expiration date to continue to receive the benefits of your subscriptions, including access to Red Hat software, updates, upgrades, technical support, security fixes, and Red Hat's Open Source Assurance Program. Please be sure to read the terms below to fully understand the terms of your renewal offer as our product configurations have changed. If you have any questions, I am your Red Hat sales representative and you can reach me at <a href=mailto:<x:out select="$d//client/rep_email"/>><x:out select="$d//client/rep_email"/></a>.


 </font></td></tr>

</c:otherwise>

</c:choose>
</c:if>



<c:if test="${tpl_vals[0] == 'APAC'}">




<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2">

According to our records, your Red Hat subscriptions detailed in the schedule below have <b>expired</b>. Please be sure to renew them right away to continue receiving the benefits of your subscriptions, including access to Red Hat software, updates, upgrades, technical support, security fixes, and Red Hat's Open Source Assurance Program. Please be sure to read the terms below to fully understand the terms of your renewal offer as our product configurations have changed. If you have any questions, I am your Red Hat sales representative and you can reach me at <a href=mailto:<x:out select="$d//client/rep_email"/>><x:out select="$d//client/rep_email"/></a>.

</font></td></tr>
</c:when>

<c:when test="${tpl_vals[2] == '0'}"> 
<tr><td><font face="Arial" size="2">
We thought you would like to know that your Red Hat subscriptions detailed in the schedule below will <b>expire today</b>. Please be sure to renew them before the expiration date to continue to receive the benefits of your subscriptions, including access to Red Hat software, updates, upgrades, technical support, security fixes, and Red Hat's Open Source Assurance Program. Please be sure to read the terms below to fully understand the terms of your renewal offer as our product configurations have changed. If you have any questions, I am your Red Hat sales representative and you can reach me at <a href=mailto:<x:out select="$d//client/rep_email"/>><x:out select="$d//client/rep_email"/></a>.

</font></td></tr>
</c:when>


<c:otherwise> 
<tr><td><font face="Arial" size="2">
We thought you would like to know that your Red Hat subscriptions detailed in the schedule below are due to expire in <b><c:out value="${stage}"/></b> days. Please be sure to renew them before the expiration date to continue to receive the benefits of your subscriptions, including access to Red Hat software, updates, upgrades, technical support, security fixes, and Red Hat's Open Source Assurance Program. Please be sure to read the terms below to fully understand the terms of your renewal offer as our product configurations have changed. If you have any questions, I am your Red Hat sales representative and you can reach me at <a href=mailto:<x:out select="$d//client/rep_email"/>><x:out select="$d//client/rep_email"/></a>.


 </font></td></tr>

</c:otherwise>

</c:choose>


<tr><td><font face="Arial" size="2"><br>In order to continue to receive the benefits of your subscription, please contact your Reseller, or alternatively contact our Partner Team at <a href ="renewal-apac-partners@redhat.com" >renewal-apac-partners@redhat.com</a>.
<BR></font></td></tr>
</c:if>



<tr><td><font face="Arial" size="2"><br>
We would also like to notify you that we have made several enhancements to provide you with more flexibility and value from your Red Hat subscription. These will provide you with a more customized and enhanced version of your current Red Hat solution. This transition includes new, more flexible product configurations, product numbers, pricing, support levels and optional layered products. As a result of the new configurations, your renewal price may vary from your original purchase price.</font></td></tr>


<tr><td><font face="Arial" size="2">
<br>
The following table shows the mapping of your current subscription to our new product structure, which will be delivered to you as you renew your subscription:<br>&nbsp;<br><br></font></td></tr>



</table>

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Contract<BR> No.</font></th>
<th  align="center" valign="center" style="font-size:8pt width:20%"><font face="Arial" size="2" color="ffffff">Purchase<br> order<br> number</font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Qty</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Old Product Description </font><br></th>
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

<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$p//contract_no"/> </font></td>
<td align="center" valign="center" style="width:5%"> <font face="Arial" style="font-size:8pt">  <x:out select="$d//existing_po"/> </font> </td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">  <x:out select="$p/desc"/>  </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/oldsku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font> </td>


<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/newprod"/>  </td>
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
</c:if></font></td>
</tr>
</c:when>
<c:otherwise>
  <tr bgcolor="e0e0e0">
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$p//contract_no"/> </font></td>
<td align="center" valign="center" style="width:5%"> <font face="Arial" style="font-size:8pt">  <x:out select="$d//existing_po"/> </font> </td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">  <x:out select="$p/desc"/>  </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/oldsku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font> </td>



<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/newprod"/>  </td>
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
</c:if></font></td>
</tr>
</c:otherwise>
</c:choose>

<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">


<tr><td><font face="Arial" size="2"><br><br>More information about our new product structure is available by visiting, <a href ="http://www.redhat.com/rhel/renew/">http://www.redhat.com/rhel/renew/</a>.<br><br></font></td></tr>

<tr><td><font face="Arial" size="2">Your Red Hat subscriptions provide you with continuous value to help solve your business problems every day. Red Hat measures this value based upon the number of systems running Red Hat software, so during the term of your agreement with Red Hat (i.e., while you have any active subscriptions), you are required to maintain a subscription for every installation/instance of Red Hat software. Only with these active subscriptions you have access to: <br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>New technologies: </b>Support for new chip-sets, major performance optimizations, workload-specific enhancements, and more are delivered quarterly as part of your subscription, at no additional charge. 
<li>
<b>Updates, bug fixes, security errata: </b>Enhancements, fixes, new features, and continued certifications are available throughout your subscription cycle.  
<li>
<b>Software testing and QA: </b> The latest technology is tested and packaged for you so you can run your critical deployments with confidence. 
<li>
<b>Upgrade flexibility:  </b> As long as your subscriptions are active, you can deploy any new versions released. 
<li>
<b>Technical support:  </b>Utilize unlimited incidents and support levels that meet your needs. 
<li>
<b>Hardware and software certifications: </b> Deploy solutions with the confidence that your software applications and hardware are fully certified. 
<li>
<b>Source code and documentation: </b> Access our software product binaries and documentation.
<li>
<b>Intellectual Property Assurance: </b>Red Hat's intellectual property assurance program, which provides certain safeguards in the event of a legal claim while you have a Red Hat subscription.
</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">You can learn more about the benefits and renewal requirements of your Red Hat subscription <a href ="http://www.redhat.com/subscriptions/" >here</a>.
</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">
If you think someone else should receive future notices about your Red Hat subscriptions, please email the details to

<c:choose>

<c:when  test="${tpl_vals[0] == 'EMEA'}">
 <a href=mailto:customerdata-emea@redhat.com>customerdata-emea@redhat.com</a>.
<c:if test="${tpl_vals[2] != 'minus30'}">Please be sure to include your Red Hat Login ID and your contract number.</c:if>

 <BR></font></td></tr>
</c:when>

<c:when  test="${tpl_vals[0] == 'NALA'}">
<a href=mailto:customerdata-na@redhat.com>customerdata-na@redhat.com</a>. Please be sure to include your Red Hat Login ID and your contract number. <BR></font></td></tr>
</c:when>

<c:when  test="${tpl_vals[0] == 'APAC'}">
<a href=mailto:customerdata-apac@redhat.com>customerdata-apac@redhat.com</a>. Please be sure to include your Red Hat Login ID and your contract number.<BR></font></td></tr>
</c:when>

<c:otherwise>

<BR></font></td></tr>
  
</c:otherwise>
</c:choose>



<c:if test="${tpl_vals[0] == 'EMEA'}"> 
<tr><td><font face="Arial" size="2"><br><br>
If you need any additional information or want to learn about our other services, you can also contact me at <a href="http://www.redhat.com/about/contact/dir/">http://www.redhat.com/about/contact/dir/</a>
<BR><BR></font></td></tr>
</c:if>



<c:if test="${tpl_vals[0] == 'APAC' || tpl_vals[0] == 'NALA' }">
<tr><td><font face="Arial" size="2"><br><br>If you need any additional information or want to learn about our other services, you can also contact me at <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/phone"/></x:when><x:otherwise><x:out select="$d//client/rep_tel"/></x:otherwise></x:choose>.
<BR><BR></font></td></tr>
</c:if>

<tr><td><font face="Arial" size="2">Yours Sincerely,<br><br></font> </td></tr> 
 



<tr><td><font face="Arial" size="2">


<x:out select="$d//client/rep_name"/>
<br><br><br></font> </td></tr> 

<tr><td><font face="Arial" size="1">

© 2011 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>