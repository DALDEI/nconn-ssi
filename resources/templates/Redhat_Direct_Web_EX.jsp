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

<table cellspacing="0" width="660" border="0">

<tr><td><img src="<c:out value="${rh_img}"/>" <BR></td></tr>


<tr><td><font face="Arial" size="2"><br><x:out select="$d//customer/name"/></font><br></td></tr>
<tr><td><font face="Arial" size="2">  Número de cuenta -  <x:out select="$d//acct_no"/></font></td></tr>


</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2">Saludos y gracias por elegir las soluciones de Red Hat. <br> <br> </font></td></tr> 
<tr><td><font face="Arial" size="2"> 
<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}">
Según nuestros registros, sus suscripciones de Red Hat expirarán en <c:out value="${stage}"/> días. Por favor, asegúrese de renovarlas antes de la fecha de vencimiento para continuar recibiendo los beneficios de su suscripción, como el acceso al software de Red Hat, actualizaciones, nuevas versiones, soporte técnico, actualizaciones de seguridad, y del programa de Garantía de Código Abierto de Red Hat.
</c:when>

<c:otherwise> 
Según nuestros registros, sus suscripciones de Red Hat han expirado. Por favor, asegúrese de renovarlas para continuar recibiendo los beneficios de su suscripción, como el acceso al software de Red Hat, actualizaciones, nuevas versiones, soporte técnico, actualizaciones de seguridad, y del programa de Garantía de Código Abierto de Red Hat.
</c:otherwise>
</c:choose>

<br><br></font></td></tr>

<c:if test="${tpl_vals[1] == 'Web'}">  
<tr><td><font face="Arial" size="2"> 

Apriete aquí para <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/button_renew_now_EX.gif" border=0> </a>
<br><br></font> </td></tr> 
</c:if>

<tr><td><font face="Arial" size="2">También queremos aprovechar esta oportunidad para informarle que en base a los comentarios de nuestros clientes, hemos hecho varias mejorías para darle más flexibilidad y valor con su suscripción a Red Hat. Al renovar su suscripción, se le proporcionará una versión más personalizada y mejorada de la solución que usted está utilizando actualmente de Red Hat.<br> <br></font></td></tr><BR>

<tr><td><font face="Arial" size="2">
La siguiente tabla muestra la asignación de su suscripción actual para nuestra oferta de nuevos servicios, que será entregado a usted al renovar su suscripción:
</font><BR><BR></td></tr>

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
Su suscripción de Red Hat le proporciona un valor continuo para ayudar a resolver sus problemas diarios de negocio. Red Hat mide este valor en función del número de recursos ejecutando el software de Red Hat, de manera que mientras que usted tenga suscripciones activas,  está obligado a mantener una suscripción para cada instalación/instancia de software de Red Hat. Sólo con estas suscripciones usted tiene acceso a:
 <br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Nuevas tecnologías: </b>Soporte para los nuevos conjuntos de chips, optimizaciones de rendimiento, mejoras de la carga de trabajo específica, y más se entregan trimestralmente como parte de su suscripción, sin costo adicional. 
<li>
<b>Actualizaciones, correcciones de errores, erratas de seguridad: </b>Mejoras, correcciones, nuevas características, y las certificaciones están disponibles en todo su ciclo de suscripción. 
<li>
<b>Las pruebas de software y control de calidad: </b> : La última tecnología es testada y enviada a usted para que pueda ejecutar las implementaciones de su rutina con confianza.
<li>
<b>Flexibilidad Mejorada: </b>Siempre y cuando su suscripción esté activa, puede implementar todas las nuevas versiones liberadas.
<li>
<b>Soporte técnico: </b>Utilizar cantidad ilimitada de incidentes y los niveles de soporte que satisfacen sus necesidades.
<li>
<b>Certificaciones de Hardware y software: </b>Implementación de soluciones con la confianza que sus aplicaciones de software y hardware están totalmente certificados. 
<li>
<b>El código fuente y documentación: </b>Acceso a los productos binarios del software y documentación.<br>
<li>
<b>Garantía de Propiedad Intelectual: </b>programa de garantía de la propiedad intelectual de Red Hat, que establece ciertas garantías en caso de una reclamación legal, mientras que usted tiene una suscripción de Red Hat.</ul>

</font></td></tr>

<tr><td><font face="Arial" size="2">Usted puede aprender más sobre los beneficios y los requisitos de renovación de su suscripción a Red Hat <a href ="http://www.redhat.com/subscriptions/" >aquí. </a>

</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">
Si usted piensa que alguien más debe recibir avisos acerca de sus suscripciones de Red Hat, por favor, envíe un correo electrónico con los detalles para
<a href = mailto:customerservice-latam@redhat.com> customerservice-latam@redhat.com </a>

 <BR>
</font><br></td></tr>
<c:choose>

<c:when test="${tpl_vals[1] == 'Direct'}"> 

<tr><td><font face="Arial" size="2">Si necesita cualquier información adicional o desea aprender acerca de nuestros servicios, puede ponerse en contacto conmigo al teléfono <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/phone"/></x:when><x:otherwise><x:out select="$d//client/rep_tel"/></x:otherwise></x:choose>.
<BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2"> Atentamente,  <br><br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 
<x:choose>
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
Estamos muy contentos de apoyarlo.
<br><br></font>  </td></tr>

<tr><td><font face="Arial" size="2">Atentamente,<br><br><b></b><br><br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> Red Hat Renewals Team <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 900 Main Campus Dr.<br><br> </font> </td></tr> 
<tr><td><font face="Arial" size="2"> Raleigh, NC 27606 <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 877-707-3757<br> <br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> <a href=mailto:renewals@redhat.com > renewals@redhat.com</a><br><br><br></font> </td></tr> 


</c:when>
</c:choose>
<tr><td><font face="Arial" size="1">

© 2009 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.
<BR><BR></font></td></tr>


</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
