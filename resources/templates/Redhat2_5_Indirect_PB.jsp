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
<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat2/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.gif"/> 


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><img src="<c:out value="${rh_img}"/>"  <br> <br></td></tr>

<tr><td><font face="Arial" size="2"><br>Account Number:  <x:out select="$d//acct_no"/></font></td></tr><tr><td></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>
Agradecemos por escolher a Red Hat.
</font></td></tr>
 
<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2"><br>
De acordo com nossas informações, sua subscrição Red Hat expirou. Por favor certifique-se em renova-las imediatamente para que você continue recebendo os benefícios de suas subscrições, incluindo acesso ao nosso software Red Hat, atualizações, upgrades, suporte técnico, correções de segurança e ao Programa de Garantia de Código Aberto Red Hat. Por favor certifique-se de ler os termos abaixo para entender os termos da sua oferta de renovação porque as as configuraçoes do nosso produto mudaram. </font></td></tr>
<tr><td><font face="Arial" size="2">

<BR>Para que você continue recebendo os benefícios da sua subscrição, por favor entre em contato com o seu revendedor ou o nosso time de parceiros na  <a href=mailto:latampartnerhelpdesk@redhat.com>latampartnerhelpdesk@redhat.com</a>.</font></td></tr>



</c:when>

<c:when test="${tpl_vals[2] == '0'}"> 
<tr><td><font face="Arial" size="2"><br>
De acordo com nossas informações, sua subscrição Red Hat expira hoje. Por favor certifique-se em renova-las imediatamente para que você continue recebendo os benefícios de suas subscrições, incluindo acesso ao nosso software Red Hat, atualizações, upgrades, suporte técnico, correções de segurança e ao Programa de Garantia de Código Aberto Red Hat. Por favor certifique-se de ler os termos abaixo para entender os termos da sua oferta de renovação porque as as configuraçoes do nosso produto mudaram. 
 </font></td></tr>

<tr><td><font face="Arial" size="2">

<BR>Para que você continue recebendo os benefícios da sua subscrição, por favor entre em contato com o seu revendedor ou o nosso time de parceiros na  <a href=mailto:latampartnerhelpdesk@redhat.com>latampartnerhelpdesk@redhat.com</a>.</font></td></tr>



</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2"><br>

De acordo com nossas informações, sua subscrição Red Hat vai expirar. Por favor certifique-se em renova-las antes da data de expiração para que você continue recebendo os benefícios de suas subscrições, incluindo acesso ao nosso software Red Hat, atualizações, upgrades, suporte técnico, correções de segurança e ao Programa de Garantia de Código Aberto Red Hat. Por favor certifique-se de ler os termos abaixo para entender os termos da sua oferta de renovação porque as as configuraçoes do nosso produto mudaram. 
</font></td></tr>

<tr><td><font face="Arial" size="2">

<BR>Por favor entre em contato com o seu revendedor ou  entre em contato com os parceiros da Red Hat: <a href=mailto:latampartnerhelpdesk@redhat.com>latampartnerhelpdesk@redhat.com</a>.</font></td></tr>

</c:otherwise>
</c:choose>
 
<tr><td><font face="Arial" size="2">
<BR>Também gostaríamos de aproveitar esta oportunidade para notificar que, baseado em comentários e reações de nossos clientes, nós da Red Hat aperfeiçoamos vários pontos relacionados à sua subscrição para que a mesma se torne mais flexível, acessível e com valor. Uma vez que sua licença esteja renovada, estaremos oferecendo uma versão mais atualizada da solução que você possui atualmente. Essa transição inclui um produto novo com configurações mais flexiveis, números do produto, preço, níveis de suporte e a opção de produtos seccionados. Como resultado das novas configurações, o preço da renovação poderá ser diferente do seu preço original.</font></td></tr>

<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2"><br>
Abaixo você poderá encontrar o mapeamento de sua subscrição atual referente ao novo produto que você receberá com sua renovação:<br>&nbsp<br> </font></td></tr>
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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
</c:if></font></td>
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
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
</c:if></font></td>
<td align="center" valign="center"><font face="Arial" style="font-size:8pt">  <x:out  select="$d//reseller"/></font> </td>

</c:otherwise>
</c:choose>

</tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>
<br>

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Você pode encontrar mais informação sobre a estrutura do nosso novo produto visitando, <a href ="http://www.redhat.com/rhel/renew/"> http://www.redhat.com/rhel/renew/ </a> <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">Sua licença Red Hat fornece valor na resolução de seus problemas diários. Medimos esse valor baseado em números de recursos que utilizam nosso software, por isso, para manter suas licenças ativas, será necessário manter a subscrição atualizada para cada instalação/ instancia de software Red Hat. Somente com a assinatura ativa você terá acesso a:  <br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Nova tecnologia: </b>suporte para novo chip-sets, otimização de desempenho, melhoria na workload-specific e mais entregas por quarto como parte se sua subscrição, já incluído em sua assinatura. 
<li>
<b>Atualizações, correção de bugs, erros de segurança: </b>melhoria nas correções, novos recursos e certificações freqüentes estarão disponíveis em sua licença. <li>
<b>Teste de software e perguntas e respostas (QA): </b>as mais recentes tecnologias são testadas para você, dessa maneira você poderá executar suas implementações criticas com confiança.<li>
<b>Melhora na Flexibilidade: </b>uma vez sua licença esteja vigente, as novas versões estarão disponíveis para implementação.<li>
<b>Suporte técnico: </b>uso ilimitado em todos os níveis de suporte necessários.<li>
<b>Certificado de hardware e software: </b>implemente soluções com a confiança de que suas aplicações de software e hardware são totalmente certificadas.
<li>
<b>Documentação e source code: </b>acesso ao nosso produto binário e documentação. 
<br>
<li>
<b>Intellectual Property Assurance: </b>programa da Red Hat de garantia de propriedade intelectual, que prevê garantia em caso de um processo judicial, quando tiver uma subscrição Red Hat.</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">Você pode aprender mais detalhes sobre seus benefícios de renovação de sua subscrição Red Hat <a href= "http://www.redhat.com/subscriptions/">AQUI</a>. Se você precisar de mais detalhes ou informação sobre outros produtos, por favor entre em contato com o seu revendedor.

</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">Se você não tem um revendedor dos produtos da Red Hat, por favor entre em contato com o nosso time de parceiros na <a href=mailto:latampartnerhelpdesk@redhat.com>latampartnerhelpdesk@redhat.com</a> e nós poderemos te colocar em contato com um revendedor parceiro da Red Hat.</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Se achar que outra pessoa deveria receber as notificações das suas subscrições Red Hat no futuro, por favor envie os detalhes para <a href=mailto:customerservice-latam@redhat.com>customerservice-latam@redhat.com</a>. Por favor certifique-se de incluir seu Red Hat Login ID e seu número de contrato. </font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Atenciosamente,<br><br><b></b><br><br></font></td></tr>
<tr><td><font face="Arial" size="2">

<x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/name"/></x:when><x:otherwise><x:out select="$d//client/rep_name"/></x:otherwise></x:choose> 


<br><br><b></b><br><br></font></td></tr>

<tr><td><font face="Arial" size="1">

© 2011 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.
<BR><BR></font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
