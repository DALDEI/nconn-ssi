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
<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat2/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.gif"/>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="" width="660" border="0">

<tr><td><img src="<c:out value="${rh_img}"/>" <BR></td></tr>


<tr><td><font face="Arial" size="2"><br><x:out select="$d//customer/name"/></font><br></td></tr>
<tr><td><font face="Arial" size="2">  Número de conta -    <x:out select="$d//acct_no"/></font><br></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Obrigado por escolher as soluções Red Hat. 
 <br> <br> </font></td></tr> 

<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}">
<tr><td><font face="Arial" size="2">

Segundo os nossos registos, as suas subscrições Red Hat expiraram. Por favor, certifique-se de que as renova imediatamente para continuar a receber os benefícios da sua subscrição, incluindo o acesso ao software Red Hat, actualizações, apoios técnicos, soluções de segurança e ao programa de garantia de fonte aberta da Red Hat. Certifique-se de que lê os termos a seguir, de compreender totalmente os termos de oferta da sua renovação e como as configurações do nosso produto foram modificadas. Se tiver alguma questão, eu sou o seu representante de vendas Red Hat e pode entrar em contacto comigo em <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><a href=mailto:<x:out select="$d//ssirep/email"/>><x:out select="$d//ssirep/email"/></a></x:when><x:otherwise><a href=mailto:<x:out select="$d//client/rep_email"/>><x:out select="$d//client/rep_email"/></a></x:otherwise></x:choose>.


</font></td></tr>

</c:when>

<c:when test="${tpl_vals[2] == '0'}">
<tr><td><font face="Arial" size="2">
Segundo os nossos registos, as suas subscrições Red Hat irão EXPIRAR HOJE. Por favor, certifique-se de que as renova imediatamente para continuar a receber os benefícios da sua subscrição, incluindo o acesso ao software Red Hat, actualizações, apoios técnicos, soluções de segurança e ao programa de garantia de fonte aberta da Red Hat. Certifique-se de que lê os termos a seguir, de compreender totalmente os termos de oferta da sua renovação e como as configurações do nosso produto foram modificadas. Se tiver alguma questão, eu sou o seu representante de vendas Red Hat e pode entrar em contacto comigo em <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><a href=mailto:<x:out select="$d//ssirep/email"/>><x:out select="$d//ssirep/email"/></a></x:when><x:otherwise><a href=mailto:<x:out select="$d//client/rep_email"/>><x:out select="$d//client/rep_email"/></a></x:otherwise></x:choose>.

</font></td></tr>

</c:when>


<c:otherwise> 
<tr><td><font face="Arial" size="2">

Segundo os nossos registos, as suas subscrições Red Hat irão EXPIRAR DENTRO DE <c:out value="${stage}"/> DIAS. Por favor, certifique-se de que as renova antes da data de expiração para continuar a receber os benefícios da sua subscrição, incluindo o acesso ao software Red Hat, actualizações, apoios técnicos, soluções de segurança e ao programa de garantia de fonte aberta da Red Hat. Certifique-se de que lê os termos a seguir, de compreender totalmente os termos de oferta da sua renovação e como as configurações do nosso produto foram modificadas. Se tiver alguma questão, eu sou o seu representante de vendas Red Hat e pode entrar em contacto comigo em <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><a href=mailto:<x:out select="$d//ssirep/email"/>><x:out select="$d//ssirep/email"/></a></x:when><x:otherwise><a href=mailto:<x:out select="$d//client/rep_email"/>><x:out select="$d//client/rep_email"/></a></x:otherwise></x:choose>.


</font></td></tr>
</c:otherwise>
</c:choose>


<tr><td><font face="Arial" size="2">
<BR>

Gostaríamos também de o informar que realizámos diversas melhorias para lhe proporcionar uma maior flexibilidade e valor com a sua subscrição Red Hat. Estas irão proporcionar-lhe uma versão mais personalizada e melhorada da sua actual solução Red Hat. Esta transição inclui novas configurações de produto mais flexíveis, números de produto, preços, níveis de suporte e produtos em camadas opcionais. Como resultado das configurações novas, o seu preço de renovação pode variar em relação ao seu preço de compra original.


