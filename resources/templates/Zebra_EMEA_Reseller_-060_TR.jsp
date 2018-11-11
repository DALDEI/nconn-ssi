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
  <title>Zebra Renewal Notification</title>
</head>

<body>

<table cellspacing="0" cellpadding="0" width="800" border="0" align="left">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
  <tr align="left" valign="top">
    <td>
      <table cellspacing="0" cellpadding="0" width="28" border="0" align="left">
        <tr align="left" valign="top"><td>
<img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/zebra_yellow_bar.png">
        </td></tr>
      </table>
    </td>
    <td>
      <table cellspacing="0" cellpadding="0" width="12" border="0" align="left">
        <tr><td>&nbsp;</td></tr>
      </table>
    </td>
    <td>
  <table cellspacing="0" cellpadding="0" width="160" border="0" align="left">
    <tr align="left" valign="top"><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/zebra_logo.png"></td></tr>
  </table>
</td>


<%-- BEGIN: Body of letter --%>
<td>

<table cellspacing="0" cellpadding="0" width="600" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
<%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , null, "mm/dd/yy" , "tr" , "" ) %>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"><b>
Zebra Servis Sözleşmeniz sona erdi!
  </b></font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="5" width="560" border="0">
  <tr bgcolor="5f4b7a">
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">
Sözleşme Numarası
    </font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">
Son Kullanıcı
    </font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">
Bitiş Tarihi
    </font></th>
  </tr>
  <c:set var="pcount" value='0'/>
  <x:forEach select="$d/account/assets/asset" var="p">
    <c:choose>
      <c:when test="${pcount mod 2 == '0'}">
        <tr>
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_1"/></font></td>
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_3"/></font></td>
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_2"/></font></td>
        </tr>
      </c:when>
      <c:otherwise>
        <tr bgcolor="e0e0e0">
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_1"/></font></td>
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_3"/></font></td>
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_2"/></font></td>
        </tr>
      </c:otherwise>
    </c:choose>
    <c:set var="pcount" value="${pcount + 1}"/>
  </x:forEach>
</table>

<table cellspacing="0" cellpadding="0" width="600" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Müşterinizin sahip olduğu seçenekler için 
<a href="http://www.zebra.com/zebraonecare">www.zebra.com/zebraonecare</a> 
adresine gidin. Yeni hizmetler, yeni servis seçenekleri ve 
yeni avantajlar sizleri bekliyor.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Müşterinize sözleşme yenilemeyi son güne ya da bitiş tarihi 
sonrasına bırakmamasını söyleyin - aksi takdirde sözleşme 
bitiş tarihinden önce yenilenmezse hizmetler kesintiye uğrayabilir. 
Müşteriniz, o zamana dek kullandığı hizmetlerden yararlanamaz.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Zebra OneCare kapsamında müşterilerinizin istedikleri ürün 
hizmet süresi ve kullanılırlık seviyelerini muhafaza eden hizmetler 
aşağıda sıralanmaktadır. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>

<table cellspacing="0" cellpadding="0" width="560" border="0">
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
Yazılım ve cihaz yazılımı güncellemeleri
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
Yardım masası desteği ve sorun giderme
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
Tam kapsamlı servis
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
Donanım onarımı ya da değişimi
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
Sözleşmeye dahil katma değerli opsiyonlar
    </font></td>
  </tr>
</table>

<table cellspacing="0" cellpadding="0" width="600" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Hizmetlerin kesilmesi müşterilerinizin işlerini olumsuz etkileyebilir.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Herhangi bir sorunuz olduğu takdirde lütfen benimle iletişime geçerseniz mevcut opsiyonlar hakkında konuşabiliriz.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Sizin için hazırladığımız yenileme teklifi, sözleşme yenilemeleri 
sitemizde sizi bekliyor: 
<a href="http://renewals.connectpartnerportal.com/">
http://renewals.connectpartnerportal.com/</a>.
Daha önce verdiğimiz kullanıcı bilgileri ile giriş yapın. İş ortağı 
portalına hiç giriş yapmadıysanız lütfen yardım için benimle 
iletişime geçmekten çekinmeyin.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Sözleşmeyi yenilemiş bulunuyorsanız bunun için teşekkür 
ederiz ve lütfen bu duyuruyu dikkate almayın.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Herhangi bir sorunuz ya da yorumunuz varsa lütfen çekinmeden benimle iletişime geçin.    </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Saygılarımla,</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Zebra Renewals Team (EMEA)
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
<a href="mailto:emea.renewals@zebra.com">emea.renewals@zebra.com</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Yenileme bildirimlerini e-posta olarak almak istemiyorsanız 
<a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "Zebra_Unsubscribe_Acknowledgement_TR" ) %>'>
lütfen buraya tıklayınız.</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


</td></tr>
</table>


</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>