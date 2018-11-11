<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<fmt:setLocale value="en-US" />
<x:parse var="d" doc="${data}"/>
<x:set var="tpl_id" select="string($d//template_id)"/>
<x:set var="tpl_reg" select="string($d//region)"/>
<x:set var="partner_team_email" select="string($d//partner_team_email)"/> 
<x:set var="chng_email_not" select="string($d//chng_email_notification)"/> 
<x:set var="account_status" select="string($d//account_status)"/> 
<x:set var="ssirepemail" select="string($d//ssirep/email)"/> 

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

<tr><td><font face="Arial" size="2"><br>Hesap Numarası -  <x:out select="$d//acct_no"/></font></td></tr><tr><td></td></tr>

</table>
















<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Aşağıdaki Red Hat üyelikilerinizin 
<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
sona erdiğini 
</c:when>

<c:when test="${tpl_vals[2] == '0'}"> 
bugün sona ereceğini 
</c:when>


<c:otherwise> 
sona ereceğini 
</c:otherwise>
</c:choose>
bilmek istersiniz diye düşündük. Red Hat yazılımı, güncelleme, üst versiyona geçiş, teknik destek, güvenlik yamaları ve Red Hat’in Open Source Assurance Programından yararlanmaya devam edebilmek için lütfen üyeliğinizi hemen yenileyin.  Değişen ürün yapılandırmalarımız ile yenileme şartlarını tamamen anlamak için lütfen aşağıdaki şartları okuduğunuzdan emin olun.

</font></td></tr> 

















<tr><td><font face="Arial" size="2">
<BR>Üyeliğin faydalarından yararlanmaya devam edebilmek için lütfen tedarikçiniz veya <a href ="renewals-emea@redhat.com"> renewals-emea@redhat.com</a> adresinden yenileme ekibimiz ile irtibata geçin.
</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR>Red Hat üyeliğinize daha fazla esneklik ve değer sağlamak için birçok yenilik yaptık.  Böylece mevcut Red Hat çözümünüze daha fazla özelleştirilmiş ve geliştirilmiş versiyonu sağlanmaktadır.  Bu geçiş, yeni, daha esnek ürün konfigürasyonları, ürün numaraları, fiyatlandırma, destek seviyeleri ve isteğe bağlı kademeli ürün özelliklerini içermektedir..  Yeni yapılandırmalar neticesinde, yenileme fiyatınız orijinal satın alma fiyatından farklı olabilecek.
</font></td></tr>
<tr><td><font face="Arial" size="2"><BR>Aşağıdaki tablo, üyeliğinizi yenilemek için geçerli yeni ürün detaylarını gösterir:<br>&nbsp<br></font></td></tr>







</table>

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Kontrakt<BR> No.</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Adet</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff"> Eski Ürün Tanımı</font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Eski SKU - <br>Ürün Kodu</font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Yeni SKU - <br>Ürün Kodu</font><br></th>
<th  align="center" valign="center">
<font face="Arial" size="2" color="ffffff">Yeni Ürün <br>Tanımı</font><br></th>

<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff"> Son <br>Kullanım <br>Tarihi</font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Tedarikçi</font><br></th>


</tr>
<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/products/product" var="p">

<c:choose>
<c:when test="${pcount mod 2 == '0'}">

<tr>

<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$p//contract_no"/> </font></td>
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
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$p//contract_no"/> </font></td>
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
<tr><td><font face="Arial" size="2"><br>Yeni ürün yapımız hakkında daha fazla bilgi için: <a href ="http://www.redhat.com/rhel/renew/"> http://www.redhat.com/rhel/renew/ </a> <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">
Red Hat üyeliğiniz, günlük iş sorunlarınızı çözmenize yardımcı olmak için sürekli değer sağlar.  Red Hat'in sağladığı bu değer sisteminizde çalışan Red Hat yazılım sayısına dayanmaktadır. Bu yüzden Red Hat ile yaptığınız anlaşma süresince ( yani herhangi bir aktif üyeliğiniz varsa) tüm Red Hat yazılımları için üyeliğinizi yapmanız gerekmektedir.  Aşağıdaki özelliklere sadece üye olarak sahip olabilirsiniz:
 <br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Yeni Teknolojiler:  </b>Yeni çip setleri, önemli performans iyileştirmeleri, iş yükü özel geliştirmeleri ve daha fazlasını üyeliğinizin bir parçası olarak ek herhangi bir ücret ödemeden üçer aylık periyotlarda sağlanmaktadır. 
