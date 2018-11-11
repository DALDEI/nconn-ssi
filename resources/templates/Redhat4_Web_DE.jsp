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

<tr><td><font face="Arial" size="2"><br>  <x:out select="$d//customer/name "/></font><br></td></tr>
<tr><td><font face="Arial" size="2"> Konto Nummer -   <x:out select="$d//acct_no"/></font><br></td></tr>


</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Vielen Dank, dass Sie Lösungen von Red Hat gewählt haben. 
 <br> <br> </font></td></tr> 

<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2">
Unseren Unterlagen zur Folge sind Ihre Red Hat Abonnements abgelaufen. Bitte achten Sie darauf, diese umgehend zu erneuern, um auch weiterhin in den Genuss der Vorteile Ihrer Abonnements, wie Zugriff auf Red Hat Software, Updates, Upgrades, technischen Support, sicherheitsrelevante Aktualisierungen sowie das Open Source Assurance Program von Red Hat, zu kommen. Bitte lesen Sie unbedingt die nachfolgenden Bedingungen, damit Sie die Konditionen Ihres Verlängerungsangebotes vollständig verstehen, da sich unsere Produktkonfigurationen geändert haben. 
</font></td></tr>
</c:when>
<c:when test="${tpl_vals[2] == '0'}"> 
<tr><td><font face="Arial" size="2">
Unseren Unterlagen zur Folge werden Ihre Red Hat Abonnements HEUTE ABLAUFEN. Bitte achten Sie darauf, diese umgehend zu erneuern, um auch weiterhin in den Genuss der Vorteile Ihrer Abonnements, wie Zugriff auf Red Hat Software, Updates, Upgrades, technischen Support, sicherheitsrelevante Aktualisierungen sowie das Open Source Assurance Program von Red Hat, zu kommen. Bitte lesen Sie unbedingt die nachfolgenden Bedingungen, damit Sie die Konditionen Ihres Verlängerungsangebotes vollständig verstehen, da sich unsere Produktkonfigurationen geändert haben. 

</font></td></tr>
</c:when>


<c:otherwise> 
<tr><td><font face="Arial" size="2">
Unseren Unterlagen zur Folge werden Ihre Red Hat Abonnements IN <c:out value="${stage}"/> TAGEN ABLAUFEN. Bitte achten Sie darauf, diese vor dem Ablaufdatum zu erneuern, um auch weiterhin in den Genuss der Vorteile Ihrer Abonnements, wie Zugriff auf Red Hat Software, Updates, Upgrades, technischen Support, sicherheitsrelevante Aktualisierungen sowie das Open Source Assurance Program von Red Hat, zu kommen. Bitte lesen Sie sich unbedingt die nachfolgenden Bedingungen durch, damit Sie die Konditionen Ihres Verlängerungsangebotes vollständig verstehen, da sich unsere Produktkonfigurationen geändert haben. 


</font></td></tr>
</c:otherwise>
</c:choose>

<tr><td><font face="Arial" size="2">
<BR>

Um die bestmöglichsten Subskriptionen zu erhalten, bieten wir Ihnen die Möglichkeit sich mit einem unserer zahlreichen Red Hat Partnern in Verbindung zu setzen um Ihren Bedarf aufs genaueste zu klären. Um diesen Service in Anspruch zu nehmen, antworten Sie bitte auf dieses Email (<a href=mailto:renewals-emea@redhat.com >renewals-emea@redhat.com</a>) und unser Renewals Team wird Sie mit einem entsprechenden Partner in Verbindung bringen. Möchten Sie keine Hilfe in Anspruch nehmen und sind Sie mit Ihrere Auswahl zufrieden, bitte clicken Sie hier: </font></td></tr>

<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>  <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat2/button_renew_now_DE.gif" border=0> </a> <br><br></font> </td></tr> 



<tr><td><font face="Arial" size="2">
<BR>

Wir möchten Sie außerdem darüber informieren, dass wir mehrere Verbesserungen gemacht haben, damit Sie von Ihrem Red Hat Abonnement mehr Flexibilität und Nutzen erhalten. Diese bieten Ihnen eine mehr an den Kunden angepasste und verbesserte Version Ihrer aktuellen Red Hat Lösung. Dieser Übergang beinhaltet neue, flexiblere Produktkonfigurationen, Produktnummern, Preise, Support-Ebenen und optionale Stufenprodukte. Als Folge der neuen Konfigurationen kann Ihr Preis für die Verlängerung von Ihrem ursprünglichen Kaufpreis abweichen.</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR>
Die folgende Tabelle zeigt die Zuordnung Ihres derzeitigen Abonnements zu unserer neuen Produktstrukturierung, die Sie erhalten, wenn Sie Ihr Abonnement verlängern:<BR>&nbsp;<BR>
</font></td></tr>


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


