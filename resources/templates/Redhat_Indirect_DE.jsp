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
<tr><td><font face="Arial" size="2"><br>Kontonummer: <x:out select="$d//acct_no"/></font></td></tr><tr><td></td></tr>


</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
 
<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2"><br>
Wir dachten es würde Sie interessieren, dass Ihre Red Hat Abonnements, wie in untenstehendem Zeitplan beschrieben, abgelaufen sind.</font></td></tr>
</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2"><br>
uns ist aufgefallen, dass Ihre Red Hat Abonnements wie in untenstehender Tabelle dargestellt auslaufen werden. 

</font></td></tr>
</c:otherwise>
</c:choose>
 
<tr><td><font face="Arial" size="2">
<BR>Um die Vorteile Ihres Abonnements weiterhin nutzen zu können, wenden Sie sich bitte an Ihren Händler oder an unser Partner Team.
</font></td></tr>

<tr><td><font face="Arial" size="2">
<BR>Wir möchten Sie außerdem darüber informieren, dass wir verschiedene Verbesserungen vorgenommen haben, damit  lhnen lhr Red Hat Abonnement mehr Flexibilität und Nutzen bietet. Somit erhalten Sie eine mehr an lhre Bedürfnisse angepasste und verbesserte Version Ihrer aktuellen Red Hat Lösung. </font></td></tr>



<tr><td><font face="Arial" size="2"><br>
Die folgende Tabelle zeigt lhnen die Zuordnung lhres derzeitigen Abonnements zu unserer neuen Produktstruktur, welche lhnen geliefert wird, wenn Sie Ihr Abonnement verlängern: <br>&nbsp;<br></font></td></tr>
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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd/MM/yyyy") %></c:if></font></td>
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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd/MM/yyyy") %></c:if></font></td>
<td align="center" valign="center"><font face="Arial" style="font-size:8pt">  <x:out  select="$d//reseller"/></font> </td>

</c:otherwise>
</c:choose>

</tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>
<br>

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Weitere Informationen über unsere neue Produktstruktur finden Sie unter  <a href ="http://www.redhat.com/rhel/renew/"> http://www.redhat.com/rhel/renew/ </a> <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">
Ihr Red Hat Abonnement bietet Ihnen dauerhaften Nutzen und hilft Ihnen tagtäglich, Ihre Betriebsprobleme zu lösen. Red Hat misst diesen Nutzen unter Zugrundelegung der Anzahl der Maschinen, auf denen Red Hat Software betrieben wird; d.h. wenn Sie ein aktives Abonnement besitzen, müssen Sie für jede Installation/jedes Exemplar von Red Hat Software ein Abonnement unterhalten. Nur mit diesen aktiven Abonnements haben Sie Zugriff auf:
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

<tr><td><font face="Arial" size="2">Wenn Sie zusätzliche Informationen benötigen oder sich über andere unserer Produkte informieren möchten, wenden Sie sich bitte an Ihren Vertriebspartner. Solten Sie keinen bevorzugten Vertriebspartner haben, können Sie unter dem folgenden <a href ="https://www.redhatrenewal.com/EUROPE/lz.aspx?p1=K3cxyaSY2KYM0KzYq+7T6DUtK4seG+N5IzFXbkF1NEeXRTbPsLBcDw==&w=40" >Link</a> ganz einfach einen Vertriebspartner auswählen.  
</font><br><br></td></tr>


<tr><td><font face="Arial" size="2">Falls Sie möchten, dass in Zukunft ein anderer Empfänger diese Benachrichtigungen erhält, senden Sie bitte eine E-Mail an  <a href=mailto:customerdata-emea@redhat.com> customerdata-emea@redhat.com </a>
<BR>
</font><br></td></tr>

<tr><td><font face="Arial" size="2">
Wir unterstützen Sie gerne. 
  <BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2">Mit freundlichen Grüßen<br><br><b></b><br><br></font></td></tr>
<tr><td><font face="Arial" size="2">Das Red Hat Team für Verlängerungen<br><br><b></b><br><br></font></td></tr>

<tr><td><font face="Arial" size="1">
<BR>&nbsp;<BR>
© 2009 Red Hat, Inc. Tous droits réservés. Red Hat, Red Hat Enterprise Linux, le logo Shadowman et JBoss sont des marques déposées de Red Hat, Inc. aux États-Unis et d'autres pays. Linux est une marque déposée de Linus Torvalds. Toutes les autres marques sont la propriété de leurs propriétaires respectifs.<BR><BR></font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
