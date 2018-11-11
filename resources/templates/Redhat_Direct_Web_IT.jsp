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

<tr><td><img src="<c:out value="${rh_img}"/>" <BR></td></tr>


<tr><td><font face="Arial" size="2"><br><x:out select="$d//customer/name"/></font><br></td></tr>
<tr><td><font face="Arial" size="2">  Numero di account -  <x:out select="$d//acct_no"/></font><br></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Grazie per aver scelto le soluzioni Red Hat. 
 <br> <br> </font></td></tr> 

<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}">
<tr><td><font face="Arial" size="2">
In base ai nostri dati, le sue sottoscrizioni Red Hat SCADRANNO TRA <c:out value="${stage}"/> GIORNI. La invitiamo a rinnovarle prima della data di scadenza per poter continuare ad usufruire dei vantaggi delle sue sottoscrizioni.

</font></td></tr>

</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2">
<BR>
In base ai nostri dati, le sue sottoscrizioni Red Hat sono scadute. La invitiamo a rinnovarle prima della data di scadenza per poter continuare ad usufruire dei vantaggi delle sue sottoscrizioni.
</font></td></tr>

</c:otherwise>
</c:choose>


<c:if test="${tpl_vals[1] == 'Web'}">  

<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>
Faccia clic qui per  <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/button_renew_now_IT.gif" border=0> </a> <br><br></font> </td></tr> 
</c:if>



<tr><td><font face="Arial" size="2">
<BR>

Vorremmo inoltre informarla del fatto che abbiamo apportato molti miglioramenti per fornire maggior affidabilità e valore alla sua sottoscrizione Red Hat. Tali modifiche le offriranno una versione migliorata e più personalizzata della sua attuale soluzione Red Hat.

</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR>
La tabella seguente mostra la corrispondenza tra la sua attuale sottoscrizione e la struttura del nostro nuovo prodotto, che le sarà rilasciato al momento del rinnovo della sua sottoscrizione:
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
<tr><td><font face="Arial" size="2">
Le sue sottoscrizioni a Red Hat rappresentano un valore costante in grado di offrirle aiuto nella risoluzione dei problemi aziendali quotidiani. Red Hat misura questo valore tenendo conto del numero di sistemi aventi software Red Hat, perciò sebbene ci siano delle sottoscrizioni attive, è necessario mantenere una sottoscrizione per ogni installazione/istanza del software Red Hat. Soltanto con queste sottoscrizioni attive lei ha accesso a:  <br><br></font></td></tr>
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


<tr><td><font face="Arial" size="2">Per maggiori informazioni sui vantaggi e sui requisiti per il rinnovo della sua sottoscrizione Red Hat faccia clic <a href ="http://www.redhat.com/subscriptions/" >qui. </a>
</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">
Se ritiene che qualcun altro debba ricevere queste notifiche in futuro, invii una e-mail a <a href=mailto:customerdata-emea@redhat.com > customerdata-emea@redhat.com </a>

 <BR>
</font><br></td></tr>

<c:choose>
<c:when test="${tpl_vals[1] == 'Direct'}"> 

<tr><td><font face="Arial" size="2">Se desidera ulteriori informazioni o vuole saperne di più sugli altri servizi da noi offerti, puo’ contattarmi a <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/phone"/></x:when><x:otherwise><x:out select="$d//client/rep_tel"/></x:otherwise></x:choose>.
<BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2"> Cordiali saluti,  <br><br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> <x:choose>
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
Siamo lieti di offrirle la nostra assistenza.  
<br><br></font>  </td></tr>

<tr><td><font face="Arial" size="2">
Cordiali saluti,
<br><br><b><br><br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> Team Rinnovi Red Hat<br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 900 Main Campus Dr.<br><br> </font> </td></tr> 
<tr><td><font face="Arial" size="2"> Raleigh, NC 27606 <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 877-707-3757<br> <br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> <a href=mailto:renewals@redhat.com > renewals@redhat.com</a> <br><br><br></font> </td></tr> 


</c:when>
</c:choose>
<tr><td><font face="Arial" size="1">
© 2009 Red Hat, Inc. Tutti i diritti riservati. Red Hat, Red Hat Enterprise Linux, i loghi Shadowman e JBoss sono marchi registrati di Red Hat, Inc. negli Stati Uniti e in altri paesi. Linux è un marchio registrato di Linus Torvalds. Tutti gli altri marchi sono di proprietà dei rispettivi proprietari.
<BR><BR></font></td></tr>
</table>



</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