</tr>
<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/products/product" var="p">

<c:choose>
<c:when test="${pcount mod 2 == '0'}">

<tr>

<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$p//contract_no"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">  <x:out select="$p/desc"/>  </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/oldsku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font> </td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/newprod"/>  </td>
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %></c:if></font></td>
</tr>
</c:when>
<c:otherwise>
  <tr bgcolor="e0e0e0">
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$p//contract_no"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">  <x:out select="$p/desc"/>  </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/oldsku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font> </td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/newprod"/>  </td>
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %></c:if></font></td>
</tr>
</c:otherwise>
</c:choose>

<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>
<br>
<br>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"> Ihre Red Hat-Abonnements bieten Ihnen kontinuierlichen Wert und helfen Ihnen täglich bei der Lösung Ihrer Geschäftsprobleme. Red Hat bemisst diesen Wert aufgrund der Anzahl der Systeme, die mit Red Hat Software arbeiten. Das heißt, dass Sie während der Laufzeit Ihres Vertrages mit Red Hat (also während Sie aktive Abonnements haben) ein Abonnement für jede Installation bzw. für jedes Exemplar der Red Hat Software haben müssen. Nur mit diesen aktiven Abonnements haben Sie Zugriff auf:  <br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Neue Technologien: </b>Unterstützung für neue Chipsätze, wesentliche Leistungsoptimierungen, belastungsspezifische Verbesserungen und mehr, werden ohne zusätzliche Kosten vierteljährlich als Teil unseres Abonnements geliefert.
<li>
<b>Upgrades, Fehlerbehebungen, Sicherheitserrata: </b>Verbesserungen, Fehlerbehebungen, neue Funktionen, und fortgesetzte Zertifizierungen sind über Ihren Abonnementszyklus durchgehend verfügbar.
<li>
<b>Software Test und QS: </b>Die neueste Technologie wird für Sie getestet und gebündelt, so dass Sie Ihre kritischen Bereitstellungen mit Vertrauen ausführen können.
<li>
<b>Upgrade Flexibilität: </b>Solange Ihre Abonnements aktiv sind, können Sie neu herausgebrachte Versionen einsetzen.
<li>
<b>Technische Unterstützung: </b>Nutzen Sie Unterstützungsebenen, die Ihrem Bedarf entsprechen.   
<li>
<b>Hardware und Software Zertifizierungen: </b>Setzen Sie Lösungen in dem Vertrauen ein, dass Ihre Software Anwendungen und Ihre Hardware voll zertifiziert sind.

<li>
<b>Quellcode und Dokumentation: </b>Greifen Sie auf den Binärcode und die Dokumentation Ihres Software Produktes zu. 
<li>
<b>Zusicherung auf geistiges Eigentum: </b>Red Hat’s Programm zur Zusicherung auf geistiges Eigentum, das für den Fall eines Rechtsanspruches, während Ihres Red Hat Abonnements, bestimmte Sicherheitsmaßnahmen trifft.

</ul>


</font></td></tr>


<tr><td><font face="Arial" size="2"><a href ="http://www.redhat.com/subscriptions/" >Hier</a> können Sie mehr über die Vorteile und Anforderungen für die Verlängerung Ihres Red Hat Abonnements erfahren.  </a>
</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">
Wenn Sie glauben, jemand anderes sollte künftige Mitteilungen über Ihre Red Hat-Abonnements erhalten, schicken Sie bitte eine E-Mail mit näheren Einzelheiten an  <a href=mailto:renewals-emea@redhat.com >renewals-emea@redhat.com</a>. Bitte geben Sie darin unbedingt Ihre Red Hat Login-ID sowie Ihre Vertragsnummer an.</font><br><br><br></td></tr>

<tr><td><font face="Arial" size="2"> 
Mit freundlichen Grüssen,<br><br><br></font>  </td></tr>


<tr><td><font face="Arial" size="2">Das Red Hat Team für Verlängerungen<br><br><br></font> </td></tr> 
 

<tr><td><font face="Arial" size="1">
© 2011 Red Hat, Inc. Alle Rechte vorbehalten. Red Hat, Red Hat Enterprise Linux, das Shadowman Logo und JBoss sind eingetragene Warenzeichen von Red Hat, Inc. in den U.S.A. und anderen Ländern. Linux ist ein eingetragenes Warenzeichen von Linus Torvalds. Alle anderen Warenzeichen sind Eigentum ihrer jeweiligen Inhaber.
<BR><BR></font></td></tr>

</table>



</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
