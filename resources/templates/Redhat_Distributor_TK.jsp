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


<tr><td><font face="Arial" size="2">Değerli Red Hat Distribütörü,<br> <br> </font></td></tr> 
<tr><td><font face="Arial" size="2">
Bu, kayıtlarımıza göre bayilerinizin Red Hat üyelikleri yakında bitecek müşterileri olduğuna dair size haftalık gönderilen hatırlatıcı e-postadır. Lütfen harekete geçmeleri için kendilerine hatırlatın. Müşterilerin yenilemesi ve önemli yamaları, güncellemeleri ve güvenlik yamalarını almaya devam etmeleri için kendileri ile irtibata geçmeleri gerekmektedir.  </font></td></tr>
<tr><td>
<font face="Arial" size="2"><br>
Müşterilerinizin sona erecek olan Red Hat üyeliklerini <b>Red Hat Renewals Portal’a</b> girerek görebilirsiniz. </font></td></tr>
<tr><td><font face="Arial" size="2">
<br><b><u>Red Hat Renewals Portal</u></b>
</font></td></tr>
<tr><td><font face="Arial" size="2">
<b><I>Renewals Portal Nedir?</I></b><br>
Red Hat Renewals Portal, siz iş ortaklarımızın üyelik yenilemeleri hakkında bilgilere erişebileceğiniz web tabanlı merkezi bir uygulamadır. Renewals Portal önceliklendirme ve yaklaşan üyelik yenilemeleri yürütmek için gerekli tüm bilgileri sağlar ve ayrıca üç aylık üyelik yenileme performansını size gösterge tablosu halinde raporlar.
<br>&nbsp;<br></font></td></tr>

<tr><td><font face="Arial" size="2">
<b><I>Renewals Portal’a Nasıl Erişirim?</I></b><br>
Red Hat yenileme ekibi tarafından sağlanan oturum açma kimlik bilgileri ile <a href="https://redhat.connectpartnerportal.com">https://redhat.connectpartnerportal.com</a> adresinden giriş yapabilirsiniz.
</font></td></tr>

<tr><td><font face="Arial" size="2"><br>
<b><I>Renewals Portal Login Nasıl Alırım?</I></b><br>
Eğer Red Hat Renewal Portal’ına oturum açma bilgilerini almadıysanız, <br><a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a> adresinden bize başvurun ve sizin için erişim kimlik bilgilerini sağlayalım.<br>&nbsp;<br></font></td></tr>

<tr><td><font face="Arial" size="2">
<b><I>Renewals Portal Yardım</I></b><br>
Portalın kullanımında veya yenileme sayfasına erişimde sıkıntı yaşarsanız, lütfen bizimle irtibata geçin: <br><a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a>
<br>&nbsp;<br></font></td></tr>
<tr><td><font face="Arial" size="2">
Tüm iş ortaklarına, kendi müşteri hesapları hakkında takip etmeleri için haftalık e-posta gönderildiğini unutmayın.
<br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2">
Herhangi bir ek bilgi veya diğer hizmetler hakkında bilgi edinmek isterseniz, lütfen Partner Yardım masası ekibine başvurunuz: <br><br></font> </td></tr> 

<tr><td><font face="Arial" size="2">
Email: <a href="mailto:emea-partner-team@redhat.com">emea-partner-team@redhat.com</a>
<br><br></font> </td></tr> 


<tr><td><font face="Arial" size="2">
Telefon:
<br></font> </td></tr> 
<tr><td><font face="Arial" size="2">
+44 1252 362 851 [English, German, and French]
<br></font> </td></tr> 
<tr><td><font face="Arial" size="2">
+44 1252 362 878 [English, Italian, Spanish]<br><br></font> </td></tr> 
 

<tr><td><font face="Arial" size="2">
Saygılarımızla,
<br><br></font> </td></tr> 
<tr><td><font face="Arial" size="2">
Red Hat Renewals Ekibi
<br><br></font> </td></tr> 
<tr><td><font face="Arial" size="1">
© 2012 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.

</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
