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


<tr><td><font face="Arial" size="2">
Estimado Partner:
<br> <br> </font></td></tr> 


<tr><td><font face="Arial" size="2">
En este correo semanal de cortesía le informamos que, según nuestros registros, sus clientes tienen suscripciones a Red Hat que caducarán pronto. Póngase en contacto con ellos para realizar la renovación y seguir recibiendo información sobre la entrega de importantes correcciones en curso, actualizaciones y parches de seguridad.

</font></td></tr>



<tr><td><font face="Arial" size="2">
<br>

La siguiente tabla resume todas las suscripciones a Red Hat de sus clientes que caducan en los próximos 30 días:
<br>&nbsp<br><br></font></td></tr>



</table>

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nombre del cliente</font><br></th>

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Número de contrato</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Cantidad</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">SKU configurado</font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Descripción del producto configurado</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Fecha de caducidad</font><br></th>


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





<tr><td><font face="Arial" size="2"><br><br>Tenga en cuenta que sus clientes recibirán correos recordatorio de renovación cada 90, 60, 30, 0 y -30 días para darles asesoramiento sobre los beneficios y valor de sus suscripciones y también sobre los detalles del contrato.
<br><br></font></td></tr>

<tr><td><font face="Arial" size="2">Si necesita información adicional o quiere conocer otros servicios, póngase en contacto con nuestro Equipo de Renovaciones en <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a>. <br><br></font></td></tr>
<tr><td><font face="Arial" size="2">Atentamente,<br><br></font> </td></tr> 
 



<tr><td><font face="Arial" size="2">
Equipo de Renovaciones de Red Hat
<br><br><br></font> </td></tr> 

<tr><td><font face="Arial" size="1">

© 2011 Red Hat, Inc. Todos los derechos reservados. Red Hat, Red Hat Enterprise Linux, el logo Shadowman y JBoss son marcas registradas de Red Hat, Inc. en los EE.UU. y otros países. Linux es marca registrada de Linus Torvalds. El resto de las marcas son propiedad de sus respectivos propietarios.</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
