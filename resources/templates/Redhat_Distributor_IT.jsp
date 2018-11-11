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


<tr><td><font face="Arial" size="2">
<br>Gentile distributore Red Hat,
</font></td></tr>

<tr><td><font face="Arial" size="2">
<br>Questa è un’e-mail settimanale di cortesia per informarti che, secondo i nostri archivi, i tuoi partner hanno clienti il cui abbonamento a Red Hat è in scadenza. Ti preghiamo di ricordare ai tuoi partner di intervenire. Dovrebbero mettersi in contatto con I loro clienti per il rinnovo e per assicurare la ricezione costante degli update, dei fix e delle security patches in corso.
</font></td></tr>

<tr><td><font face="Arial" size="2">
<br>Ti preghiamo di accedere al <b>Portale Rinnovi Red Hat</b> per vedere i dettagli dell’abbonamento Red Hat dei tuoi partner  in scadenza. 
</font></td></tr>

<tr><td><font face="Arial" size="2">
<b> <u><br>Portale Rinnovi Red Hat</u></b>
</font></td></tr>

<tr><td>
<font face="Arial" size="2">
<b><I><br>Cos’è il Portale Rinnovi?</I></b><br>
</font></td></tr>

<tr><td><font face="Arial" size="2">
Il Portale Rinnovi Red Hat è un’applicazione centralizzata via web dove tu, cioè il partner, puoi accedere ad informazioni sul rinnovo dell’abbonamento. Il Portale Rinnovi ti fornirà tutte le informazioni necessarie per rendere prioritario ed eseguire un rinnovo abbonamento imminente e ti darà anche un quadro di sintesi sul tuo risultato trimestrale nel rinnovo degli abbonamenti. 
</font> <br><br></td></tr>

<tr><td><font face="Arial" size="2">
<b><I>Come si accede al Portale Rinnovi?</I></b><br>
</font> </td></tr>

<tr><td><font face="Arial" size="2">
Clicca su <a href="https://redhat.connectpartnerportal.com">https://redhat.connectpartnerportal.com</a> inserendo il tuo login fornito dal team di rinnovo  Red Hat. 
</font> </td></tr>
<tr><td><font face="Arial" size="2">
<b><I><br>Come ricevere un login per il Portale Rinnovi? </I></b><br>
</font></td></tr>
<tr><td><font face="Arial" size="2">

Se non hai ricevuto un login per accedere al Portale Rinnovi Red Hat ti preghiamo di contattare<br> <a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a> 
 e ti forniremo un login di accesso.  
</font> </td></tr>

<tr><td><font face="Arial" size="2">
<b><I><br>Assistenza Portale Rinnovi </I></b>
</font> </td></tr>

<tr><td><font face="Arial" size="2">

Se dovessi avere difficoltà nell’uso del portale o nell’accesso al link della pagina Rinnovi ti preghiamo di contattare: <a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a>
</font> </td></tr>


<tr><td><font face="Arial" size="2">
<br>Ti preghiamo di ricordare che tutti i partner ricevono e-mail di notifica settimanali che li incoraggiano a monitorare gli account dei loro clienti. 
</font> </td></tr>

<tr><td><font face="Arial" size="2">
<br>Se avessi necessità di ulteriori informazioni o se desideri conoscere gli altri nostri servizi ti preghiamo di contattare il nostro team di Assistenza Partner:
</font> </td></tr>
<tr><td><font face="Arial" size="2">
<br>
E-mail: <a href="mailto:emea-partner-team@redhat.com">emea-partner-team@redhat.com</a>
</font> </td></tr>
<tr><td><font face="Arial" size="2">
<br>Telefono:
</font> </td></tr>
<tr><td><font face="Arial" size="2">

+44 1252 362 851 [Inglese, Tedesco e Francese]<br>
</font> </td></tr>
<tr><td><font face="Arial" size="2">

+44 1252 362 878 [Inglese, Italiano e Spagnolo]
</font> </td></tr>
<tr><td><font face="Arial" size="2">
<br>Cordialmente,
</font> </td></tr>
<tr><td><font face="Arial" size="2">
<br>
Team Rinnovi Red Hat
<br>
<br>&nbsp<br></font></td></tr>
<tr><td><font face="Arial" size="1">
© 2011 Red Hat, Inc. Tutti i diritti riservati. Red Hat, Red Hat Enterprise Linux, the Shadowman logo e JBoss sono marchi registrati di Red Hat, Inc. negli USA e in altri Paesi. Linux è un marchio registrato di Linus Torvalds. Tutti gli altri marchi sono proprietà dei rispettivi titolari. 
</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
