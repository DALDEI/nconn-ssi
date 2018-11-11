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

<tr><td><font face="Arial" size="2">Caro Parceiro, <br> <br> </font></td></tr> 


<tr><td><font face="Arial" size="2">
Este é um e-mail de cortesia semanal para o informar que, de acordo com os nossos registos, os seus clientes têm subscrições Red Hat a expirar brevemente. Contacte os seus clientes a fim de estes renovarem a subscrição e poderem continuar a receber a entrega contínua de correcções de segurança, actualizações e reparações importantes.
</font></td></tr>



<tr><td><font face="Arial" size="2">
<br>

A tabela seguinte resume todas as subscrições Red Hat dos seus clientes que expiram nos próximos 30 dias:<br>&nbsp<br><br></font></td></tr>


</table>

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nome do cliente</font><br></th>

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Número de contrato</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Quantidade</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">SKU configurado</font><br></th>
<th  align="center" valign="center">
<font face="Arial" size="2" color="ffffff">Descrição do produto configurado</font><br></th>

<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Data de expiração</font><br></th>


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

<tr><td><font face="Arial" size="2"><br><br>Tenha em atenção que os seus clientes irão receber lembretes de renovação por e-mail aos 90, 60, 30, 0 e -30 dias, para os aconselhar sobre os benefícios e valor das suas subscrições bem como os detalhes do contracto.<br><br></font></td></tr>

<tr><td><font face="Arial" size="2">Se pretender informação adicional ou quiser saber mais sobre os nossos outros serviços, contacte a nossa equipa de renovações em <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a>. <br><br></font></td></tr>
<tr><td><font face="Arial" size="2">Atentamente,<br><br></font> </td></tr> 
 



<tr><td><font face="Arial" size="2">
Equipa de renovações Red Hat
<br><br><br></font> </td></tr> 

<tr><td><font face="Arial" size="1">

© 2011 Red Hat, Inc. Todos os direitos reservados. Red Hat, Red Hat Enterprise Linux, o logótipo Shadowman e JBoss são marcas comerciais registadas da Red Hat, Inc. nos EUA e em outros países. Linux é uma marca registada da Linus Torvalds. Todas as outras marcas registadas são propriedade dos seus respectivos proprietários.</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
