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
<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat2/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.gif"/> 


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
Gradiremmo farle sapere che le sue sottoscrizioni Red Hat, mostrate in dettaglio nella tabella sottostante, sono scadute. La invitiamo a rinnovarle subito per continuare ad usufruire dei vantaggi delle sue sottoscrizioni, inclusi l'accesso al software Red Hat, gli aggiornamenti, gli upgrade, il supporto tecnico, le correzioni per la sicurezza, e il programma di sicurezza open source di Red Hat. La preghiamo di leggere le condizioni qui sotto per comprendere completamente i termini dell'offerta del suo rinnovo, poiché le configurazioni del nostro prodotto sono cambiate. 

</font></td></tr>
</c:when>


<c:when test="${tpl_vals[2] == '0'}"> 
<tr><td><font face="Arial" size="2"><br>
Gradiremmo farle sapere che le sue sottoscrizioni Red Hat, mostrate in dettaglio nella tabella sottostante, scadono oggi. La invitiamo a rinnovarle subito per continuare ad usufruire dei vantaggi delle sue sottoscrizioni, inclusi l'accesso al software Red Hat, gli aggiornamenti, gli upgrade, il supporto tecnico, le correzioni per la sicurezza, e il programma di sicurezza open source di Red Hat. La preghiamo di leggere le condizioni qui sotto per comprendere completamente i termini dell'offerta del suo rinnovo, poiché le configurazioni del nostro prodotto sono cambiate.</font></td></tr>
</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2"><br>
Gradiremmo farle sapere che le sue sottoscrizioni Red Hat, mostrate in dettaglio nella tabella sottostante, stanno per scadere. La invitiamo a rinnovarle prima della data di scadenza per continuare ad usufruire dei vantaggi delle sue sottoscrizioni, inclusi l'accesso al software Red Hat, gli aggiornamenti, gli upgrade, il supporto tecnico, le correzioni per la sicurezza, e il programma di sicurezza open source di Red Hat. La preghiamo di leggere le condizioni qui sotto per comprendere completamente i termini dell'offerta del suo rinnovo, poiché le configurazioni del nostro prodotto sono cambiate.</font></td></tr>
</c:otherwise>
</c:choose>
 
<tr><td><font face="Arial" size="2">
<BR>Per continuare ad usufruire dei vantaggi della sua sottoscrizione, contatti il suo rivenditore, o in alternativa può contattare il nostro team rinnovi a <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a>. <font></td></tr>

<tr><td><font face="Arial" size="2">
<br>Vorremmo inoltre informarla che abbiamo apportato molti miglioramenti per fornire maggior affidabilità e valore alla sua sottoscrizione Red Hat. Tali miglioramenti le offriranno una versione migliorata e più personalizzata della sua attuale soluzione Red Hat. Tale cambiamento include nuove e più flessibili configurazioni dei prodotti, numeri dei prodotti, prezzi, livelli di supporto e prodotti multilivello opzionali. In seguito alle nuove configurazioni, il prezzo del suo rinnovo potrebbe variare dal prezzo d'acquisto iniziale.</font></td></tr>



<tr><td><font face="Arial" size="2"><br>
La tabella seguente mostra la corrispondenza della sua attuale sottoscrizione alla struttura del nostro nuovo prodotto, che le sarà rilasciato al momento del rinnovo della sua sottoscrizione: <br>&nbsp;<br></font></td></tr>
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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
</c:if></font></td>
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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
</c:if></font></td>
<td align="center" valign="center"><font face="Arial" style="font-size:8pt">  <x:out  select="$d//reseller"/></font> </td>

</c:otherwise>
</c:choose>

</tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>

<br>

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Maggiori informazioni sulla struttura dei nostri nuovi prodotti sono disponibili su <a href ="http://www.redhat.com/rhel/renew/"> http://www.redhat.com/rhel/renew/ </a> <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">
Le sue sottoscrizioni a Red Hat rappresentano un valore costante in grado di offrirle aiuto nella risoluzione dei problemi aziendali quotidiani. Red Hat misura questo valore tenendo conto del numero di sistemi con software Red Hat, quindi durante il periodo di contratto con Red Hat (cioè, mentre ha delle sottoscrizioni attive), è necessario mantenere una sottoscrizione per ogni installazione/istanza del software Red Hat. Soltanto con queste sottoscrizioni attive lei ha accesso a:
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
<b>Flessibilità degli aggiornamenti: </b>fin quando le sue sottoscrizioni sono attive, lei può implementare ogni nuova versione rilasciata.
<li>
<b>Supporto tecnico: </b>utilizzi i livelli di supporto in base alle sue esigenze.  
<li>
<b>Certificazioni hardware e software: </b>implementi le soluzioni con la certezza di avere applicazioni software e hardware pienamente certificati.
<li>
<b>Codice sorgente e documentazione: </b>accesso alle funzioni binarie e alla documentazione dei nostri software.
<li>
<b>Garanzia sulla proprietà intellettuale: </b>il programma di sicurezza della proprietà intellettuale di Red Hat, che fornisce  tutele sicure in caso di rivendicazioni legali durante il periodo di validità di una sottoscrizione Red Hat.
</ul>
</font></td></tr>
<tr><td><font face="Arial" size="2">Per maggiori informazioni sui vantaggi e sui requisiti del rinnovo della sua sottoscrizione Red Hat faccia clic <a href="http://www.redhat.com/subscriptions/">qui</a>. Se desidera ulteriori informazioni o vuole saperne di più sugli altri servizi che offriamo, contatti il suo rivenditore. 

</font><br><br></td></tr>


<tr><td><font face="Arial" size="2">Se non ha un fornitore di fiducia dei prodotti Red Hat, contatti il nostro team rinnovi a <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a>, e saremo lieti di metterla in contatto con un rivenditore Red Hat adatto alle sue esigenze.</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Se ritiene che qualcun altro dovrebbe ricevere queste notifiche in futuro riguardo le sottoscrizioni Red Hat,  invii i relativi dati via e-mail a  <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a>. Si assicuri di inserire il suo Red Hat Login ID e il suo numero di contratto.<BR><br><br>
</font></td></tr>
<tr><td><font face="Arial" size="2">
Siamo lieti di offrirle la nostra assistenza.<BR><br><br></font></td></tr>
<tr><td><font face="Arial" size="2">
Cordiali saluti,
<br><br><br></font></td></tr>
<tr><td><font face="Arial" size="2">Team Rinnovi Red Hat <br><br><br></font></td></tr>


<tr><td><font face="Arial" size="1">
<br>
© 2011 Red Hat, Inc. Tutti i diritti riservati. Red Hat, Red Hat Enterprise Linux, i loghi Shadowman e JBoss sono marchi registrati di Red Hat, Inc. negli Stati Uniti e in altri paesi. Linux è un marchio registrato di Linus Torvalds. Tutti gli altri marchi sono di proprietà dei rispettivi proprietari.</font></td></tr>
</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
