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

<tr><td><font face="Arial" size="2">Gentile Partner, <br> <br> </font></td></tr> 


<tr><td><font face="Arial" size="2">
Questa è un’e-mail settimanale di cortesia per informarti che, secondo i nostri archivi, i tuoi clienti hanno abbonamenti Red Hat in scadenza. Ti preghiamo di contattarli per il rinnovo e per continuare a ricevere la fornitura di importanti fixes, update e security patches. 

</font></td></tr>



<tr><td><font face="Arial" size="2">
<br>

La tabella seguente riunisce tutti gli abbonamenti Red Hat dei tuoi clienti in scadenza nei prossimi 30 giorni: 
<br>&nbsp<br><br></font></td></tr>



</table>

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nome Cliente</font><br></th>

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Numero
Contratto
</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Quantità</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">SKU Configurato</font><br></th>
<th  align="center" valign="center">
<font face="Arial" size="2" color="ffffff">Descrizione Prodotto Configurato </font><br></th>

<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Data
Scadenza
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

<tr><td><font face="Arial" size="2"><br><br>
Ti preghiamo di ricordare che I tuoi clienti riceveranno e-mail di promemoria per il rinnovo ogni 90, 60, 30, 0 e -30 giorni per informarli sui vantaggi e sul valore del loro abbonamento e sui dettagli del contratto. 
<br><br></font></td></tr>

<tr><td><font face="Arial" size="2">Se avessi necessità di ulteriori informazioni o se desideri conoscere gli altri nostri servizi ti preghiamo di contattare il nostro team Rinnovi <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a>. <br><br></font></td></tr>
<tr><td><font face="Arial" size="2">Cordialmente,<br><br></font> </td></tr> 
 



<tr><td><font face="Arial" size="2">

Team Rinnovi Red Hat 

<br><br><br></font> </td></tr> 

<tr><td><font face="Arial" size="1">
© 2011 Red Hat, Inc. Tutti i diritti riservati. Red Hat, Red Hat Enterprise Linux, the Shadowman logo e JBoss sono marchi registrati di Red Hat, Inc. negli USA e in altri Paesi. Linux è un marchio registrato di Linus Torvalds. Tutti gli altri marchi sono proprietà dei rispettivi titolari. 
</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
