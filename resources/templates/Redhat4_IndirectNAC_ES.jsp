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

<tr><td><font face="Arial" size="2"><br>Número de cuenta:   <x:out select="$d//acct_no"/></font></td></tr>
</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2">

<br>


<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
Hemos pensado que le gustaría saber que sus suscripciones a Red Hat que se describen en el programa han caducado.  

</c:when>
<c:when test="${tpl_vals[2] == '0'}"> 
Hemos pensado que le gustaría saber que sus suscripciones a Red Hat que se describen en el programa caducarán hoy. 
</c:when>
<c:otherwise> 
Hemos pensado que le gustaría saber que sus suscripciones a Red Hat que se describen en el programa van a caducar. 

</c:otherwise>
</c:choose>

Por favor, asegúrese de renovar sus suscripciones <c:choose><c:when test="${tpl_vals[2] == '0' || tpl_vals[2] == 

'minus30'}">inmediatamente</c:when><c:otherwise>antes de la fecha de caducidad</c:otherwise></c:choose> para seguir 

recibiendo los beneficios de sus suscripciones, incluyendo el acceso al software de Red Hat, actualizaciones, mejoras, <c:if 

test="${tpl_vals[0] == 'NALA'}">nuevas versiones, </c:if>soporte técnico, revisiones de seguridad y el Programa de Seguridad 

Open Source de Red Hat. Asegúrese de leer los términos y condiciones de más abajo para entender completamente los 

términos de su oferta de renovación cuando cambien nuestras configuraciones de producto. Si tiene alguna pregunta, yo soy 

su representante de ventas de Red Hat y puede contactar conmigo en 
<a href=mailto:<x:out select="$d//client/rep_email"/>><x:out select="$d//client/rep_email"/></a>.
</font></td></tr>


<c:if test="${tpl_vals[0] == 'EMEA'}">
<tr><td><font face="Arial" size="2"><br>
También me gustaría comunicarle que hemos realizado varias mejoras para proporcionarle más flexibilidad y valor desde su 

suscripción a Red Hat. Esto le proporcionará una versión más personalizada y mejorada de su solución Red Hat actual. Esta 

transición incluye nuevas configuraciones de producto más flexibles, números de producto, precios, niveles de apoyo y 

productos superpuestos opcionales. Como resultado de las nuevas configuraciones, su precio de renovación puede variar de 

su precio de compra original.</font></td></tr>
</c:if>

<c:if test="${tpl_vals[0] == 'NALA'}">
<tr><td><font face="Arial" size="2"><br>
También me gustaría comunicarle que hemos realizado varias mejoras para proporcionarle más flexibilidad y valor desde su 

suscripción a Red Hat. Esto le proporcionará una versión más personalizada y mejorada de su solución Red Hat actual. Esta 

transición incluye nuevas configuraciones de producto más flexibles, números de producto, precios, niveles de apoyo y 

funcionalidades opcionales adicionales. Como resultado de las nuevas configuraciones, su precio de renovación puede variar 

de su precio de compra original.
</font></td></tr>
</c:if>


<tr><td><font face="Arial" size="2"><br> 
La siguiente tabla le muestra el mapa de su suscripción actual a nuestra nueva estructura de producto, que se le entregará en 

cuanto renueve su suscripción:</font></td></tr>

</table>
<br>
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

<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$p//contract_no"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">  <x:out select="$p/desc"/>  </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/oldsku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font> </td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/newprod"/>  </td>
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if 

test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" 

, "dd MMM, yyyy") %>
</c:if></font></td>
<td align="center" valign="center"><font face="Arial" style="font-size:8pt">  <x:out  select="$d//reseller"/></font> </td>



</c:when>
<c:otherwise>
  <tr bgcolor="e0e0e0">
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$p//contract_no"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">  <x:out select="$p/desc"/>  </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/oldsku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font> </td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/newprod"/>  </td>
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if 

test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" 

, "dd MMM, yyyy") %>
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


<tr><td><font face="Arial" size="2"><br>
Obtenga más información sobre nuestra nueva estructura de producto en  <a href 

="http://www.redhat.com/rhel/renew/">http://www.redhat.com/rhel/renew/ </a>
<br><br></font></td></tr>


<tr><td><font face="Arial" size="2">
Sus suscripciones Red Hat le proporcionarán un valor continuo para ayudarle a solucionar sus problemas de negocio cada 

