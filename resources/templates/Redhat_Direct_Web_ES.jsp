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

<tr><td><img src="<c:out value="${rh_img}"/>" <br> <BR></td></tr>


<tr><td><font face="Arial" size="2"><br><x:out select="$d//customer/name"/></font><br></td></tr>
<tr><td><font face="Arial" size="2">  Número de cuenta:   <x:out select="$d//acct_no"/></font><br></td></tr>


</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>  Gracias por elegir las soluciones Red Hat. <br> <br> </font></td></tr> 

<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}"> 
<tr><td><font face="Arial" size="2">
Según nuestros registros, sus suscripciones a Red Hat CADUCARÁN EN EL PLAZO DE <c:out value="${stage}"/>  DÍAS. Asegúrese de renovarlas antes de la fecha de caducidad para continuar disfrutando de los beneficios que las mismas le proveen.


</font></td></tr>

</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2">
<BR>
Según nuestros datos, sus suscripciones a Red Hat se han vencido ya. Asegúrese de renovarlas antes de la fecha de caducidad para continuar disfrutando de los beneficios que las mismas le proveen.
</font></td></tr>

</c:otherwise>
</c:choose>


<c:if test="${tpl_vals[1] == 'Web'}">  

<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>
Haga clic en <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/button_renew_now_ES.gif" border=0> </a> <br><br></font> </td></tr> 
</c:if>



<tr><td><font face="Arial" size="2">
<BR>

Asimismo, nos complace notificarle que hemos introducido varias mejoras para que pueda obtener una mayor flexibilidad y valor de sus suscripción a Red Hat. Dichas suscripciones le brindarán una versión más personalizada y mejorada de su solución Red Hat actual.
</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR>
La siguiente tabla muestra la plantilla de su suscripción actual de acuerdo con nuestra nueva estructura de producto, la cual se le proveerá ni bien lleve a cabo la renovación de su suscripción:<BR>&nbsp;<BR>
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
Sus suscripciones a Red Hat le proveen un valor continuo para ayudarle a resolver sus problemas de negocios todos los días. Red Hat mide este valor en base al número de sistemas ejecutando el software Red Hat, por consiguiente, mientras que sus suscripciones están activas, se le solicitará que mantenga una suscripción por cada instalación/instancia de software Red Hat. Únicamente a través de estas suscripciones activas, tendrá acceso a: <br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Nuevas tecnologías:  </b>Soporte para nuevos juegos de chips, optimizaciones de desempeño de importancia, mejoras específicas a la carga de trabajo, y mucho más provisto de forma trimestral como parte de su suscripción, sin cargo adicional. 
<li>
<b>Actualizaciones, correcciones de errores, erratas de seguridad: </b>Mejoras, correcciones, nuevas características y certificaciones continuadas disponibles a través del ciclo de suscripción.
<li>
<b>Evaluación y aseguración de calidad del software: </b>Se evalúa y empaqueta la última tecnología para que usted pueda ejecutar sus servidores críticos con confianza.
<li>
<b>Flexibilidad de actualización: </b>Siempre y cuando sus suscripciones estén activas, puede desplegar cualquier versión nueva que sea emitida.
<li>
<b>Asistencia técnica: </b>Utilice niveles de soporte que se ajusten a sus necesidades.  
<li>
<b>Certificaciones de hardware y software: </b>Implante soluciones con la confianza de que sus aplicaciones de software y su hardware están totalmente certificadas.
<li>
<b>Código y documentación fuente: </b>Acceso a nuestros binarios de producto de software y documentación correspondiente.
<li>
<b>Aseguramiento de la propiedad intelectual: </b>El programa de aseguramiento de la propiedad intelectual de Red Hat provee ciertos resguardos en el evento de que se curse un reclamo legal mientras está subscripto a Red Hat.

</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">Podrá aprender más acerca de los beneficios y requisitos de renovación de su suscripción a Red Hat <a href ="http://www.redhat.com/subscriptions/" >aquí. </a>
</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">
Si cree que alguien más debería recibir estas notificaciones en el futuro, envíe un correo electrónico a  <a href=mailto:customerdata-emea@redhat.com > customerdata-emea@redhat.com </a>

 <BR>
</font><br></td></tr>

<c:choose>
<c:when test="${tpl_vals[1] == 'Direct'}"> 

<tr><td><font face="Arial" size="2"> Si precisa información adicional o quiere saber más acerca de algún otro servicio que brindamos, sírvase contactarnos al siguiente número de teléfono <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/phone"/></x:when><x:otherwise><x:out select="$d//client/rep_tel"/></x:otherwise></x:choose>.
<BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2"> Le saluda atentamente,  <br><br><br></font> </td></tr> 
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
Nos complace poder ayudarle.   
<br><br></font>  </td></tr>

<tr><td><font face="Arial" size="2">
Le saluda atentamente,
</font></td></tr>
<br>

<tr><td><font face="Arial" size="2"> <br>&nbsp;<br>El Equipo de Renovaciones de Red Hat <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 900 Main Campus Dr.<br><br> </font> </td></tr> 
<tr><td><font face="Arial" size="2"> Raleigh, NC 27606 <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 877-707-3757<br> <br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> <a href=mailto:renewals@redhat.com> renewals@redhat.com </a><br><br><br></font> </td></tr> 


</c:when>
</c:choose>
<tr><td><font face="Arial" size="1">
© 2009 Red Hat, Inc. Todos los derechos reservados. Red Hat, Red Hat Enterprise Linux, el logotipo Shadowman y JBoss son marcas registradas de Red Hat, Inc. en EE.UU. y en otros países. Linux es una marca registrada de Linus Torvalds. Las demás marcas registradas son propiedad de sus respectivos propietarios.<BR><BR></font></td></tr>
</table>



</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