<li>
<b>Güncellemeler,  hata düzeltme,  güvenlik hataları: </b>Gelişmeler, onarımlar,  yeni özellikler,  ve sertifikasyonlar üyeliğiniz süresince kullanılabilir  
<li>
<b>Yazılım testi ve QA:  </b>En son teknoloji kritik yüklemelerinizi güvenle yapabilmeniz için test edilip paketlendi 
<li>
<b>Versiyon yükseltme esnekliği: </b>Üyeliğiniz aktif olduğu sürece herhangi bir yeni sürüme geçebilirsiniz 
<li>
<b>Teknik Destek: </b>Sınırsız vaka ve destek seviyesinden yaralanabilirsiniz.  
<li>
<b>Donanım ve yazılım sertifikasyonu: </b>d. Yazılım uygulamalarınız ve donanımınızla sertifikalı çözümleri güvenle kullanabilirsiniz.  
<li>
<b>Kaynak kod ve dökümantasyon:  </b>Yazılım ürün binary ve dökümantasyonumuza erişebilirsiniz
<br>
<li>
<b>Fikir Mülkiyet Güvencesi:  </b>Red Hat'in fikri mülkiyet güvencesi programı size aktif üyeliğiniz süresince yasal hak davası durumunda size belirli güvenceler sağlar.
</ul>

</font></td></tr>
<tr><td><font face="Arial" size="2">
Red Hat üyeliğinizin faydaları ve yenileme koşulları hakkinda bilgilere <a href= "http://www.redhat.com/subscriptions/">buradan</a> ulaşabilirsiniz. İlave bir bilgi veya diğer servislerimiz hakkında bilgi almak isterseniz, lütfen tedarikçiniz ile irtibata geçiniz. 

</font><br><br></td></tr>

























<c:choose>
<c:when test="${tpl_vals[0] == 'EMEA'}" > 



   <c:choose>
     <c:when test="${account_status != 'Named Account' && account_status !=  'Exception Account' }"> 

     <tr><td><font face="Arial" size="2">
Eğer tercih ettiğiniz Red Hat ürün tedarikçiniz yoksa, <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a> adresinden yenilemelerden sorumlu ekibimize başvurun ve size uygun bir Red Hat tedarikçinin sizinle irtibata geçmesini sağlayalım.
     </font><br><br></td></tr>

<tr><td><font face="Arial" size="2">
Eğer Red Hat üyeliğiniz hakkında gelecek bildirimleri başka birisinin alması gerekiyorsa, lütfen detayları <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a> adresine bildiriniz.  Red Hat Login ID ve kontrakt numaranızı eklediğinizden emin olun. 
</font><br><br></td></tr>

      </c:when>
    <c:when test="${account_status == 'Named Account' || account_status ==  'Exception Account' }"> 

<tr><td><font face="Arial" size="2">
Eğer tercih ettiğiniz Red Hat ürün tedarikçiniz yoksa, <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a> adresinden yenilemelerden sorumlu ekibimize başvurun ve size uygun bir Red Hat tedarikçinin sizinle irtibata geçmesini sağlayalım.
     </font><br><br></td></tr>

<tr><td><font face="Arial" size="2">
Eğer Red Hat üyeliğiniz hakkında gelecek bildirimleri başka birisinin alması gerekiyorsa, lütfen detayları <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a> adresine bildiriniz.  Red Hat Login ID ve kontrakt numaranızı eklediğinizden emin olun. 
</font><br><br></td></tr>
   </c:when>
   </c:choose>

</c:when>


<c:otherwise> 

<tr><td><font face="Arial" size="2">
Eğer tercih ettiğiniz Red Hat ürün tedarikçiniz yoksa, <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a> adresinden yenilemelerden sorumlu ekibimize başvurun ve size uygun bir Red Hat tedarikçinin sizinle irtibata geçmesini sağlayalım.
     </font><br><br></td></tr>

<tr><td><font face="Arial" size="2">
Eğer Red Hat üyeliğiniz hakkında gelecek bildirimleri başka birisinin alması gerekiyorsa, lütfen detayları <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a> adresine bildiriniz.  Red Hat Login ID ve kontrakt numaranızı eklediğinizden emin olun. 
</font><br><br></td></tr>
</c:otherwise>
</c:choose>


<tr><td><font face="Arial" size="2">Size destek olmaktan mutluluk duyarız<BR><BR><br></font></td></tr>
<tr><td><font face="Arial" size="2">Saygılarımızla,<br><br><br></font></td></tr>

<c:choose>
<c:when test="${tpl_reg == 'LATAM'}"> 

<tr><td><font face="Arial" size="2">
<x:choose><x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:out select="$d//ssirep/name"/></x:when><x:otherwise><x:out select="$d//client/rep_name"/></x:otherwise></x:choose> 
<br><br><br></font> </td></tr> 

</c:when>

<c:otherwise>

<tr><td><font face="Arial" size="2">Red Hat Yenileme Ekibi<br><br><br></font></td></tr>
</c:otherwise>
</c:choose>
<tr><td><font face="Arial" size="1">

© 2011 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>