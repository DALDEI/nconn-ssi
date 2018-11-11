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
<%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , null, "mm/dd/yy" , "es" , "" ) %>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
     <tr align="center" valign="top"><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/fsecure/ESP_T2RESELLER_EXPIRING_120.png"></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- LETTER BODY --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">Estimado socio</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Las licencias de sus clientes listadas abajo van a caducar.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Los clientes finales (solamente aquellos a los cuales F-Secure está autorizada a contactar) recibirán e-mails de aviso 90 días, 30 días, 7 días antes de la fecha de vencimiento.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Su información de contacto será ofrecida en estos e-mails. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Si usted ya ha renovado recientemente sus licencias, por favor ignore este mensaje.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- CONTRACT TABLE --%>
<table width=660 cellspacing="0" cellpadding="5" indent=30 border="1" >
  <tr bgcolor="#EF0707">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">ID de Renovacion</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nombre del Mayorista</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nombre del Cliente final</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">SKU</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nombre del Producto</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Cantidad</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Fecha de Vencimiento</font></th>
  </tr>

<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/assets/asset" var="p">
<c:choose>

<c:when test="${pcount mod 2 == '0'}">
<tr>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_5"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_8"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_7"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_1"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_2"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_3"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_4"/></font></td>
</c:when>

<c:otherwise>
  <tr bgcolor="e0e0e0">
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_5"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_8"/></font></td>
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
El representante de Renovaciones designado para su región entrará en contacto en breve para revisar estas licencias caducadas, y asegurar que ustedes serán atendidos por soporte e informados.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
En el caso de cualquier duda referente al proceso de renovación o comunicación, por favor póngase en contacto.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">Atentamente, </font></td></tr>
  <tr><td><font face="Arial" size="2"> &nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_ssirep_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2">F-Secure Equipo de Renovaciones</font></td></tr>
  <tr><td><font face="Arial" size="2">
Teléfono: <b><x:out select="$d//opp_ssirep_phone"/></b>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
Dirección de e-mail: <b><x:out select="$d//opp_ssirep_email"/></b>
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