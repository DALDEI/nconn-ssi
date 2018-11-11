<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<fmt:setLocale value="en-US" />
<x:parse var="d" doc="${data}"/>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
  <title>FSecure Renewal Notification</title>
</head>

<body>

<%-- DATE & LOGO --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
<%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , null, "mm/dd/yy" , "tr" , "" ) %>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr align="center" valign="top"><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/fsecure/TR_EU_EXPIRING_90_60_30_7.png"></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- LETTER BODY --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">Değerli Müşterimiz,</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
F-Secure Güvenlik ürünlerini tercih ettiğiniz için teşekkür ederiz. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Kayıtlarımıza göre aşağıda listelenen F-Secure lisanslarınızın süresi yakında sona erecektir. Korumalı kalmak ve F-Secure ürün güncellemelerinin yanı sıra destek ve bakım hizmetleri alabilmek için lütfen lisanslarını yenileyiniz
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- CONTRACT TABLE --%>
<table width=660 cellspacing="0" cellpadding="5" indent=30 border="1" >
  <tr bgcolor="#EF0707">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Yenileme Kimliği</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">ürün Adı</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Miktar</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Son Kullanma Tarihi</font></th>
  </tr>

<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/assets/asset" var="p">
<c:choose>

<c:when test="${pcount mod 2 == '0'}">
<tr>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_5"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_2"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_3"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_4"/></font></td>
</c:when>

<c:otherwise>
<tr bgcolor="e0e0e0">
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_5"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_2"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_3"/></font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_4"/></font></td>
</c:otherwise>
</c:choose>

</tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="4">
Yenileme için temsilcinizle iletişime geçin
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Lisanslarınızı yenilemek, indirimli çok yıllı fiyatlandırma seçenekleri, %20 eskra farkla Premium pakete geçmek ve  ürünlerimiz ve hizmetlerimiz hakkında çok daha fazla bilgi almak için telefonla ya da e- posta yoluyla F-Secure temsilcinizle irtibata geçmenizi rica ederiz.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="4">
Premium Service Aşağıdaki Bileşenleri İçerir:
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
    <ul>
      <li>Üç Radar - SMS hesapları
      <li>Yüksek düzey teknik destek
      <li>Teknik destek için öncelikli erişim hakkı
      <li>Sınırsız sayıda teknik vakalar
      <li>Virüs kaldırma yardımı
      <li>Kişisel e -posta iletişimi
      <li>Müşteriye özel hizmet raporları
    </ul>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>


  <tr><td><font face="Arial" size="2">
Yakın zamanda lisanslarınızı yenilediyseniz, lütfen bu uyarıyı dikkate almayınız.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_email"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_phone"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"> &nbsp;
  </font></td></tr>

  <tr><td><font face="Arial" size="2">
Yenileme işlemleri veya müşteri iletişimleriyle ilgili herhangi bir sorunuz olursa bizimle irtibata geçebilirsiniz.
  </font></td></tr>
  <tr><td><font face="Arial" size="2"> &nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">Saygılarımızla</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_ssirep_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2">F- Secure Yenileme Takımı</font></td></tr>
  <tr><td><font face="Arial" size="2">
Ofis Telefonu <b><x:out select="$d//opp_ssirep_phone"/></b>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
E-Mail Adresi <b><x:out select="$d//opp_ssirep_email"/></b>
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr align="right" valign="top"><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/fsecure/fsecure_logo_footer.png"></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  
  <tr><td><font face="Arial" size="2">
If you prefer not to receive email renewal notifications, please 
<a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "FSecure_Unsubscribe_Acknowledgement_IN" ) %>'>
click here to unsubscribe.</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

</table>


</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>