día. Red Hat mide este valor basándose en el número de sistemas que ejecutan el software de Red Hat, por tanto, durante su 

contrato con Red Hat (es decir, mientras tenga activa cualquier suscripción), se le exigirá mantener una suscripción para cada 

instalación/caso de Red Hat. Sólo con estas suscripciones activas tendrá acceso a: 
 <br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Nuevas tecnologías:  </b>Como parte de su suscripción, recibirá trimestralmente, entre otros, soporte para los nuevos 

conjuntos de chips, importantes optimizaciones en el rendimiento y mejoras específicas de la carga de trabajo, todo ello sin 

coste adicional. 
<li>
<b>Actualizaciones, corrección de errores, erratas de seguridad: </b>Por medio de su ciclo de suscripción, tendrá a su 

disposición mejoras, correcciones, nuevas funciones y certificaciones continuadas.
<li>
<b>Pruebas de software y control de la calidad: </b>Se prueba y se empaqueta la última tecnología para que pueda ejecutar 

sus propias implantaciones críticas con confianza.
<li>
<b>Mejorar la flexibilidad: </b>Siempre que sus suscripciones estén activas, podrá desplegar cualquier versión que se lance.
<li>
<b>Soporte técnico: </b>Utilice niveles de soporte e incidentes ilimitados que cumplan sus necesidades.  
<li>
<b>Certificaciones de hardware y software: </b>Despliegue las soluciones con la seguridad de que sus aplicaciones de 

software y hardware están completamente certificadas.
<li>
<b>Código fuente y documentación: </b>Acceda a nuestra documentación y binarios de software de producto.
<li>
<b>Seguridad de la propiedad intelectual: </b>El programa de seguridad de la propiedad intelectual de Red Hat le proporciona 

algunas salvaguardas en el caso de reclamación legal mientras esté suscrito a Red Hat.

</ul>


</font></td></tr>


<tr><td><font face="Arial" size="2">Puede recibir más información sobre los beneficios y requisitos de renovación de su 

suscripción a Red Hat haciendo clic <a href="http://www.redhat.com/subscriptions/">aquí</a>. Si necesita información 

adicional o información sobre nuestros servicios, contacte con su revendedor.</font><br><br></td></tr>

<c:if test="${tpl_vals[0] == 'NALA'}">
<tr><td><font face="Arial" size="2">
Si no tiene un proveedor preferido de productos Red Hat, contacte con nuestro equipo de renovaciones en 
<a href=mailto:latampartnerhelpdesk@redhat.com>latampartnerhelpdesk@redhat.com</a>
y estaremos encantados de ponerle en contacto con un revendedor adecuado de Red Hat.
</font><br><br></td></tr>
</c:if> 


<tr><td><font face="Arial" size="2">
Si cree que alguien más debe recibir notificaciones futuras sobre sus suscripciones Red Hat, envíe los datos a 
<c:if test="${tpl_vals[0] == 'EMEA'}"> 
<a href=mailto:customerdata-emea@redhat.com>customerdata-emea@redhat.com</a></c:if>
<c:if test="${tpl_vals[0] == 'NALA'}"> 
<a href=mailto:customerservice-latam@redhat.com>customerservice-latam@redhat.com</a></c:if>. 
Asegúrese de incluir su identificación de acceso de Red Hat y su número de contrato.</a>
<br><br>
</font></td></tr>

<tr><td><font face="Arial" size="2">Estaremos encantados de ayudarle.<br><br><br></font></td></tr>
<tr><td><font face="Arial" size="2">Atentamente,
<br><br>
</font></td></tr>
<tr><td><font face="Arial" size="2">

<tr><td><font face="Arial" size="2">
<x:out select="$d//client/rep_name"/>
<br><br><br>
</font> </td></tr> 

<tr><td><font face="Arial" size="1">
© 2011 Red Hat, Inc. Todos los derechos reservados. Red Hat, Red Hat Enterprise Linux, el logotipo Shadowman y JBoss son 

marcas registradas de Red Hat, Inc. en EE.UU. y en otros países. Linux es una marca registrada de Linus Torvalds. Las demás 

marcas registradas son propiedad de sus respectivos propietarios.<BR><BR>
</font></td></tr>


</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
