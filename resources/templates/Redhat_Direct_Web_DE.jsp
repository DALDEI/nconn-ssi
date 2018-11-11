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

<tr><td><font face="Arial" size="2"><br>  <x:out select="$d//customer/name "/></font><br></td></tr>
<tr><td><font face="Arial" size="2"> Kontonummer -   <x:out select="$d//acct_no"/></font><br></td></tr>


</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>vielen Dank, dass Sie Lösungen von Red Hat gewählt haben. 
 <br> <br> </font></td></tr> 

<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}"> 
<tr><td><font face="Arial" size="2">
Unseren Unterlagen zufolge werden Ihre Red Hat Abonnements IN <c:out value="${stage}"/>  TAGEN ABLAUFEN. Bitte stellen Sie sicher, dass Sie diese vor dem Ablaufdatum verlängern, damit Sie weiterhin die Vorteile Ihrer Abonnements nutzen können.

</font></td></tr>
</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2">
Unseren Unterlagen zur Folge sind Ihre Red Hat Abonnements abgelaufen. Bitte stellen Sie sicher, dass Sie diese vor dem Ablaufdatum verlängern, damit Sie weiterhin die Vorteile Ihrer Abonnements nutzen können.

</font></td></tr>
</c:otherwise>
</c:choose>

<c:if test="${tpl_vals[1] == 'Web'}">  

<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>
Bitte klicken Sie HIER, um  <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/button_renew_now_DE.gif" border=0> </a> <br><br></font> </td></tr> 
</c:if>



<tr><td><font face="Arial" size="2">
<BR>

Wir möchten Sie außerdem darüber informieren, dass wir verschiedene Verbesserungen vorgenommen haben, damit  lhnen lhr Red Hat Abonnement mehr Flexibilität und Nutzen bietet. Somit erhalten Sie eine mehr an lhre Bedürfnisse angepasste und verbesserte Version Ihrer aktuellen Red Hat Lösung. 

</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR>
Die folgende Tabelle zeigt lhnen die Zuordnung lhres derzeitigen Abonnements zu unserer neuen Produktstruktur, welche lhnen geliefert wird, wenn Sie Ihr Abonnement verlängern:

<BR>&nbsp;<BR>
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
<tr><td><font face="Arial" size="2"> Ihr Red Hat Abonnement bietet Ihnen dauerhaften Nutzen und hilft Ihnen tagtäglich, Ihre Betriebsprobleme zu lösen. Red Hat misst diesen Nutzen unter Zugrundelegung der Anzahl der Maschinen, auf denen Red Hat Software betrieben wird; d.h. wenn Sie ein aktives Abonnement besitzen, müssen Sie für jede Installation/jedes Exemplar von Red Hat Software ein Abonnement unterhalten. Nur mit diesen aktiven Abonnements haben Sie Zugriff auf:
  <br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Neue Technologien: </b>Unterstützung für neue Chipsätze, wesentliche Leistungsoptimierungen, belastungsspezifische Verbesserungen und mehr werden vierteljährlich kostenlos als Teil lhres Abonnements geliefert.
<li>
<b>Upgrades, Fehlerbehebungen, Sicherheitserrata: </b>Verbesserungen, Fehlerbehebungen, neue Funktionen und fortlaufende Zertifizierungen sind während der Laufzeit Ihres Abonnements durchgehend verfügbar.
<li>
<b>Softwaretest und QS: </b>Die neueste Technologie wird für Sie getestet und gebündelt, so dass Sie Ihre betriebskritischen Systeme mit Zuversicht betreiben können.
<li>
<b>Upgrade Flexibilität: </b>Solange Ihre Abonnements aktiv sind, können Sie jegliche neu herausgebrachten Versionen einsetzen.
<li>
<b>Technische Unterstützung: </b>Nutzen Sie unbegrenzt häufige lnanspruchnahme und Unterstützungsoptionen, die lhrem Bedarf entsprechen.   
<li>
<b>Hardware- und Software-Zertifizierung: </b>Stellen Sie Lösungen mit der Gewissheit bereit, dass Ihre Software-Anwendungen und Ihre Hardware vollständig zertifiziert sind.

<li>
<b>Quellcode und Dokumentation: </b>Zugriff auf den Binärcode und die Dokumentation Ihres Software- Produktes. 
<li>
<b>Sicherung des geistigen Eigentums: </b>Red Hats Programm zur Sicherung des geistigen Eigentums, das Ihnen während der Laufzeit Ihres Abonnements bestimmten Rechtsschutz im Fall eines urheberrechtlichen Problems bietet.

</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">Hier können Sie mehr über die Vorteile und Verlängerung Ihres Red Hat Abonnements <a href ="http://www.redhat.com/subscriptions/" >erfahren.  </a>
</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Falls Sie möchten, dass in Zukunft ein anderer Empfänger diese Benachrichtigungen erhält, senden Sie bitte eine E-Mail an  <a href=mailto:customerdata-emea@redhat.com > customerdata-emea@redhat.com </a>

 <BR>
</font><br></td></tr>

<c:choose>
<c:when test="${tpl_vals[1] == 'Direct'}"> 

<tr><td><font face="Arial" size="2">Wenn Sie zusätzliche Informationen benötigen oder sich über andere unserer Produkte informieren möchten, nehmen Sie bitte Kontakt mit mir auf unter <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/phone"/></x:when><x:otherwise><x:out select="$d//client/rep_tel"/></x:otherwise></x:choose>.
<BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2">
<br>Wir freuen uns, bald von lhnen zu hören </font> </td></tr> 
<tr><td><font face="Arial" size="2">
<br>Mit freundlichen Grüßen
</font> </td></tr> 

<tr><td><font face="Arial" size="2"><br> <x:choose>
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
<tr><td><font face="Arial" size="2"> 
Wir unterstützen Sie gerne. 
<br><br></font>  </td></tr>

<tr><td><font face="Arial" size="2">Mit freundlichen Grüßen<br><br><b><br><br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> Das Red Hat Team für Verlängerungen<br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 900 Main Campus Dr.<br><br> </font> </td></tr> 
<tr><td><font face="Arial" size="2"> Raleigh, NC 27606 <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 877-707-3757<br> <br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> <a href=mailto:renewals@redhat.com  >renewals@redhat.com </a> <br><br><br></font> </td></tr> 


</c:when>
</c:choose>
<tr><td><font face="Arial" size="1">
© 2009 Red Hat, Inc. Alle Rechte vorbehalten. Red Hat, Red Hat Enterprise Linux, das Shadowman Logo und JBoss sind eingetragene Warenzeichen von Red Hat, Inc. in den U.S.A. und anderen Ländern. Linux ist ein eingetragenes Warenzeichen von Linus Torvalds. Alle anderen Warenzeichen sind Eigentum ihrer jeweiligen Inhaber.
<BR><BR></font></td></tr>

</table>



</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
