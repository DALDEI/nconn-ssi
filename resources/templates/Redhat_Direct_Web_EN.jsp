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

<tr><td><img src="<c:out value="${rh_img}"/>" <br> <BR></td></tr>


<tr><td><font face="Arial" size="2"><br><x:out select="$d//customer/name"/></font></td></tr>
<tr><td><font face="Arial" size="2">Account Number -  <x:out select="$d//acct_no"/></font><br><br></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">

<c:choose>
<c:when test="${tpl_vals[0] == 'EMEA'}"> 
<tr><td><font face="Arial" size="2"> Thank you for choosing Red Hat solutions. <br> <br> </font></td></tr> 

</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2">Greetings and thank you for choosing Red Hat solutions. <br> <br> </font></td></tr> 

</c:otherwise>
</c:choose>


<tr><td><font face="Arial" size="2"> According to our records, your Red Hat subscriptions 

<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}"> 
will EXPIRE IN <c:out value="${stage}"/> DAYS.
</c:when>

<c:otherwise> 
have expired.
</c:otherwise>
</c:choose>


<c:choose>
<c:when test="${tpl_vals[0] == 'EMEA'}"> 
Please be sure to renew them before the expiration date to continue to receive the benefits of your subscriptions.
</font></td></tr>
<br>
<c:if test="${tpl_vals[1] == 'Web'}">  

<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>
Click Here to  <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/button_renew_now.gif" border=0> </a> <br><br></font> </td></tr> 
</c:if>


<tr><td><font face="Arial" size="2">
<BR>
We would also like to notify you that we have made several enhancements to provide you with more flexibility and value from your Red Hat subscription. These will provide you with a more customized and enhanced version of your current Red Hat solution.
</font></td></tr>


<tr><td><font face="Arial" size="2">
<BR>

The following table shows the mapping of your current subscription to our new product structure, which will be delivered to you as you renew your subscription:<BR>&nbsp;<BR>

</font></td></tr>
</c:when>


<c:otherwise>
Please be sure to renew them before the expiration date to continue to receive the benefits of your subscriptions, including access to Red Hat software, updates, upgrades, technical support, security fixes, and Red Hat's Open Source Assurance Program.
</font></td></tr> 

<c:if test="${tpl_vals[1] == 'Web'}">  

<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>Click Here to  <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/button_renew_now.gif" border=0> </a> <br><br></font> </td></tr> 
</c:if>


<tr><td><font face="Arial" size="2">
<BR>We also want to take this opportunity to notify you that based on feedback from our customers, we have made several enhancements to provide you with more flexibility and value from your Red Hat subscription.   When you renew your subscription, we will provide you with a more customized, enhanced version of the solution that you are currently using from Red Hat.</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR>The following table shows the mapping of your current subscription to our new packaging offerings, which will be delivered to you as you renew your subscription:<BR>&nbsp;<BR>

</font></td></tr>

</c:otherwise>

</c:choose>

</font></td></tr>

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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><x:choose><x:when select="$d/country[ . = 'United States of America']"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "MM/dd/yyyy") %></x:when><x:otherwise><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd/MM/yyyy") %></x:otherwise></x:choose></c:if></font></td>
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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><x:choose><x:when select="$d/country[ . = 'United States of America']"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "MM/dd/yyyy") %></x:when><x:otherwise><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd/MM/yyyy") %></x:otherwise></x:choose></c:if></font></td>
</tr>
</c:otherwise>
</c:choose>

<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>
<br>
<br>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2">Your Red Hat subscriptions provide you continuous value to help solve your business problems every day. Red Hat measures this value based the number of resources running Red Hat software, so while you have any active subscriptions, you are required to maintain a subscription for every installation/instance of Red Hat software. Only with these subscriptions do you have access to: <br><br></font></td></tr>
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
<c:choose>
<c:when test="${tpl_vals[0] == 'EMEA'}"> 
<b>Technical support: </b>Utilize support levels that meet your needs.  
</c:when>
<c:otherwise>
<b>Technical support:  </b>Utilize unlimited incidents and support levels that meet your needs. 
</c:otherwise>
</c:choose>
<li>
<b>Hardware and software certifications: </b> Deploy solutions with the confidence that your software applications and hardware are fully certified. 
<c:if test="${tpl_vals[0] == 'EMEA'}"> 
<li>
<b>Source code and documentation: </b> Access our software product binaries and documentation.
</c:if>
<li>
<b>Intellectual Property Assurance: </b>Red Hat's intellectual property assurance program, which provides certain safeguards in the event of a legal claim while you have a Red Hat subscription.
</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">You can learn more about the benefits and renewal requirements of your Red Hat subscription <a href ="http://www.redhat.com/subscriptions/" >here. </a>
</font><br><br></td></tr>


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

<c:choose>
<c:when test="${tpl_vals[1] == 'Direct'}"> 

<tr><td><font face="Arial" size="2">If you need any additional information or want to learn about our other services, please contact me at <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/phone"/></x:when><x:otherwise><x:out select="$d//client/rep_tel"/></x:otherwise></x:choose>.
<BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2"> Sincerely,  <br><br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> <x:choose>
<x:when select="$d//client/rep_name/node()">

<x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/name"/></x:when><x:otherwise><x:out select="$d//client/rep_name"/></x:otherwise></x:choose> 
</x:when>
<x:otherwise>
<x:out select="$d//ssirep/name"/>
</x:otherwise>
</x:choose><br><br><br></font> </td></tr> 

</c:when>

<c:when test="${tpl_vals[1] == 'Web'}"> 
<tr><td><font face="Arial" size="2"> 
We are pleased to support you. 
<br><br></font>  </td></tr>

<tr><td><font face="Arial" size="2">Sincerely,<br><br><b><br><br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> Red Hat Renewals Team <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 900 Main Campus Dr.<br><br> </font> </td></tr> 
<tr><td><font face="Arial" size="2"> Raleigh, NC 27606 <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 877-707-3757<br> <br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> <a href=mailto:renewals@redhat.com > renewals@redhat.com</a> <br><br><br></font> </td></tr> 


</c:when>
</c:choose>
<tr><td><font face="Arial" size="1">

© 2009 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
