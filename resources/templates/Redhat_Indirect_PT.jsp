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
<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.gif"/> 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title></head>

<body>

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><img src="<c:out value="${rh_img}"/>"  <br> <br></td></tr>

<tr><td><font face="Arial" size="2"><br>Número de conta:   <x:out select="$d//acct_no"/></font></td></tr><tr><td></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
 
<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2"><br>
Pensámos que gostaria de saber que as suas subscrições Red Hat indicadas na tabela a seguir expiraram. </font></td></tr>
</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2"><br>
Acreditamos que é de seu interesse saber que as suas subscrições Red Hat indicadas na tabela a seguir estão prestes a expirar.</font></td></tr>
</c:otherwise>
</c:choose>
 
<tr><td><font face="Arial" size="2">
<BR>A fim de receber os benefícios da sua subscrição, entre em contato com o seu revendedor ou a com a nossa equipe através do endereço de correio electrónico indicado a seguir.</font></td></tr>

<tr><td><font face="Arial" size="2">
<br>Gostaríamos também de informar-lhe que realizamos diversas melhorias para proporcionar uma maior flexibilidade e valorização para a sua subscrição Red Hat. Estas melhorias irão proporcionar-lhe uma versão  personalizada e melhorada para a sua atual solução Red Hat.</font></td></tr>



<tr><td><font face="Arial" size="2"><br>
A tabela abaixo descreve como ficará sua subscrição atual com a nossa nova estrutura de produtos, que lhe será entregue quando renovar a sua subscrição. <br>&nbsp;<br></font></td></tr>
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
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Reseller </font><br></th>


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
<td align="center" valign="center"><font face="Arial" style="font-size:8pt">  <x:out  select="$d//reseller"/></font> </td>



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
<td align="center" valign="center"><font face="Arial" style="font-size:8pt">  <x:out  select="$d//reseller"/></font> </td>

</c:otherwise>
</c:choose>

</tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>

<br>

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Mais informações sobre a nossa nova estrutura de produto encontra-se disponível em,   <a href ="http://www.redhat.com/rhel/renew/"> http://www.redhat.com/rhel/renew/ </a> <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">
<br>Suas subscrições Red Hat lhe proporciona um valor contínuo que ajuda na resolução diária dos seus problemas comerciais. A Red Hat dimensiona este valor com base no número de sistemas executando o Red Hat. Enquanto possuir alguma subscrição ativa, será necessário manter uma subscrição para cada instalação / instância do  Red Hat. Somente com estas subscrições ativas você terá acesso a: <br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Novas tecnologias: </b> suporte a novos circuitos integrados, otimizações de desempenho, aumento da carga de trabalho específico e muito mais são entregues trimestralmente como parte da sua subscrição, sem qualquer custo adicional;
<li>
<b>Atualizações, correções de problemas, erratas de segurança: </b>melhorias, correções, novas características e certificações contínuas estão disponíveis através no seu ciclo de subscrição;
<li>
<b>Testes de software e Garantia de Qualidade: </b>as mais recentes tecnologias são testadas e empacotadas para que vocẽ continue rodando seu ambiente crítico com confiabilidade;
<li>
<b>Flexibilidade de atualização: </b>enquanto a sua subscrição estiver ativa será possível instalar quaisquer  novas atualizações que forem disponibilizadas;  
<li>
<b>Apoio técnico: </b>Utilização dos níveis de suporte de acordo com as suas necessidades.
<li>
<b>Certificações de hardware e software: </b>implemente soluções com a confiança de que as suas aplicações de software e hardware estão totalmente certificadas.
<li>
<b>Código-fonte e documentação: </b>acesso aos binários e a documentação de nossos produtos;
<li>
<b>Garantia de propriedade intelectual: </b>o programa de garantia de propriedade intelectual da Red Hat lhe proporciona determinadas garantias na eventualidade de uma ação judicial enquanto possuir uma subscrição Red Hat.
</ul>

</font></td></tr>
<tr><td><font face="Arial" size="2">
Você pode ler mais sobre os benefícios e requisitos de renovações de sua subscrição Red Hat <a href= "https://www.redhatrenewal.com/16LZ/lz.aspx?p1=WRg1CmP7L8J+EZUTYDEbiuxId2hg5xgods/r0SbP8Hc=&w=60"> aqui.</a> 
</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">
Se necessitar de informações adicionais ou se pretende saber mais sobre os nossos outros serviços, entre em contato com o seu revendedor.
</font><br><br></td></tr>

<tr><td><font face="Arial" size="2"> Caso não possua um revendedor específico, pode escolher um facilmente utilizando o seguinte endereço:  <a href ="https://www.redhatrenewal.com/EUROPE/lz.aspx?p1=K3cxyaSY2KYM0KzYq+7T6DUtK4seG+N5IzFXbkF1NEeXRTbPsLBcDw==&w=40" >  hiperligação </a></font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Se acha que essa mensagem deverá ser direcionada a outras pessoas futuramente, por favor nos comunique através do endereço   <a href=mailto:customerdata-emea@redhat.com> customerdata-emea@redhat.com </a>



 <BR>
</font><br></td></tr>
<tr><td><font face="Arial" size="2">
Ficamos honrados em ajudá-lo. 
  <BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2">
Atenciosamente,
<br><br><b></b><br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> Equipe de Renovações da Red Hat <br><br><b></b><br><br></font></td></tr>


<tr><td><font face="Arial" size="1">
<br>
© 2009 Red Hat, Inc. Todos os direitos reservados. A Red Hat, a Red Hat Enterprise Linux, o logotipo Shadowman e JBoss são marcas comerciais registadas da Red Hat Inc. nos E.U.A. e em utros países. O Linux é uma marca comercial registada de Linus Torvalds. Todas as outras marcas comerciais registadas são propriedade dos seus respectivos proprietários.
</font></td></tr>


</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
