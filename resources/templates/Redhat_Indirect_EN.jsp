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
<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.gif"/> 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><img src="<c:out value="${rh_img}"/>"  <br> <br></td></tr>

<tr><td><font face="Arial" size="2"><br>Account Number -  <x:out select="$d//acct_no"/></font></td></tr><tr><td></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>We thought you would like to know that your Red Hat subscriptions detailed in the schedule below are 
<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
expired.
</c:when>

<c:otherwise> 
due to expire.
</c:otherwise>
</c:choose>
</font></td></tr> 

<c:choose>
<c:when test="${tpl_vals[0] == 'EMEA'}"> 
<tr><td><font face="Arial" size="2">
<BR>In order to receive the benefits of your subscription, please contact your reseller or our Partner Team on the email below.
</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR>We would also like to notify you that we have made several enhancements to provide you with more flexibility and value from your Red Hat subscription.  These will provide you with a more customized and enhanced version of your current Red Hat solution.
</font></td></tr>
<tr><td><font face="Arial" size="2"><BR>The following table shows the mapping of your current subscription to our new product structure, which will be delivered to you as you renew your subscription: <br>&nbsp<br></font></td></tr>

</c:when>
<c:otherwise>
<tr><td><font face="Arial" size="2"> <BR>In order to continue to receive the benefits of your subscriptions, including access to Red Hat software, updates, upgrades, technical support, security fixes, and Red Hat's Open Source Assurance program, please contact your reseller or our partner helpdesk on the email below and we will arrange the renewal of your subscriptions.
</font></td></tr>
<tr><td><font face="Arial" size="2"><br>We also want to take this opportunity to notify you that based on feedback from our customers, we have made several enhancements to provide you with more flexibility and value from your Red Hat subscription.   When you renew your subscription, we will provide you with a more customized, enhanced version of the solution that you are currently using from Red Hat.</font></td></tr>

<tr><td><font face="Arial" size="2"> <BR>The following table shows the mapping of your current subscription to our new packaging offerings, which will be delivered to you as you renew your subscription: <br>&nbsp<br></font></td></tr>

</c:otherwise>
</c:choose>





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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><x:choose><x:when select="$d/country[ . = 'United States of America']"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "MM/dd/yyyy") %></x:when><x:otherwise><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd/MM/yyyy") %></x:otherwise></x:choose></c:if></font></td>
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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><x:choose><x:when select="$d/country[ . = 'United States of America']"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "MM/dd/yyyy") %></x:when><x:otherwise><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd/MM/yyyy") %></x:otherwise></x:choose></c:if></font></td>
<td align="center" valign="center"><font face="Arial" style="font-size:8pt">  <x:out  select="$d//reseller"/></font> </td>

</c:otherwise>
</c:choose>

</tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>
<br>

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>More information about our new packaging offerings is available by visiting, <a href ="http://www.redhat.com/rhel/renew/"> http://www.redhat.com/rhel/renew/ </a> <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">Your Red Hat subscriptions provide you continuous value to help solve your business problems every day. Red Hat measures this value based the number of resources running Red Hat software, so while you have any active subscriptions, you are required to maintain a subscription for every installation/instance of Red Hat software. Only with these subscriptions do you have access to: <br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>New technologies: </b>Support for new chip-sets, major performance optimizations, workload-specific enhancements, and more are delivered quarterly as part of your subscription, at no additional charge. 
<li>
<b>Updates, bug fixes, security errata:  </b>Enhancements, fixes, new features, and continued certifications are available throughout your subscription cycle.  
<li>
<b>Software testing and QA:  </b>The latest technology is tested and packaged for you so you can run your critical deployments with confidence. 
<li>
<b>Upgrade flexibility:  </b>As long as your subscriptions are active, you can deploy any new versions released. 
<li>
<b>Technical support:  </b>Utilize unlimited incidents and support levels that meet your needs. 
<li>
<b>Hardware and software certifications: </b> Deploy solutions with the confidence that your software applications and hardware are fully certified. 
<li>
<b>Source code and documentation: </b>Access our software product binaries and documentation.
<br>
<li>
<b>Intellectual Property Assurance: </b>Red Hat's intellectual property assurance program, which provides certain safeguards in the event of a legal claim while you have a Red Hat subscription.
</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">You can learn more about the benefits and renewal requirements of your Red Hat subscription <a href= "https://www.redhatrenewal.com/16LZ/lz.aspx?p1=WRg1CmP7L8J+EZUTYDEbiuxId2hg5xgods/r0SbP8Hc=&w=60">here</a>.

</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">If you require any additional information, or information on our other services, please contact your reseller.
</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">In case you don't have a favorite reseller, you easily can choose one by using the following <a href ="https://www.redhatrenewal.com/EUROPE/lz.aspx?p1=K3cxyaSY2KYM0KzYq+7T6DUtK4seG+N5IzFXbkF1NEeXRTbPsLBcDw==&w=40" > link</a>.</font><br><br></td></tr>

<c:choose>
<c:when test="${tpl_vals[0] == 'EMEA'}"> 
<tr><td><font face="Arial" size="2">If you think someone else should receive these notifications in future, please email </c:when>
<c:otherwise>
<tr><td><font face="Arial" size="2">If you think someone else should receive future notices about your Red Hat subscriptions,  please email the details to 

</c:otherwise>

</c:choose>

<c:if test="${tpl_vals[0] == 'APAC'}"> <a href=mailto:customerdata-apac@redhat.com> customerdata-apac@redhat.com </a> </c:if>

<c:if test="${tpl_vals[0] == 'NALA'}"> <a href=mailto:customerdata-na@redhat.com> customerdata-na@redhat.com </a></c:if>

<c:if test="${tpl_vals[0] == 'EMEA'}"> <a href=mailto:customerdata-emea@redhat.com> customerdata-emea@redhat.com </a></c:if>


 <BR>
</font><br></td></tr>
<tr><td><font face="Arial" size="2">We are pleased to support you. <BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2">Yours Sincerely,<br><br><b></b><br><br></font></td></tr>
<tr><td><font face="Arial" size="2">Red Hat Renewals Team<br><br><b></b><br><br></font></td></tr>

<tr><td><font face="Arial" size="1">

© 2009 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
