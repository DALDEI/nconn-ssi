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

<tr><td><img src="<c:out value="${rh_img}"/>" <br> <BR></td></tr>


<tr><td><font face="Arial" size="2"><br><x:out select="$d//customer/name"/></font><br></td></tr>
<tr><td><font face="Arial" size="2">  Conta  -  <x:out select="$d//acct_no"/></font><br></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Agradecemos por escolher a Red Hat. <br> <br> </font></td></tr> 

<c:choose>
<c:when test="${tpl_vals[2] == '0'}"> 
<tr><td><font face="Arial" size="2">

De acordo com nossas informações, sua subscrição Red Hat expirou. Por favor lembre-se de renová-las imediatamente para continuar recebendo os benefícios de suas subscrições, incluindo acesso ao nosso software Red Hat, atualizações, upgrades, suporte técnico, correções de segurança e ao Programa de Garantia de Código Aberto Red Hat. Por favor, verifique a nova oferta de Renovação pois nossos produtos mudaram. 

</font></td></tr>

</c:when>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2">
De acordo com nossas informações, sua subscrição Red Hat expirará em 30 dias. Por favor lembre-se de renová-las imediatamente para continuar recebendo os benefícios de suas subscrições, incluindo acesso ao nosso software Red Hat, atualizações, upgrades, suporte técnico, correções de segurança e ao Programa de Garantia de Código Aberto Red Hat. Por favor, verifique a nova oferta de Renovação pois nossos produtos mudaram.   
</font></td></tr>

</c:when>


<c:otherwise> 
<tr><td><font face="Arial" size="2">
<BR>De acordo com nossas informações, sua subscrição Red Hat expirará em <c:out value="${stage}"/> dias. Por favor lembre-se de renová-las imediatamente para continuar recebendo os benefícios de suas subscrições, incluindo acesso ao nosso software Red Hat, atualizações, upgrades, suporte técnico, correções de segurança e ao Programa de Garantia de Código Aberto Red Hat. Por favor, verifique a nova oferta de Renovação pois nossos produtos mudaram.   
</font></td></tr>

</font></td></tr>
</c:otherwise>
</c:choose>
  
<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>
Click aqui para <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat2/button_renew_now.gif" border=0> </a> <br><br></font> </td></tr> 


<tr><td><font face="Arial" size="2">
<BR>
Também gostaríamos de aproveitar esta oportunidade para notificar que, baseado em comentários e solicitações de nossos clientes, nós da Red Hat aperfeiçoamos inúmeros pontos relacionados à sua subscrição para que a mesma se torne mais flexível, acessível e com valor agregado. Uma vez que sua licença esteja renovada, ofereceremos uma versão mais atualizada da sua solução atual. Essa transição inclui um produto novo com configurações mais flexíveis, números do produto, preço, níveis de suporte e a opção de produtos seccionados. Como resultado das novas configurações, o preço da renovação poderá ser diferente do seu preço original.</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR> 

Abaixo você poderá encontrar o mapeamento de sua subscrição atual :
<BR>&nbsp;<BR>



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
Sua licença Red Hat fornece valor na resolução de seus problemas diários. Medimos esse valor baseado em números de recursos que utilizam nosso software, por isso, para manter suas subscrições ativas, será necessário manter a subscrição atualizada para cada instalação/ instancia de software Red Hat. Somente com a assinatura ativa você terá acesso à: 
<br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Nova tecnologia: </b>suporte para novos chip-sets, otimização de desempenho, bem como melhorias específicas de produtos, já incluídos em sua assinatura.  
<li>
<b>Atualizações, correção de bugs, erros de segurança: </b>melhoria nas correções, novos recursos e certificações freqüentes estarão disponíveis em sua subscrição. 
<li>
<b>Teste de software e perguntas e respostas (QA): </b>as mais recentes tecnologias são testadas para que você possa executar suas implementações criticas com confiança. 
<li>
<b>Melhora na Flexibilidade: </b>as mais recentes tecnologias são testadas para que você possa executar suas implementações criticas com confiança. 
<li>
<b>Suporte técnico: </b>uso ilimitado em todos os níveis de suporte necessários. 
<li>
<b>Certificado de hardware e software: </b>implemente soluções com a confiança de que suas aplicações de software e hardware são totalmente certificadas.
<li>
<b>Documentação e source code: </b>acesso ao nosso produto binário e documentação. 
<li>
<b>Intellectual Property Assurance: </b>programa da Red Hat de garantia de propriedade intelectual, que prevê garantia em caso de um processo judicial, quando tiver uma subscrição Red Hat.

</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">
Você pode aprender mais detalhes sobre os benefícios da renovação de sua subscrição Red Hat, clicando <a href ="http://www.redhat.com/subscriptions/" >AQUI</a>.
</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">

Se preferir que outra pessoa receba as notificações das subscrições Red Hat no futuro, por favor envie os detalhes para <a href=mailto:customerservice-latam@redhat.com>customerservice-latam@redhat.com</a>. Por favor lembre-se de incluir seu Red Hat Login ID e seu número de contrato.   
</font><br><br><br></td></tr>


<tr><td><font face="Arial" size="2">
Em caso de dúvidas ou para mais informações, por favor, entre em contato através do telefone: 
<x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/phone"/></x:when><x:otherwise><x:out select="$d//client/rep_tel"/></x:otherwise></x:choose>.

</font><br><br><br></td></tr>


<tr><td><font face="Arial" size="2"> Atenciosamente,<br><br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 
<x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/name"/></x:when><x:otherwise><x:out select="$d//client/rep_name"/></x:otherwise></x:choose><br><br><br></font> </td></tr> 

<tr><td><font face="Arial" size="2"> 900 Main Campus Dr.</font> </td></tr> 
<tr><td><font face="Arial" size="2"> Raleigh, NC 27606</font> </td></tr> 
<tr><td><font face="Arial" size="2"> 877-707-3757</font> </td></tr> 
<tr><td><font face="Arial" size="2"> <a href=mailto:renewals@redhat.com > renewals@redhat.com</a> <br><br><br></font> </td></tr> 
<tr><td><font face="Arial" size="1">

© 2011 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.
<BR><BR></font></td></tr>

</table>



</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
