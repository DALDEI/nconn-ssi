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
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt"><br><br><br><br>To : <x:out select="$d/account/customer/email"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">From : <x:out select="$d/account/ssirep/email"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Sujet :  F5 Notifications de Renouvellement - Rappel<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Cher Client,<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Votre maintenance sur des boitiers F5 que vous avez implémenté au sein de votre infrastructure devra bientôt être renouvelée.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Pour vous aider dans ce processus, j’ai détaillé ci-dessous les équipements que vous aviez ou avez sous contrat via votre revendeur.<br><br></td></tr>
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
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , "enddate", "yyyyMMdd" , "fr" , "", java.text.DateFormat.SHORT ) %></c:if>&nbsp;</td>
</c:when>
<c:otherwise>
  <tr bgcolor="e0e0e0">
    <td style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$d//customer/name"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$p/prod"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$p/ser_no"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , "enddate", "yyyyMMdd" , "fr" , "", java.text.DateFormat.SHORT ) %></c:if>&nbsp;</td>
</c:otherwise>
</c:choose>
    </tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>
<table style="width:500pt" cellpadding="0" cellspacing="0" border="0">
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt"><br><br>Si les données ci-dessus sont correctes, je vous encourage à demander une cotation à votre revendeur habituel afin que nous puissions continuer à vous apporter un support.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Pour rappel, dans le cas où nous ne recevons pas de commande d’achat de la part de votre revendeur/distributeur dans les 30 jours après expiration du contrat de support sur le(s) boitier(s), des pénalités de retard par boitier seront ajoutées en plus de la période rétroactive.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Si vous pensez ne pas être la bonne personne, au sein de votre entreprise, à recevoir les informations sur le renouvellement de maintenance, je vous remercie par avance de faire suivre cet email tout en me le faisant savoir que je puisse faire le suivi et ne plus vous déranger dans le futur.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_wrong_contact_FR", (java.util.Properties)request.getAttribute("values") ) %>'>Je ne suis pas le bon point de contact.</a><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Si vous n'avez pas besoin de maintenance, merci de nous le faire savoir en cliquant sur le lien ci dessous, et nous ne poursuivrons plus cette offre de renouvellement.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_no_renewal_FR", (java.util.Properties)request.getAttribute("values") ) %>'>Ma société a choisi de ne pas renouveler.</a><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Si vous pensez que votre entreprise a déjà renouvelé la maintenance sur ces appareils merci de cliquer sur le lien ci dessous :<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_already_renewed_south_FR", (java.util.Properties)request.getAttribute("values") ) %>'>Nous avons déjà renouveler ces unités avec notre revendeur.</a><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Cordialement,<br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:11pt"><b><x:out select="$d/account/ssirep/name"/> | Service Renewals<br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:7pt"><b>F5 Networks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;P <x:out select="$d/account/ssirep/phone"/><br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:7pt"><a href="http://www.f5.com">www.f5.com</a><br><br></td></tr>
<tr><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/F5/F5_logo.jpg"><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_unsubscribe_FR", (java.util.Properties)request.getAttribute("values") ) %>'>Si vous ne souhaitez pas être encore contacté dans le futur merci de cliquer sur ce lien</a><br><br></td></tr>  </table>

</body>

<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %></html>
