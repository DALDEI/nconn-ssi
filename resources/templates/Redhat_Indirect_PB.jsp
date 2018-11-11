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
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><img src="<c:out value="${rh_img}"/>"  <br> <br></td></tr>

<tr><td><font face="Arial" size="2"><br>Conta:  <x:out select="$d//acct_no"/></font></td></tr><tr><td></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>
Agradecemos por escolher a Red Hat.
</font></td></tr>
 
<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2"><br>
Gostaríamos de informar que sua subscrição RedHat listada abaixo expirou. 
</font></td></tr>
</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2"><br>
Gostaríamos de  informar que sua subscrição listada abaixo esta prestes a expirar.
</font></td></tr>
</c:otherwise>
</c:choose>
 
<tr><td><font face="Arial" size="2">
<BR>Para continuar recebendo os benefícios de sua subscrição, incluindo acesso ao software RedHat, atualizações, suporte técnico, correções de segurança e ao Programa de Garantia de Código Aberto Red Hat. Por favor entre em contato com sua revenda ou partner helpdesk pelo e-mail abaixo e nós lhe posicionaremos a respeito de sua renovação.</font></td></tr>

<tr><td><font face="Arial" size="2">
<BR>Também gostaríamos de aproveitar esta oportunidade para notificar que, baseado em comentários e reações de nossos clientes, nós da Red Hat aperfeiçoamos vários pontos relacionados à sua subscrição para que se torne mais flexível, acessível e com valor.  Uma vez que sua licença esteja renovada, estaremos oferecendo uma versão mais atualizada da solução que você possui atualmente. 
</font></td></tr>

<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2"><br>
Abaixo você poderá encontrar o mapeamento de sua licença atual referente ao novo produto que você estará recebendo com sua renovação: <br>&nbsp<br> </font></td></tr>
</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2"><br>
Abaixo você poderá encontrar o mapeamento de sua subscrição atual referente ao novo produto que você receberá com sua renovação:<br>&nbsp<br>
</font></td></tr>
</c:otherwise>
</c:choose>


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
<tr><td><font face="Arial" size="2"><br>Mais informações sobre as ofertas você poderá encontrar no site,<a href ="http://www.redhat.com/rhel/renew/"> http://www.redhat.com/rhel/renew/ </a> <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">Sua licença Red Hat fornece valor na resolução de seus problemas diários. Medimos esse valor baseado nos números de recursos que utilizam nosso software, por isso, para manter suas licenças ativas, será necessário manter subscrição atualizada para cada instalação/ instancia de Red Hat software. Somente com assinatura ativa você terá acesso a:

 <br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Nova tecnologia: </b>suporte para novo chip-sets, otimização de desempenho, melhoria na workload-specific e mais entregas por quarto como parte se sua <b>subscrição</b>, já incluído em sua assinatura. 
<li>
<b>Atualizações, correção de bugs, erros de segurança: </b>melhoria nas correções, novos recursos e certificações freqüentes estarão disponíveis em sua licença. <li>
<b>Teste de software e perguntas e respostas (QA): </b>as mais recentes tecnologias são testadas para você, dessa maneira você poderá executar suas implantações criticas com confiança.<li>
<b>Melhora na Flexibilidade: </b>uma vez sua licença esteja vigente, as novas versões estarão disponíveis para implementação.<li>
<b>Suporte técnico: </b>uso ilimitado em todos os níveis de suporte necessários<li>
<b>Certificado de hardware e software: </b>implemente soluções com a confiança de que suas aplicações de software e hardware são totalmente certificadas.
<li>
<b>Documentação e source code: </b>acesso ao nosso produto binário e documentação. 
<br>
<li>
<b>Intellectual Property Assurance: </b>programa da Red Hat de garantia de propriedade intelectual, que prevê garantia em caso de um processo judicial, quando tiver uma subscrição Red Hat</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">Você pode aprender mais detalhes sobre seus benefícios de renovação de sua subscrição Red Hat <a href= "https://www.redhatrenewal.com/16LZ/lz.aspx?p1=WRg1CmP7L8J+EZUTYDEbiuxId2hg5xgods/r0SbP8Hc=&w=60">AQUI</a>.

</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">Para mais informações sobre sua renovação ou serviço, por favor, contate sua revenda.</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Caso você não possua uma revenda de sua preferência, você poderá, facilmente, elege-la através deste
 <a href ="https://www.redhatrenewal.com/EUROPE/lz.aspx?p1=K3cxyaSY2KYM0KzYq+7T6DUtK4seG+N5IzFXbkF1NEeXRTbPsLBcDw==&w=40" > link</a>.</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Para alteração de dados de contato para uma outra pessoa, por favor, envie um e-mail para <a href=mailto:customerdata-latam@redhat.com> customerdata-latam@redhat.com </a>



 <BR>
</font><br></td></tr>
<tr><td><font face="Arial" size="2">Estaremos à disposição.  <BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2">Atenciosamente,<br><br><b></b><br><br></font></td></tr>
<tr><td><font face="Arial" size="2">Red Hat Renewals Team<br><br><b></b><br><br></font></td></tr>

<tr><td><font face="Arial" size="1">

© 2009 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.
<BR><BR></font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
