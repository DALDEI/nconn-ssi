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
<img width="660" src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/ES_Notification_90-60-30.png">
  </td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Estimado Socio,
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Por favor tome en cuenta que los Contratos de Servicio listados más abajo están próximos a expirar y queremos asegurarnos que usted conoce y entiende claramente el tipo de atención que Zebra ofrece cuando no se tiene una póliza de Contrato vigente.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
<b>Con el fin de evitar interrupciones en la Cobertura del Servicio y potencialmente incurrir en el pago de una Tarifa por la Continuidad del Servicio</b> (si el Contrato de Servicio es renovado posterior a su fecha de expiración, Zebra aplicará al cliente directo una Tarifa por Continuidad del Servicio correspondiente al 10% del valor de la renovación anual cotizada para cada Contrato de Servicio expirado, limitado a un máximo de $50,000 USD), <b>es requerido que el Contrato de Servicio sea renovado en o antes de su fecha de vencimiento.</b> Renovar el Contrato de Servicio a tiempo garantizará la protección continua de la inversión mediante:
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>

<table cellspacing="0" cellpadding="0" width="560" border="0">
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">Reparaciones del Hardware dentro de los plazos convenidos.</font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">Actualizaciones y mejoras de Sistema Operativo, Software y Firmware.</font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">Soporte y solución de problemas mediante el Help Desk.</font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">Evitar cargos de Reparación inesperados por Tiempo y Materiales (“T&M”).</font></td>
  </tr>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
<b>No deje la renovación del Contrato de Servicio para el último día de expiración o más allá de su vencimiento.</b> Al momento que expire el Contrato de Servicio existente, todos los dispositivos que estuvieron previamente cubiertos por el mismo, serán “por default” cotizados bajo las condiciones de T&M con sus correspondientes cargos asociados por la reparación de cada dispositivo. Zebra requerirá de por lo menos 10 días a partir de la recepción de una orden de compra válida por T&M para reparar cada dispositivo impactado. En la mayoría de los casos el esquema de T&M es más costoso además de que excluye toda la gama de beneficios adicionales que acompañan a un Contrato de Servicio.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Dentro de nuestro portal de renovación de Contratos, hemos preparado un informe completo para usted: <a href="http://renewals.connectpartnerportal.com/">http://renewals.connectpartnerportal.com/</a>. Por favor ingrese con su información de usuario que le hemos suministrado anteriormente. Si usted nunca ha iniciado sesión con anterioridad, por favor no dude en ponerse en contacto con nosotros para obtener ayuda.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
En caso de que desee renovar el Contrato de Servicio próximo a expirar por favor contáctenos y estaremos encantados de proveerle con todos los detalles que usted requiera.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Si usted ya ha enviado su orden de compra o renovado el Contrato de Servicio, le damos las gracias por ello y le pedimos por favor haga caso omiso a la presente notificación.
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Saludos cordiales,
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
<b>Equipo de Renovaciones de Contratos de Servicio - LATAM</b>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
<a href=mailto:Latam.renewals@zebra.com>LA.renewals@zebra.com</a>
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Si usted no desea seguir recibiendo notificaciones de renovación, <a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "Zebra_Unsubscribe_Acknowledgement_ES" ) %>'>por favor haga click aquí para anular su suscripción.</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="5" width="660" border="0">
  <tr bgcolor="007CB0">
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Número de Contrato</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Usuario Final</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Fecha de Término</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Días para Expirar</font></th>
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
The design, technical, and cost information (“Information”) furnished in this submission is confidential proprietary information of Zebra Technologies International, LLC and its worldwide affiliates (“Zebra”). Such Information is submitted with the restriction that it is to be used for evaluation purposes only, and is not to be disclosed publicly or in any manner to anyone other than those required to evaluate the Information, without the express written permission of Zebra. The Information provided in this submission is for information and budgetary purposes only and does not constitute an offer to sell or license any products or services.  This submission is not binding on Zebra and Zebra is making no representations, warranties, or commitments with respect to pricing, products, payment terms, credit or terms and conditions.
  </font></td></tr>
  <tr><td><font face="Arial" size="1">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="1">
ZEBRA and the stylized Zebra head are trademarks of ZIH Corp., registered in many jurisdictions worldwide.  All other trademarks are the property of their respective owners.  &copy;2016 ZIH Corp. and/or its affiliates.  All rights reserved.
  </font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>