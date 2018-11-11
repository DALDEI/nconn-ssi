<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<fmt:setLocale value="en-US" />
<x:parse var="d" doc="${data}"/>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
  <title>FSecure Renewal Notification</title>
</head>

<body>

<%-- DATE & LOGO --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
<%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , null, "mm/dd/yy" , "pt" , "" ) %>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr align="center" valign="top"><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/fsecure/POR_PARTNER_EXPIRED_-60.png"></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- LETTER BODY --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">Caro parceiro</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Segue abaixo a lista das licenças dos seus clientes que encontram-se expiradas:
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Os clientes aos quais F-Secure está autorizada a contactar, receberam e-mails de aviso 90 dias, 30 dias, 7 dias antes da data de vencimento. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
A informação de contato do Revendedor designado será fornecida nestes e-mails.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Se você já renovou , por favor desconsidere este aviso e aceitar as nossas desculpas por qualquer inconveniente.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- CONTRACT TABLE --%>
<table width=660 cellspacing="0" cellpadding="5" indent=30 border="1" >
  <tr bgcolor="#EF0707">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">ID de Renovação</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nome do Revendedor</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nome do Cliente</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">SKU</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nome do produto</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Quantidade </font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Data de Vencimento</font></th>
  </tr>

<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/assets/asset" var="p">
<c:choose>

<c:when test="${pcount mod 2 == '0'}">
<tr>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_5"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_6"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_7"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_1"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_2"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_3"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_4"/></font></td>
</c:when>

<c:otherwise>
  <tr bgcolor="e0e0e0">
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_5"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_6"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_7"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_1"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_2"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_3"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_4"/></font></td>
</c:otherwise>
</c:choose>

</tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
O representante de Renovações designado para sua área entrará em contato em breve para revisar estas licenças expiradas, e assegurar que vocês estarão atendidos pelo suporte e informados.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Em caso de qualquer dúvida referente ao processo de renovação ou comunicação, por favor entre em contato. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">Atenciosamente, </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_ssirep_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2">F-Secure Equipe de Renovações</font></td></tr>
  <tr><td><font face="Arial" size="2">
Fone : <b><x:out select="$d//opp_ssirep_phone"/></b>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
Endereço de e-mail: <b><x:out select="$d//opp_ssirep_email"/></b>
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr align="right" valign="top"><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/fsecure/fsecure_logo_footer.png"></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
If you prefer not to receive email renewal notifications, please 
<a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "FSecure_Unsubscribe_Acknowledgement_IN" ) %>'>
click here to unsubscribe.</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

</table>


</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>