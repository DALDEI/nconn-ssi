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
<tr><td><font face="Arial" size="2">  Conta  -  <x:out select="$d//acct_no"/></font><br></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Agradecemos por escolher a Red Hat. <br> <br> </font></td></tr> 

<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}"> 
<tr><td><font face="Arial" size="2">
De acordo com nossas informações, sua subscrição Red Hat expira em <c:out value="${stage}"/> dias. Por favor, certifique-se em renová-la para que você continue recebendo seus benefícios, incluindo acesso ao nosso software Red Hat, atualizações, suporte técnico, correções de segurança e ao Programa de Garantia de Código Aberto Red Hat.
</font></td></tr>

<c:if test="${tpl_vals[1] == 'Web'}">  

<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>
Clique aqui para renová-la <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/button_renew_now.gif" border=0> </a> <br><br></font> </td></tr> 
</c:if>



<tr><td><font face="Arial" size="2">
<BR>

Também gostaríamos de aproveitar esta oportunidade para notificar que, baseado em comentários e reações de nossos clientes, nós da Red Hat aperfeiçoamos vários pontos relacionados à sua subscrição para que a mesma se torne mais flexível, acessível e com valor.  Uma vez que sua licença esteja renovada, estaremos oferecendo uma versão mais atualizada da solução que você possui atualmente. 

</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR>

Abaixo você poderá encontrar o mapeamento de sua subscrição atual referente ao novo produto que você receberá com sua renovação:<BR>&nbsp;<BR>
</font></td></tr>


</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2">
<BR>
De acordo com nossas informações, sua licença Red Hat expirou. Por favor, certifique-se em renová-la para que você continue recebendo benefícios, incluindo acesso ao nosso software Red Hat, atualizações, suporte técnico, correções de segurança e ao Programa de Garantia de Código Aberto Red Hat.
</font></td></tr>

<c:if test="${tpl_vals[1] == 'Web'}">  
<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>
Clique aqui para renová-la <a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/button_renew_now.gif" border=0> </a> <br><br></font> </td></tr> 
</c:if>


<tr><td><font face="Arial" size="2">
<BR>
Também gostaríamos de aproveitar esta oportunidade para notificar que, baseado em comentários e reações de nossos clientes, nós da Red Hat aperfeiçoamos vários pontos relacionados à sua subscrição para que se torne mais flexível, acessível e com valor.  Uma vez que sua licença esteja renovada, estaremos oferecendo uma versão mais atualizada da solução que você possui atualmente.
</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR> 
Abaixo você poderá encontrar o mapeamento de sua licença atual referente ao novo produto que você estará recebendo com sua renovação:
<BR>&nbsp;<BR>
</font></td></tr>
</c:otherwise>
</c:choose>



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
<tr><td><font face="Arial" size="2">Sua licença Red Hat fornece valor na resolução de seus problemas diários. Medimos esse valor baseado em números de recursos que utilizam nosso software, por isso, para manter suas licenças ativas, será necessário manter a subscrição atualizada para cada instalação/ instancia de software Red Hat. Somente com a assinatura ativa você terá acesso a: <br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Nova tecnologia: </b>suporte para novo chip-sets, otimização de desempenho, melhoria na workload-specific e mais entregas por quarto como parte se sua subscrição, já incluído em sua assinatura. 
<li>
<b>Atualizações, correção de bugs, erros de segurança: </b>melhoria nas correções, novos recursos e certificações freqüentes estarão disponíveis em sua licença. 
<li>
<b>Teste de software e perguntas e respostas (QA): </b>as mais recentes tecnologias são testadas para você, dessa maneira você poderá executar suas implementações criticas com confiança.
<li>
<b>Melhora na Flexibilidade: </b>uma vez sua licença esteja vigente, as novas versões estarão disponíveis para implementação. 
<li>
<b>Suporte técnico: </b>uso ilimitado em todos os níveis de suporte necessários
<li>
<b>Certificado de hardware e software: </b>implemente soluções com a confiança de que suas aplicações de software e hardware são totalmente certificadas.
<li>
<b>Documentação e source code: </b>acesso ao nosso produto binário e documentação. 
<li>
<b>Intellectual Property Assurance: </b>programa da Red Hat de garantia de propriedade intelectual, que prevê garantia em caso de um processo judicial, quando tiver uma subscrição Red Hat

</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">Você pode aprender mais detalhes sobre seus benefícios de renovação de sua subscrição Red Hat  <a href ="http://www.redhat.com/subscriptions/" >AQUI. </a>
</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Para alteração de dados de contato para uma outra pessoa, por favor, envie um e-mail para  <a href=mailto:customerdata-latam@redhat.com> customerdata-latam@redhat.com </a>

 <BR>
</font><br></td></tr>

<c:choose>
<c:when test="${tpl_vals[1] == 'Direct'}"> 

<tr><td><font face="Arial" size="2">Em caso de mais informações ou duvidas, por favor, entre em contato através do telefone <x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/phone"/></x:when><x:otherwise><x:out select="$d//client/rep_tel"/></x:otherwise></x:choose>.
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
Estaremos à disposição. 
<br><br></font>  </td></tr>

<tr><td><font face="Arial" size="2">Atenciosamente,<br><br><b><br><br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> Red Hat Renewals Team <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 900 Main Campus Dr.<br><br> </font> </td></tr> 
<tr><td><font face="Arial" size="2"> Raleigh, NC 27606 <br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2"> 877-707-3757<br> <br></font> </td></tr> 

<tr><td><font face="Arial" size="2"> <a href=mailto:renewals@redhat.com > renewals@redhat.com</a> <br><br><br></font> </td></tr> 

</c:when>
</c:choose>
<tr><td><font face="Arial" size="1">

© 2009 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.
<BR><BR></font></td></tr>

</table>



</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
