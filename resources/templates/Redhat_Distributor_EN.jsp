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

<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/rh-distrsl/Rh_banner_${fn:substringAfter(values.tplname,'Redhat_')}.gif"/> 
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="" width="660" border="0">

<tr><td><img src="<c:out value="${rh_img}"/>" <br> <BR><BR></td></tr>


<tr><td><font face="Arial" size="2">Dear Red Hat Distributor, <br> <br> </font></td></tr> 
<tr><td><font face="Arial" size="2">
This is a weekly courtesy email to inform you that, according to our records, your partners have customers whose Red Hat subscriptions are expiring soon. Please remind your partners to act. They should get in contact with their customers in order to renew and to ensure continued receipt of ongoing important updates, fixes, and security patches.
</font></td></tr>
<tr><td>
<font face="Arial" size="2"><br>
Please access the <b>Red Hat Renewals Portal</b> to view your partners' Red Hat subscription details that are due to expire.</font></td></tr>
<tr><td><font face="Arial" size="2">
<br><b><u>Red Hat Renewals Portal</U></b>
</font></td></tr>
<tr><td><font face="Arial" size="2"><br>
<b><I>What is the Renewals Portal?</I></b><br>
The Red Hat Renewals Portal is a centralized web-based application where you, the partner can access information about subscription renewals. The Renewals Portal provides you with all the necessary information to prioritize and execute on upcoming subscription renewals, and also gives you dashboard reporting on your quarterly subscription renewal performance.

<br>&nbsp<br></font></td></tr>

<tr><td><font face="Arial" size="2">
<b><I>How do I access the Renewals Portal?</I></b><br>
Go to <a href="https://redhat.connectpartnerportal.com">https://redhat.connectpartnerportal.com</a> and enter the login credentials provided to you by the Red Hat renewals team. 
</font></td></tr>

<tr><td><font face="Arial" size="2"><br>
<b><I>How to Receive a Login to the Renewals Portal?</I></b><br>
If you have not received login credentials to the Red Hat Renewals Portal, please contact <br><a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a> and we will provide access credentials for you.
<br>&nbsp<br></font></td></tr>

<tr><td><font face="Arial" size="2">
<b><I>Renewals Portal Help</I></b><br>
Should you have difficulty in using the portal, or accessing the link to the renewals page please contact: <br><a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a>
<br>&nbsp<br></font></td></tr>
<tr><td><font face="Arial" size="2">
Please note that all partners receive notification emails on a weekly basis encouraging them to follow-up on their customer accounts.
<br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2">
If you should require any additional information or want to learn about our other services, please contact our Partner Help desk team: <br><br></font> </td></tr> 

<tr><td><font face="Arial" size="2">
Email: <a href="mailto:emea-partner-team@redhat.com">emea-partner-team@redhat.com</a>
<br><br></font> </td></tr> 


<tr><td><font face="Arial" size="2">
Telephone:
<br></font> </td></tr> 
<tr><td><font face="Arial" size="2">
+44 1252 362 851 [English, German, and French]
<br></font> </td></tr> 
<tr><td><font face="Arial" size="2">
+44 1252 362 878 [English, Italian, Spanish]<br><br></font> </td></tr> 
 

<tr><td><font face="Arial" size="2">
Sincerely,
<br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2">
Red Hat Renewals Team
<br><br></font> </td></tr> 
<tr><td><font face="Arial" size="1">
© 2011 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.
</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
