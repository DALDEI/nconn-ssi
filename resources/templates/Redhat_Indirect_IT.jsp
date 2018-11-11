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

<tr><td><font face="Arial" size="2"><br>Numero di account:   <x:out select="$d//acct_no"/></font></td></tr><tr><td></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
 
<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2"><br>
Gradiremmo farle sapere che le sue sottoscrizioni Red Hat, mostrate in dettaglio nella tabella sottostante, sono scadute.</font></td></tr>
</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2"><br>
Gradiremmo farle sapere che le sue sottoscrizioni Red Hat mostrate in dettaglio nella tabella sottostante stanno per scadere.
</font></td></tr>
</c:otherwise>
</c:choose>
 
<tr><td><font face="Arial" size="2">
<BR>Per poter usufruire dei vantaggi della sua sottoscrizione, la preghiamo di contattare il suo rivenditore o il nostro Partner Team all’e-mail sottostante.</font></td></tr>

<tr><td><font face="Arial" size="2">
<br>Vorremmo inoltre informarla che abbiamo apportato molti miglioramenti per fornire maggior affidabilità e valore alla sua sottoscrizione Red Hat. Tali modifiche le offriranno una versione migliorata e più personalizzata della sua attuale soluzione Red Hat.
</font></td></tr>



<tr><td><font face="Arial" size="2"><br>
La tabella seguente mostra la corrispondenza tra la sua attuale sottoscrizione e la struttura del nostro nuovo prodotto, che le sarà rilasciato al momento del rinnovo della sua sottoscrizione: <br>&nbsp;<br></font></td></tr>
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
<tr><td><font face="Arial" size="2"><br>Maggiori informazioni sulla struttura dei nostri nuovi prodotti sono disponibili visitando la pagina,  <a href ="http://www.redhat.com/rhel/renew/"> http://www.redhat.com/rhel/renew/ </a> <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">
<br>Le sue sottoscrizioni a Red Hat rappresentano un valore costante in grado di offrirle aiuto nella risoluzione dei problemi aziendali quotidiani. Red Hat misura questo valore tenendo conto del numero di sistemi aventi software Red Hat, perciò sebbene ci siano delle sottoscrizioni attive, è necessario mantenere una sottoscrizione per ogni installazione/istanza del software Red Hat. Soltanto con queste sottoscrizioni attive lei ha accesso a:
 <br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Nuove tecnologie: </b>supporto per nuovi chip set, ottimizzazioni per prestazioni maggiori, miglioramenti specifici per il carico di lavoro e altro ancora, sono rilasciati ogni tre mesi come parte della sua sottoscrizione, senza alcun costo aggiuntivo.
<li>
<b>Aggiornamenti, correzioni, errata per la sicurezza: </b>miglioramenti, correzioni, nuove funzionalità, e continue certificazioni sono disponibili durante l’intero periodo della sua sottoscrizione.
<li>
<b>Test e controllo qualità dei software: </b>le ultime tecnologie sono testate e predisposte in pacchetti, affinché lei possa implementarle in totale sicurezza.
<li>
<b>Flessibilità degli aggiornamenti: </b>fin quando le sue sottoscrizioni sono attive, può implementare ogni nuova versione rilasciata.
<li>
<b>Supporto tecnico: </b>potra’ usufruire del livello di supporto che si confa’ alle sue esigenze.  
<li>
<b>Certificazioni hardware e software: </b>potra’ implementare le nostre soluzioni con la certezza di avere applicazioni software e hardware pienamente certificati.
<li>
<b>Codice sorgente e documentazione: </b>accesso alle funzioni binarie e alla documentazione dei nostri software.
<li>
<b>Sicurezza della proprietà intellettuale: </b>il programma di sicurezza della proprietà intellettuale di Red Hat, che fornisce una tutela sicura in caso di azione legale mentre si è in possesso di una sottoscrizione Red Hat.
</ul>
</font></td></tr>
<tr><td><font face="Arial" size="2">
Per maggiori informazioni sui vantaggi e sui requisiti per il rinnovo della sua sottoscrizione Red Hat faccia clic <a href= "https://www.redhatrenewal.com/16LZ/lz.aspx?p1=WRg1CmP7L8J+EZUTYDEbiuxId2hg5xgods/r0SbP8Hc=&w=60"> qui.</a> Se desidera ulteriori informazioni, o vuole saperne di più sugli altri servizi che da noi offerti, la preghiamo di contattare il suo rivenditore.

</font><br><br></td></tr>


<tr><td><font face="Arial" size="2">Nel caso non abbia un rivenditore di fiducia, può tranquillamente sceglierne uno attraverso il seguente
 <a href ="https://www.redhatrenewal.com/EUROPE/lz.aspx?p1=K3cxyaSY2KYM0KzYq+7T6DUtK4seG+N5IzFXbkF1NEeXRTbPsLBcDw==&w=40" >  link.</a></font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Se ritiene che qualcun altro debba ricevere queste notifiche in futuro, invii una e-mail a  <a href=mailto:customerdata-emea@redhat.com> customerdata-emea@redhat.com </a>



 <BR>
</font><br></td></tr>
<tr><td><font face="Arial" size="2">
Siamo lieti di offrirle la nostra assistenza. 
  <BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2">
Cordiali saluti,
<br><br><b></b><br><br></font></td></tr>
<tr><td><font face="Arial" size="2">Team Rinnovi Red Hat <br><br><b></b><br><br></font></td></tr>


<tr><td><font face="Arial" size="1">
<br>
© 2009 Red Hat, Inc. Tutti i diritti riservati. Red Hat, Red Hat Enterprise Linux, i loghi Shadowman e JBoss sono marchi registrati di Red Hat, Inc. negli Stati Uniti e in altri paesi. Linux è un marchio registrato di Linus Torvalds. Tutti gli altri marchi sono di proprietà dei rispettivi proprietari.</font></td></tr>
</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