</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR>
A tabela seguinte indica o mapeamento da sua subscrição actual segundo a nossa nova estrutura de produto, que ser-lhe-á entregue quando renovar a sua subscrição.
<BR>&nbsp;<BR>
</font></td></tr>
</table>
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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %></c:if></font></td>
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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %></c:if></font></td>
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

Mais informações sobre a nossa nova estrutura de produto encontram-se disponíveis em, <a href ="http://www.redhat.com/rhel/renew/">http://www.redhat.com/rhel/renew/</a>.<br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> 

As suas subscrições Red Hat prestam-lhe uma ajuda contínua na resolução diária dos seus problemas comerciais. A Red Hat mede este valor com base no número dos sistemas a executar o software Red Hat, assim durante o período do seu acordo com a Red Hat (ex., enquanto mantém quaisquer subscrições activas) é-lhe pedido que mantenha uma subscrição para cada instalação/instância do software Red Hat. Apenas com estas subscrições activas tem acesso a:
<br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Novas tecnologias: </b> apoio para novos conjuntos de circuitos, principais optimizações de desempenho, aumento de volume de trabalho específico, e mais são entregues trimestralmente como parte da sua subscrição, sem qualquer custo adicional.<li>
<b>Actualizações, correcção de problemas, errata de segurança: </b>melhorias, correcções, características novas e certificações contínuas estão disponíveis através do seu ciclo de subscrição.<li>
<b>Testes de software e GQ: </b>a mais recente tecnologia é testada e embalada para si de modo a poder efectuar com confiança as suas implementações fundamentais.<li>
<b>Flexibilidade de actualização: </b>enquanto a sua subscrição estiver activa, pode instalar qualquer versão nova disponível.<li>
<b>Apoio técnico: </b>utilize níveis de apoio e de incidentes ilimitados de acordo com as suas necessidades.<li>
<b>Certificações de hardware e software: </b>implemente soluções com a confiança de que as suas aplicações de software e hardware estão totalmente certificadas.<li>
<b>Código-fonte e documentação: </b>acesso aos binários e documentação dos nossos produtos de software.
<li>
<b>Garantia de propriedade intelectual: </b>o programa de garantia de propriedade intelectual Red Hat, o qual fornece determinadas garantias na eventualidade de uma reivindicação legal enquanto tem uma subscrição Red Hat.
</ul>

</font></td></tr>

 <tr><td><font face="Arial" size="2">Pode saber mais sobre os benefícios e requisitos para renovação da sua subscrição Red Hat <a href ="http://www.redhat.com/subscriptions/" >aqui</a>.
</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">
Se considera que outra pessoa deve receber futuras informações sobre as suas subscrições Red Hat, envie um e-mail com os detalhes para <a href=mailto:customerdata-emea@redhat.com >customerdata-emea@redhat.com</a>. Certifique-se de incluir a sua identificação de início de sessão e o número do seu contrato. 
</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">
Se necessitar de informação adicional ou se pretender saber mais sobre os nossos outros serviços, contacte-me através <a href="http://www.redhat.com/about/contact/dir/" >http://www.redhat.com/about/contact/dir/</a>
 <br><br><br></font></td></tr>



<tr><td><font face="Arial" size="2"> 
Atentamente,  
<br><br><br></font>  </td></tr>

<tr><td><font face="Arial" size="2">
<x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/name"/></x:when><x:otherwise><x:out select="$d//client/rep_name"/></x:otherwise></x:choose> 
<br><br><br></font> </td></tr> 

<tr><td><font face="Arial" size="1">

© 2011 Red Hat, Inc. Todos os direitos reservados. A Red Hat, a Red Hat Enterprise Linux, o logotipo Shadowman e JBoss são marcas comerciais registadas da Red Hat Inc. nos E.U.A. e em utros países. O Linux é uma marca comercial registada de Linus Torvalds. Todas as outras marcas comerciais registadas são propriedade dos seus respectivos proprietários.<BR><BR></font></td></tr>
</table>



</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
