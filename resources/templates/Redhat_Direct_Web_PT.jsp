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

<tr><td><img src="<c:out value="${rh_img}"/>" <BR></td></tr>


<tr><td><font face="Arial" size="2"><br><x:out select="$d//customer/name"/></font><br></td></tr>
<tr><td><font face="Arial" size="2">  Número de conta -    <x:out select="$d//acct_no"/></font><br></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Obrigado por escolher as soluções Red Hat. 
 <br> <br> </font></td></tr> 

<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}">
<tr><td><font face="Arial" size="2">

Segundo os nossos registos, suas subscrições Red Hat irão EXPIRAR EM <c:out value="${stage}"/> DIAS. Certifique-se de renová-las antes de expirarem para continuar a receber os benefícios das suas subscrições.
</font></td></tr>

</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2">
Segundo os nossos registos, as suas subscrições Red Hat expiraram. Certifique-se de renová-las antes de expirarem para continuar a receber os benefícios das suas subscrições.
</font></td></tr>
</c:otherwise>
</c:choose>


<c:if test="${tpl_vals[1] == 'Web'}">  

<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>
Clique aqui para <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/button_renew_now_PT.gif" border=0> </a> <br><br></font> </td></tr> 
</c:if>



<tr><td><font face="Arial" size="2">
<BR>

Gostaríamos também de informar-lhe que realizamos diversas melhorias para proporcionar uma maior flexibilidade e valorização para a sua subscrição Red Hat. Estas melhorias irão proporcionar-lhe uma versão  personalizada e melhorada para a sua atual solução Red Hat.

</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR>
A tabela abaixo descreve como ficará sua subscrição atual com a nossa nova estrutura de produtos, que lhe será entregue quando renovar a sua subscrição.
<BR>&nbsp;<BR>
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
Suas subscrições Red Hat lhe proporciona um valor contínuo que ajuda na resolução diária dos seus problemas comerciais. A Red Hat dimensiona este valor com base no número de sistemas executando o Red Hat. Enquanto possuir alguma subscrição ativa, será necessário manter uma subscrição para cada instalação / instância do  Red Hat. Somente com estas subscrições ativas você terá acesso a:
<br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Novas tecnologias: </b>suporte a novos circuitos integrados, otimizações de desempenho, aumento da carga de trabalho específico e muito mais são entregues trimestralmente como parte da sua subscrição, sem qualquer custo adicional;
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


<tr><td><font face="Arial" size="2">Você pode ler mais sobre os benefícios e requisitos de renovações de sua subscrição Red Hat <a href ="http://www.redhat.com/subscriptions/" >aqui. </a>
</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Se acha que essa mensagem deverá ser direcionada a outras pessoas futuramente, por favor nos comunique através do endereço  <a href=mailto:customerdata-emea@redhat.com > customerdata-emea@redhat.com.</a>

 <BR>
</font><br></td></tr>

<c:choose>
<c:when test="${tpl_vals[1] == 'Direct'}"> 

<tr><td><font face="Arial" size="2">Se necessitar de informações adicionais ou se pretende saber mais sobre os nossos outros serviços, entre em contato comigo através do <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/phone"/></x:when><x:otherwise><x:out select="$d//client/rep_tel"/></x:otherwise></x:choose>.
<BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2"> Atenciosamente,  <br><br><br></font> </td></tr> 
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
Ficamos honrados em ajudá-lo.  
<br><br></font>  </td></tr>

<tr><td><font face="Arial" size="2">Atenciosamente,<br><br><b><br><br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> Equipe de Renovações da Red Hat <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 900 Main Campus Dr.<br><br> </font> </td></tr> 
<tr><td><font face="Arial" size="2"> Raleigh, NC 27606 <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 877-707-3757<br> <br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> renewals@redhat.com <br><br><br></font> </td></tr> 


</c:when>
</c:choose>
<tr><td><font face="Arial" size="1">

© 2009 Red Hat, Inc. Todos os direitos reservados. A Red Hat, a Red Hat Enterprise Linux, o logotipo Shadowman e JBoss são marcas comerciais registadas da Red Hat Inc. nos E.U.A. e em utros países. O Linux é uma marca comercial registada de Linus Torvalds. Todas as outras marcas comerciais registadas são propriedade dos seus respectivos proprietários.<BR><BR></font></td></tr>
</table>



</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
