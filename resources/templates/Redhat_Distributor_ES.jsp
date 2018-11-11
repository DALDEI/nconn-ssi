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


<tr><td><font face="Arial" size="2">Estimado distribuidor Red Hat:<br> <br> </font></td></tr> 
<tr><td><font face="Arial" size="2">
En este correo semanal de cortesía le informamos que, según nuestros registros, sus partners tienen clientes cuyas suscripciones a Red Hat caducarán pronto. Por favor, recuerde a sus partners que actúen. Deben ponerse en contacto con sus clientes para que realicen la renovación y para asegurarse la recepción continuada de las actualizaciones en curso, correcciones y parches de seguridad.
<br><br>
Acceda al <b>Portal de Renovaciones de Red</b> Hat para ver los detalles de las suscripciones de Red Hat de sus partners que están a punto de caducar.
</font></td></tr>

<tr><td>
<font face="Arial" size="2"><br>
<b><u>Portal de Renovaciones de Red Hat</u></b> <br><br>
<b><i>¿Qué es el Portal de Renovaciones?</i></b><br>
El Portal de Renovaciones de Red Hat es una aplicación web centralizada donde usted, el partner, podrá acceder a la información sobre las renovaciones de suscripción. El Portal de Renovaciones le proporciona toda la información necesaria para priorizar y ejecutar las próximas renovaciones de suscripción y también le informa sobre su rendimiento de renovación de la suscripción trimestralmente.
</font></td></tr>
<tr><td>
<font face="Arial" size="2">
<br>
<b><i> ¿Cómo accedo al Portal de Renovaciones?</i></b><br>
Vaya a <a href="https://redhat.connectpartnerportal.com">https://redhat.connectpartnerportal.com </a> e introduzca las credenciales de inicio que le haya proporcionado el equipo de renovaciones de Red Hat. 
<br><br>
<b><i>¿Cómo recibir un Acceso al Portal de Renovaciones?</i></b><br>
Si no ha recibido las credenciales de acceso al Portal de Renovaciones de Red Hat, póngase en contacto con <a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a> y se las proporcionaremos.
<br><br>
<b><i>Ayuda del Portal de Renovaciones</i></b><br>
En caso de que tenga dificultad para utilizar el portal, o acceder al enlace de la página de renovaciones, póngase en contacto con: <a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a> 
<br><br>
Tenga en cuenta que todos los socios reciben correos electrónicos sobre notificaciones de manera semanal, animándoles a que hagan un seguimiento de las cuentas de sus clientes.
<br><br>
Si necesita información adicional o quiere conocer otros servicios, póngase en contacto con nuestro equipo técnico del Ayudas a los Partner: 
<br><br>
Correo electrónico: <a href="mailto:emea-partner-team@redhat.com">emea-partner-team@redhat.com</a>
<br><br>
Teléfono:<br>
+44 1252 362 851 [ingles, alemán y francés]<br>
+44 1252 362 878 [ingles, italiano, español]
<br><br>
Atentamente,
<br><br>
Equipo de Renovaciones de Red Hat
</font></td></tr>

<tr><td><font face="Arial" size="1">
<br><br>© 2011 Red Hat, Inc. Todos los derechos reservados. Red Hat, Red Hat Enterprise Linux, el logo Shadowman y JBoss son marcas registradas de Red Hat, Inc. en los EE.UU. y otros países. Linux es marca registrada de Linus Torvalds. El resto de las marcas son propiedad de sus respectivos propietarios.
</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
