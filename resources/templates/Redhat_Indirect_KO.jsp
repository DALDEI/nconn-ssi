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
<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/Rh_banner_${tpl_vals[2]}_KO.gif"/> 
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="" width="660" border="0">

<tr><td><img src="<c:out value="${rh_img}"/>" <br> <BR></td></tr>


<tr><td><font face="Arial" size="2"><br>Account Number -  <x:out select="$d//acct_no"/></font><br><br></td></tr>

</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2">귀사에서 사용하고 계시는 아래에 있는Red Hat 서브스크립션의 정보와 서비스 만료일에 대해서 알려드립니다.<br> <br> </font></td></tr> 
<tr><td><font face="Arial" size="2">Red Hat 소프트웨어 업데이트 업그레이드, 기술 지원, 보안수정과 Red Hat's Open Source Assurance Program 접속을 포함하여 귀사가 서브스크립션의 대한 혜택을 지속적으로 받기 위해서는, 귀사의 공급업체나 아래의 이메일에 있는 당사 파트너사의 업무지원센터에 연락하시면, 귀사의 서브스크립션 갱신해 드릴 것입니다.<br> <br> </font></td></tr> 
<tr><td><font face="Arial" size="2">저희는 이 기회를 통해 저희 고객의 피드백을 기반으로 하여, 귀사에서 사용하고 계시는 Red Hat 서브스크립션에 대하여 더 나은 적응성과 가치를 제공하기 위하여, 여러가지를 향상 시켰다는 것을 알려드리고 합니다. <br> <br> </font></td></tr> 
<tr><td><font face="Arial" size="2">귀사의 서브스크립션을 갱신하시면, Red Hat은 귀사에서 현재 사용하고 계시는 솔루션보다 향상된 기능의 솔루션 버전을 제공할 것입니다.<br> <br> </font></td></tr> 
<tr><td><font face="Arial" size="2">아래의 표는 현재 귀사에서 사용하고 있는 서브스크립션과, 귀사에서 서브스크립션을 갱신하실 경우 받으실 새로운 버전의 서브스크립션입니다.<br> <br> </font></td></tr> 

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
<br>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2">당신의 새로운 패키지에 관한 더 자세한 정보는, <a href="http://www.redhat.com/rhel/renew/">http://www.redhat.com/rhel/renew/</a> 를 방문 하시면 확인하실 수 있습니다.<br><br></font></td></tr>
<tr><td><font face="Arial" size="2">서브스크립션 서비스는 귀사의 비지니스 문제 해결을 위해 귀사에게 지속적인 가치를 제공합니다.<br><br></font></td></tr>
<tr><td><font face="Arial" size="2">귀사에서 유효한 서브크립션을 가지고 있는 동안, Red Hat 소프트웨어를 실행하는 리소스의 수를 기준으로 가치를 측정합니다. 예를 들어 소프트웨어 설치를 위해서 귀사에서는 유효한 서브스크립션을 유지하셔야 합니다. 서브스크립션의 엑세스 권한은 다음과 같습니다.<br><br></font></td></tr>
<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>신기술: </b>새로운 Chip-set을 위한 지원, 주요기능 최적화, 워크로드 특정향상 등이 별도의 추가 비용없이 귀사의 서브스크립션 서비스의 내용으로 매분기마다 제공됩니다. 
<li>
<b>업데이트, 버그수정, 보안오류: </b>향상,수정, 새로운 기능 그리고 지속적인 인증은 귀사의 서브스크립션 기간동안 가능합니다.  
<li>
<b>소프트웨어 테스트와 질문 및 답변: </b> 최신 기술은 테스트가 완료되었고 이 패키지는 귀사를 위한 것입니다. 따라서 귀사는 특별한 검토 과정없이도 귀사의 중요한 계획을 실행 할 수 있습니다. 
<li>
<b>업그레이드 유연성:  </b> 귀사의 서브스크립션이 활성화 되어 있는 한, 귀사에서는 새로운 버전을 효과적으로 사용 할 수 있습니다. 
<li>
<b>기술지원: </b>귀사에서 필요로 하는 무제한의 이용과 지원.  
<li>
<b>하드웨어와 소프트웨어 인증서: </b> 신뢰 있는 소프트웨어 응용프로그램으로 인한 효과적인 솔루션의 사용과 완벽하게 인증받은 하드웨어. 
<li>
<b>소스코드와 설명서: </b> 당사의Software Product Binaries and Documentation에 접속하시어 이용 가능합니다.
<li>
<b>지적재산권보호: </b>Red Hat 서브스크립션에 가입해 있는 동안, 관련된 법적 소송의 경우에 일정한 보호를 제공하는 Red Hat의 지적 재산권 보호 프로그램.
</ul>

</font></td></tr>
 
<tr><td><font face="Arial" size="2"><a href= "https://www.redhatrenewal.com/16LZ/lz.aspx?p1=WRg1CmP7L8J+EZUTYDEbiuxId2hg5xgods/r0SbP8Hc=&w=60">여기</a>를 클릭하시면, 귀사의 Red Hat 서브스크립션에 관한 더 자세한 정보와 갱신에 관한 내용을 보실 수 있습니다.</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">추가 정보가 필요하거나, 당신의 서비스에 대하여 더 알고 싶으신 것이 있으시면 귀사의 공급업체에게 연락하십시요.</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">귀사에서 선호하는 공급업체가 없는 경우, <a href ="https://www.redhatrenewal.com/EUROPE/lz.aspx?p1=K3cxyaSY2KYM0KzYq+7T6DUtK4seG+N5IzFXbkF1NEeXRTbPsLBcDw==&w=40" >링크</a>를 클릭함으로써 쉽게 선택하실 수 있습니다.</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">귀사의 다른 분이 Red Hat 서브스크립션에 관한 공지 안내문을 받아야 한다고 생각되시면, 자세한 사항을<a href=mailto:customerdata-apac@redhat.com> customerdata-apac@redhat.com </a>으로 보내주십시요. <BR>
</font><br></td></tr>

<tr><td><font face="Arial" size="2">Red Hat은 귀사를 지원하게 되어 대단히 기쁘게 생각하며 감사의 말씀을 드립니다.<br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2">감사합니다.<br><br><br><br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> Red Hat Renewals Team <br><br></font> </td></tr> 

<tr><td><font face="Arial" size="1">

© 2009 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.
<BR><BR></font></td></tr>
</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
