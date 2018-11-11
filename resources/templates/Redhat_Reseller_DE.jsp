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

<tr><td><font face="Arial" size="2">Lieber Partner, <br> <br> </font></td></tr> 


<tr><td><font face="Arial" size="2">
Diese wöchentliche E-Mail ist eine freundliche Mitteilung, dass Ihre Kunden nach unseren Unterlagen Red Hat Abonnements haben, die in Kürze auslaufen. Bitte nehmen Sie mit diesen Kunden Kontakt auf, damit sie ihre Abonnements verlängern und auch weiterhin wichtige Verbesserungen, Updates und Sicherheitspatches erhalten.

</font></td></tr>



<tr><td><font face="Arial" size="2">
<br>

Die folgende Tabelle fasst Red Hat Abonnements Ihrer Kunden zusammen, die in den nächsten 30 Tagen auslaufen:
<br>&nbsp<br><br></font></td></tr>



</table>

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Name des Kunden:</font><br></th>

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Vertrags-nummer</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Anzahl</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">SKU Konfiguriert</font><br></th>
<th  align="center" valign="center">
<font face="Arial" size="2" color="ffffff">Konfigurierte Produkt-beschreibung</font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Ablauf-datum
</font><br></th>


</tr>
<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/products/product" var="p">

<c:choose>
<c:when test="${pcount mod 2 == '0'}">

<tr>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">    <x:out  select="$p/customer_name"/></font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$p/contract_no"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">    <x:out select="$p/desc"/>  </font> </td>

<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
</c:if></font></td>
</tr>
</c:when>
<c:otherwise>
  <tr bgcolor="e0e0e0">
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">    <x:out  select="$p/customer_name"/></font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$p/contract_no"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">    <x:out select="$p/desc"/>  </font> </td>

<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %></c:if></font></td></tr>
</c:otherwise>
</c:choose>

<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">

<tr><td><font face="Arial" size="2"><br><br>Bitte beachten Sie, dass Ihre Kunden als Erinnerung an eine Verlängerung E-Mails nach 90, 60, 
30, 0 und -30 Tagen erhalten, um sie über die Vorteile und den Wert ihrer Abonnements und auf die Vertragsdetails hinzuweisen.

<br><br></font></td></tr>

<tr><td><font face="Arial" size="2">Wenn Sie weitere Informationen benötigen oder mehr über unsere anderen Dienstleistungen erfahren möchten, kontaktieren Sie bitte unser Partner Help-Desk-Team unter  <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a>. <br><br></font></td></tr>
<tr><td><font face="Arial" size="2">
Mit freundlichen Grüßen,
<br><br></font> </td></tr> 
 



<tr><td><font face="Arial" size="2">
Red Hat Renewals Team
<br><br><br></font> </td></tr> 

<tr><td><font face="Arial" size="1">
© 2011 Red Hat, Inc. Alle Rechte vorbehalten. Red Hat, Red Hat Enterprise Linux, das Shadowman-Logo und JBoss sind eingetragene Warenzeichen von Red Hat, Inc. in den USA und anderen Ländern. Linux ist ein eingetragenes Warenzeichen von Linus Torvalds. Alle anderen Warenzeichen sind Eigentum ihrer jeweiligen Inhaber.
</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
