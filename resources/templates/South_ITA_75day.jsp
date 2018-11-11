<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<x:parse var="d" doc="${data}"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>${values.subject}</title>
</head>

<body>
<table style="width:500pt" cellpadding="0" cellspacing="0" border="0">
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt"><br><br><br><br>Alla cortese attenzione di: <x:out select="$d/account/customer/email"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Mittente: <x:out select="$d/account/ssirep/email"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Oggetto: Notifica Rinnovo Support F5 – Promemoria<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Gentile cliente,<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Alcune applicazioni F5 all’interno della sua infrastruttura IT necessiteranno presto di un rinnovo supporto.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Per assisterla in questo processo, ho allestito la seguente lista di applicazioni che sono state o sono sotto contratto attraverso il suo rivenditore.<br><br></td></tr>
</table>
    <table style="width:400pt" cellpadding="0" cellspacing="0" border="1">
     <tr>
      <td align=center style="width:40%;background:#1F497D;padding:3.0pt 3.0pt 3.0pt 3.0pt;font-family:Calibri,sans-serif;font-size:10pt">
      <b><span style="color:white">End User</span></b></td>
      <td align=center style="width:25%;background:#1F497D;padding:3.0pt 3.0pt 3.0pt 3.0pt;font-family:Calibri,sans-serif;font-size:10pt">
      <b><span style="color:white">Cov Product</span></b></td>
      <td align=center style="width:20%;background:#1F497D;padding:3.0pt 3.0pt 3.0pt 3.0pt;font-family:Calibri,sans-serif;font-size:10pt">
      <b><span style="color:white">Serial Number</span></b></td>
      <td align=center style="width:15%;background:#1F497D;padding:3.0pt 3.0pt 3.0pt 3.0pt;font-family:Calibri,sans-serif;font-size:10pt">
      <b><span style="color:white">End Date</span></b></td>
     </tr>
<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/products/product" var="p">
<c:choose>
<c:when test="${pcount mod 2 == '0'}">
  <tr>
    <td style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$d//customer/name"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$p/prod"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$p/ser_no"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , "enddate", "yyyyMMdd" , "it" , "", java.text.DateFormat.SHORT ) %></c:if>&nbsp;</td>
</c:when>
<c:otherwise>
  <tr bgcolor="e0e0e0">
    <td style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$d//customer/name"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$p/prod"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$p/ser_no"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , "enddate", "yyyyMMdd" , "it" , "", java.text.DateFormat.SHORT ) %></c:if>&nbsp;</td>
</c:otherwise>
</c:choose>
    </tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>
<table style="width:500pt" cellpadding="0" cellspacing="0" border="0">
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt"><br><br>Se I dati forniti sono corretti, vorrei incoraggiarla a richiedere un’offerta di rinnovo al suo rivenditore di fiducia di modo che possiamo continuare a fornirvi supporto.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Come importante promemoria, nel caso non ricevessimo un ordine dal suo rivenditore/distributore entro 30 giorni dalla data di scadenza del precedente contratto di supporto, verrebbero applicate delle penalità al costo del servizio per ogni unità; il nuovo supporto verrà sempre in ogni caso retrodatato alla data successiva la data di scadenza del precedente contratto.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Nel caso lei non sia il corretto riferimento all’interno della sua azienda ad occuparsi di rinnovo manutenzione, la prego di girare cortesemente questa email alla persona appropriata e di rendermelo noto:  in tal modo posso seguire il processo di rinnovo senza doverla disturbare ancora in futuro.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_wrong_contact_IT", (java.util.Properties)request.getAttribute("values") ) %>'>Non sono il corretto riferimento per il rinnovo manutenzione.</a><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Nel caso non riteniate di voler rinnovare la manutenzione, clicchi semplicemente sul link sottostante, e non la contatteremo più in merito a questa offerta di rinnovo.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_no_renewal_IT", (java.util.Properties)request.getAttribute("values") ) %>'>La nostra azienda ha deciso di non rinnovare la manutenzione.</a><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Se invece lei ritiene che la sua compagnia abbia già rinnovato la manutenzione per le unità F5 di cui sopra, clicchi sul link sottostante<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_already_renewed_south_IT", (java.util.Properties)request.getAttribute("values") ) %>'>Abbiamo già rinnovato queste unità tramite il nostro rivenditore.</a><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Ringranziandola per l’attenzione dedicata ad F5 le porgo.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Distinti saluti,<br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:11pt"><b><x:out select="$d/account/ssirep/name"/> | Service Renewals<br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:7pt"><b>F5 Networks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;P <x:out select="$d/account/ssirep/phone"/><br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:7pt"><a href="http://www.f5.com">www.f5.com</a><br><br></td></tr>
<tr><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/F5/F5_logo.jpg"><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_unsubscribe_IT", (java.util.Properties)request.getAttribute("values") ) %>'>Se desidera non essere più contattato in futuro clicchi su questo link</a><br><br></td></tr>  </table>

</body>

<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %></html>
