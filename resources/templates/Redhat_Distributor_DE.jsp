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

<tr><td><font face="Arial" size="2">Lieber Red Hat Vertriebshändler,<br> <br> </font></td></tr> 
<tr><td><font face="Arial" size="2">
Diese wöchentliche E-Mail ist eine freundliche Mitteilung, dass Ihre Partner Kunden haben, deren Red Hat Abonnements nach unseren Unterlagen in Kürze auslaufen. Bitte erinnern Sie Ihre Partner daran, tätig zu werden. Zwecks Verlängerung sollten Ihre Partner in Kontakt mit ihren Kunden treten, um weiterhin den Erhalt von laufenden wichtigen Updates, Verbesserungen und Sicherheitspatches zu gewährleisten.</font></td></tr>
<tr><td>
<font face="Arial" size="2"><br>
Auf dem <b>Red Hat Renewals Portal</b> können Sie die Details der demnächst auslaufenden Red Hat Abonnements ihrer Partner sehen.</font></td></tr>
<tr><td><font face="Arial" size="2">
<br><b><u>Red Hat Renewals Portal</U></b>
</font></td></tr>
<tr><td><font face="Arial" size="2"><br>
<b><I>Was ist das Renewals Portal?
</I></b><br>
</font></td></tr>



<tr><td><font face="Arial" size="2">

Das Red Hat Renewals Portal ist eine zentrale webbasierte Anwendung, wo Sie, der Partner auf Informationen über Abonnementverlängerungen zugreifen können. Das Renewals Portal bietet Ihnen alle notwendigen Informationen, um anstehende Abonnementverlängerungen nach Prioritäten zu ordnen und abzuarbeiten, sowie weiterhin Dashboard-Mitteilungen über Ihr vierteljährliches Abo-Verlängerungsergebnis.
<br>&nbsp<br></font></td></tr>

<tr><td><font face="Arial" size="2">
<b><I>Wie greife ich auf das Renewals Portal zu?</I></b><br>
</font></td></tr>

<tr><td><font face="Arial" size="2">
Rufen Sie <a href="https://redhat.connectpartnerportal.com">https://redhat.connectpartnerportal.com</a> auf und geben Sie die Zugangsdaten ein, die Sie vom Red Hat Renewals Team erhalten haben. 
</font></td></tr>

<tr><td><font face="Arial" size="2">
<b><I><br>Wie erhalte ich ein Login für das Renewals Portal?</I></b><br>
</font></td></tr>

<tr><td><font face="Arial" size="2">
Wenn Sie keine Zugangsdaten für das Red Hat Renewals Portal erhalten haben, wenden Sie sich bitte an <a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a> und wir stellen Ihnen die Zugangsdaten zur Verfügung.
<br><br>
</font></td></tr>

<tr><td><font face="Arial" size="2">
<b><I>Renewals Portal Hilfe
</I></b>
</font></td></tr>

<tr><td><font face="Arial" size="2">
Sollten Sie Schwierigkeiten bei der Verwendung des Portals oder beim Zugriff auf den Link zu der Seite haben, kontaktieren Sie bitte: <a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a>
<br>&nbsp<br></font></td></tr>

<tr><td><font face="Arial" size="2">
Bitte beachten Sie, dass alle Partner wöchentliche Mitteilungen per E-Mail als Anreiz erhalten, ihre Kundenkonten nachzuverfolgen.<br><br></font> </td></tr> 

<tr><td><font face="Arial" size="2">

Wenn Sie weitere Informationen benötigen oder mehr über unsere anderen Dienstleistungen erfahren möchten, kontaktieren Sie bitte unser Partner Help-Desk-Team: 

 <br><br></font> </td></tr> 

<tr><td><font face="Arial" size="2">
E-Mail <a href="mailto:emea-partner-team@redhat.com">emea-partner-team@redhat.com</a>
<br></font> </td></tr> 


<tr><td><font face="Arial" size="2">
<br>Telephone:
<br></font> </td></tr> 
<tr><td><font face="Arial" size="2">
+44-1252-362-851 [Englisch, Deutsch und Französisch]
<br></font> </td></tr> 
<tr><td><font face="Arial" size="2">
+44-1252-362-878 [Englisch, Italienisch, Spanisch]
<br><br></font> </td></tr> 
 

<tr><td><font face="Arial" size="2">
Mit freundlichen Grüßen,
<br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2">
Red Hat Renewals Team
<br><br></font> </td></tr> 
<tr><td><font face="Arial" size="1">
© 2011 Red Hat, Inc. Alle Rechte vorbehalten. Red Hat, Red Hat Enterprise Linux, das Shadowman-Logo und JBoss sind eingetragene Warenzeichen von Red Hat, Inc. in den USA und anderen Ländern. Linux ist ein eingetragenes Warenzeichen von Linus Torvalds. Alle anderen Warenzeichen sind Eigentum ihrer jeweiligen Inhaber.</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
