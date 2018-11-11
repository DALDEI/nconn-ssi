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

<tr><td><img src="<c:out value="${rh_img}"/>" <br> <BR><BR>
</td></tr>

<tr><td><font face="Arial" size="2">
Caro Distribuidor Red Hat,
</font></td></tr>

<tr><td><font face="Arial" size="2">
<br>Este é um e-mail de cortesia semanal para o informar que, de acordo com os nossos registos, os seus parceiros têm clientes cuja subscrição Red Hat expira brevemente. Lembre os seus parceiros de agirem. Eles devem entrar em contacto com os respectivos clientes a fim de estes renovarem a subscrição e para assegurarem a recepção contínua de correcções de segurança, reparações e actualizações importantes.
</font></td></tr>

<tr><td><font face="Arial" size="2">
<br>Aceda ao <b>Portal de renovações Red Hat</b> para ver os pormenores de subscrição Red Hat dos seus parceiros que estão a expirar.
</font></td></tr>
<tr><td><font face="Arial" size="2">
<b><u><br>Portal de renovações Red Hat</u></b>
</font></td></tr>
<tr><td><font face="Arial" size="2">
<b><i><br>O que é o Portal de renovações?</i></b>
</font></td></tr>

<tr><td><font face="Arial" size="2">
O Portal de renovações Red Hat é uma aplicação baseada na Web centralizada à qual você, o parceiro, pode aceder para obter informações sobre as renovações de subscrição. O Portal de renovações fornece-lhe toda a informação necessária para priorizar e efectuar renovações de subscrição seguintes e fornece-lhe também relatórios em painel sobre o seu desempenho no âmbito de renovação de subscrição trimestral.
</font></td></tr>
<tr><td><font face="Arial" size="2">
<b><i><br>Como posso aceder ao Portal de renovações?</i></b>
</font></td></tr>

<tr><td><font face="Arial" size="2">
Visite <a href="https://redhat.connectpartnerportal.com">https://redhat.connectpartnerportal.com</a> e introduza as credenciais de início de sessão que lhe foram fornecidas pela equipa de renovações Red Hat. 
</font></td></tr>

<tr><td><font face="Arial" size="2">
<b><i><br>Como posso receber um nome de utilizador para aceder ao Portal de renovações?</i></b></font></td></tr>

<tr><td><font face="Arial" size="2">
Se não recebeu credenciais para início de sessão para aceder ao Portal de renovações Red Hat, contacte <a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a>  e iremos fornecer-lhe credenciais de acesso.
</font></td></tr>

<tr><td><font face="Arial" size="2">
<b><i><br>Ajuda do Portal de renovações</i></b><br>
Se tiver dificuldade em utilizar o portal ou em aceder à hiperligação da página de renovações, contacte: <a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a> 
</font></td></tr>
<tr><td><font face="Arial" size="2"><br>
Tenha em atenção que todos os parceiros recebem semanalmente notificações por e-mail incentivando-os a realizarem o acompanhamento das suas contas de clientes.
</font></td></tr>
<tr><td><font face="Arial" size="2">
<br>Se pretender informação adicional ou se quiser saber mais sobre os nossos outros serviços, contacte a nossa equipa de serviço de assistência a parceiros. 
</font></td></tr>
<tr><td><font face="Arial" size="2">
<br>E-mail: <a href="mailto:emea-partner-team@redhat.com">emea-partner-team@redhat.com</a>
</font></td></tr>
<tr><td><font face="Arial" size="2">
<br>Telefone:<br>
</font></td></tr>
<tr><td><font face="Arial" size="2">

+44 1252 362 851 [inglês, alemão e francês]<br>
</font></td></tr>
<tr><td><font face="Arial" size="2">

+44 1252 362 878 [inglês, italiano, espanhol]
</font></td></tr>
<tr><td><font face="Arial" size="2">

<br><br>
Atentamente,
<br><br>
</font></td></tr>
<tr><td><font face="Arial" size="2">

Equipa de renovações Red Hat
</font></td></tr>
<tr><td><font face="Arial" size="1">
<br><br>© 2011 Red Hat, Inc. Todos os direitos reservados. Red Hat, Red Hat Enterprise Linux, o logótipo Shadowman e JBoss são marcas comerciais registadas da Red Hat, Inc. nos EUA e em outros países. Linux é uma marca registada da Linus Torvalds. Todas as outras marcas registadas são propriedade dos seus respectivos proprietários.
</font></td></tr>
</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
