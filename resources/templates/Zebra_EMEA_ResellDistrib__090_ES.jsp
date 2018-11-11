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
  <title>Zebra Renewal Notification</title>
</head>

<body>



<%-- BEGIN: Body of letter --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr align="left" valign="top"><td>
<img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/Zebra_logo.png">
  </td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr align="left" valign="top"><td>
<img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/ES_90-60-30.png">
  </td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Estimado Cliente,
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Le informamos de que los contratos de servicio enumerados más abajo caducarán en breve, por lo que queremos asegurarnos de que comprende plenamente la política actual de Zebra de no prestar servicio si no hay un contrato vigente.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
<b>Para evitar la interrupción de la cobertura del servicio y el pago de una Tarifa de continuidad de servicio de Zebra, es obligatorio renovar el contrato de servicio antes o durante la fecha de caducidad.</b> Si el contrato de servicio se renueva después de su fecha de caducidad, Zebra aplicará a su cliente directo una Tarifa de continuidad de servicio del 10% del valor de renovación anual presupuestado de cada contrato de servicio caducado, hasta un máximo de 50.000 USD. La renovación del contrato de servicio dentro del plazo garantiza que la inversión seguirá estando protegida gracias a:
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>

<table cellspacing="0" cellpadding="0" width="560" border="0">
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">Reparaciones de hardware dentro de los plazos de reparación contratados</font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">Actualizaciones de sistema operativo, software y firmware</font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">Soporte y solución de problemas mediante help desk</font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">Gratuidad de los costes de tiempo y materiales de las reparaciones inesperadas</font></td>
  </tr>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
<b>No deje caducar el contrato de servicio ni espere al último día para renovarlo.</b> Al caducar el contrato de servicio existente, todos los dispositivos que estén cubiertos por él estarán sujetos por defecto a las condiciones de cobro por tiempo y materiales que se deriven de la reparación de cada dispositivo. Zebra necesitará al menos 10 días desde la recepción de un pedido válido de compra de tiempo y materiales para reparar cada dispositivo afectado. En la mayoría de los casos, la modalidad de pago por tiempo y materiales resulta más costosa y excluye toda la gama de ventajas que comporta la renovación del contrato de servicio.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Ya hemos preparado un resumen de renovación para usted en nuestro sitio de renovaciones de contratos: <a href="http://renewals.connectpartnerportal.com/">http://renewals.connectpartnerportal.com/</a>. Inicie una sesión utilizando los datos de usuario que le suministramos anteriormente. Si nunca ha iniciado una sesión en el portal de partners, no dude en ponerse en contacto con nosotros para obtener ayuda.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Si desea renovar el contrato de servicio que va a caducar, póngase en contacto con nosotros y le facilitaremos todos los datos que necesita para ello.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Si ya ha enviado su pedido de compra o ha renovado el contrato de servicio, le damos las gracias por ello. En ese caso, puede ignorar esta notificación.
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Atentamente
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
<b>EMEA Contract Services Renewal Team</b>
  </font></td></tr>
    <tr><td><font face="Arial" size="2">
<b>(Equipo de renovación de contratos de servicios de EMEA)</b>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
<a href=mailto:emea.renewals@zebra.com>Emea.renewals@zebra.com</a>
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Si prefiere no recibir notificaciones de renovaciones por correo electrónico, <a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "Zebra_Unsubscribe_Acknowledgement_ES" ) %>'>haga clic aquí para cancelar su suscripción.</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="5" width="660" border="0">
  <tr bgcolor="007CB0">
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Número de contrato</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Usuario final</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Fecha de caducidad</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Días para que caduque</font></th>
  </tr>
  <c:set var="pcount" value='0'/>
  <x:forEach select="$d/account/assets/asset" var="p">
    <c:choose>
      <c:when test="${pcount mod 2 == '0'}">
        <tr>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_1"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_3"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_2"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_4"/></font></td>
        </tr>
      </c:when>
      <c:otherwise>
        <tr bgcolor="e0e0e0">
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_1"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_3"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_2"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_4"/></font></td>
        </tr>
      </c:otherwise>
    </c:choose>
    <c:set var="pcount" value="${pcount + 1}"/>
  </x:forEach>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="1">
La información técnica, de diseño y de costes facilitada en este documento es información confidencial propiedad de Zebra Technologies International, LLC y sus filiales en todo el mundo (“Zebra”). Dicha información se facilita con la condición de que sea utilizada exclusivamente para fines de evaluación y que no se divulgue ni se comunique a personas que no sean las que necesiten evaluar la información sin permiso expreso por escrito de Zebra. La información que se facilita en este documento tiene una finalidad exclusivamente informativa y presupuestaria y no constituye oferta alguna de venta o licencia de productos o servicios. Este documento no es vinculante para Zebra y Zebra no afirma, no garantiza y no se compromete a ofrecer precios, productos, condiciones de pago, crédito o términos y condiciones.
  </font></td></tr>
  <tr><td><font face="Arial" size="1">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="1">
Zebra y la cabeza Zebra estilizada son marcas comerciales de ZIH Corp. y están registradas en numerosas jurisdicciones de todo el mundo. El resto de marcas comerciales pertenecen a sus propietarios respectivos. &copy;2016 ZIH Corp. y/o sus filiales. Todos los derechos reservados.
  </font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>