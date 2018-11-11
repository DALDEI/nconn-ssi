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

<tr><td><font face="Arial" size="4"><center><b>Red Hat İş Ortağı: Üyelik Yenileme Uyarısı</b></center><br><br><br> </font></td></tr> 


<tr><td><font face="Arial" size="2">Değerli İş Ortağı,<br> <br> </font></td></tr> 


<tr><td><font face="Arial" size="2">
Bu, kayıtlarımıza göre müşterilerinizin Red Hat üyelikleri yakında biteceğine dair size haftalık gönderilen hatırlatıcı e-postadır. Lütfen kendileri ile irtibata geçip yenilemelerini ve önemli yamaları, güncellemeleri ve güvenlik yamalarını almaya devam etmeleri için lütfen kendileri ile irtibata geçin.  
</font></td></tr>



<tr><td><font face="Arial" size="2">
<br>

Aşağıdaki tabloda önümüzdeki 30 gün içerisinde Red Hat üyelikleri sona erecek olan tüm müşterilerinizin özeti bulunmaktadır:<br>&nbsp<br><br></font></td></tr>



</table>

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Müşteri Adı</font><br></th>

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Kontrakt<BR> Numarası</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Adet</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Yeni SKU <br>Ürün Kodu</font><br></th>
<th  align="center" valign="center">
<font face="Arial" size="2" color="ffffff">Yeni Ürün <br>Tanımı</font><br></th>

<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Son Kullanım <br>Tarihi</font><br></th>


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

<tr><td><font face="Arial" size="2"><br><br>Müşterilerinize 90, 60, 30, 0 ve -30 gün bazında yenileme hatırlatıcı, yenileme değeri ve faydaları hakkında bilgilendirici e-posta gönderildiğini unutmayın. <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">Eğer ilave bir bilgi veya diğer servislerimiz hakkında bilgi almak isterseniz <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a> adresinden Yenileme Ekibimizle irtibata geçin. <br><br></font></td></tr>
<tr><td><font face="Arial" size="2">Saygılarımızla,<br><br></font> </td></tr> 
 



<tr><td><font face="Arial" size="2">
Red Hat Yenileme Ekibi
<br><br><br></font> </td></tr> 

<tr><td><font face="Arial" size="1">

© 2011 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
