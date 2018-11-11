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

<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/rh-distrsl/Rh_banner_${fn:substringAfter(values.tplname,'Redhat_PA_')}.gif"/> 
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
Cher revendeur Red Hat,
<br> <br> </font></td></tr> 


<tr><td><font face="Arial" size="2">
Ce courriel hebdomadaire vous informe que, selon nos dossiers, vos clients ont des abonnements Red Hat qui expirent bientôt. Veuillez entrer en contact avec eux afin d'organiser les renouvellements et pour s'assurer de continuer à recevoir les mises à jour importantes en cours, les correctifs et les correctifs de sécurité.

</font></td></tr>


<tr><td><font face="Arial" size="2">
<br>
Veuillez accéder au <b>Portail de renouvellements Red Hat</b> pour afficher les détails d'abonnement Red Hat de vos clients qui arrivent à échéance. 

</font></td></tr>

<tr><td><font face="Arial" size="2">
<br><b><u>Portail de renouvellements Red Hat</U></b>
</font></td></tr>
<tr><td><font face="Arial" size="2"><br>
<b><I>Qu'est-ce qu'un portail de renouvellement ?
</I></b><br>
</font></td></tr>



<tr><td><font face="Arial" size="2">

Le portail de renouvellements Red Hat est une application Internet, où vous, le partenaire, serez en mesure d'accéder aux informations sur le renouvellement des abonnements. Le portail de renouvellements Red Hat vous fournit toutes les informations nécessaires pour établir des priorités et exécuter le renouvellement d’un abonnement à venir tout en vous donnant également les rapports sur les performances trimestrielles de vos renouvellements d’abonnements.
<br>&nbsp<br></font></td></tr>

<tr><td><font face="Arial" size="2">
<b><I>Comment puis-je accéder au portail de renouvellements ?</I></b><br>
</font></td></tr>

<tr><td><font face="Arial" size="2">
Rendez-vous sur <a href="https://redhat.connectpartnerportal.com">https://redhat.connectpartnerportal.com</a> et entrez les informations d'identification de connexion qui vous sont fournies par l'équipe de renouvellements Red Hat.  
</font></td></tr>

<tr><td><font face="Arial" size="2">
<b><I><br>Comment recevoir les informations de connexion au portail de renouvellements ?</I></b><br>
</font></td></tr>

<tr><td><font face="Arial" size="2">
Si vous n'avez pas reçu les informations de connexion au portail renouvellements Red Hat, veuillez contacter <a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a> et nous vous fournirons les codes d'accès.</font></td></tr>

<tr><td><font face="Arial" size="2"><br>
<b><I>Assistance du portail de renouvellement
</I></b>
</font></td></tr>

<tr><td><font face="Arial" size="2">
Si vous avez des difficultés dans l'utilisation du portail, ou pour accéder au lien vers la page de renouvellements, veuillez contacter : <a href="mailto:renewals-emea@redhat.com">renewals-emea@redhat.com</a><br><br>
</font></td></tr>

<tr><td><font face="Arial" size="2">Veuillez noter que vos clients recevront des courriels de rappel de renouvellement à 90, 60, 30, 0 et - 30 jours pour les informer sur les avantages et la valeur de leurs abonnements ainsi que sur les détails du contrat. <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">Cordialement,<br><br></font> </td></tr> 
 



<tr><td><font face="Arial" size="2">
L'équipe de renouvellements Red Hat
<br><br><br></font> </td></tr> 

<tr><td><font face="Arial" size="1">

© 2011 Red Hat, Inc. Tous droits réservés. Red Hat, Red Hat Enterprise Linux, le logo Shadowman et JBoss sont des marques déposées de Red Hat, Inc. aux États-Unis et dans d'autres pays.  Linux est une marque déposée de Linus Torvalds.  Toutes les autres marques sont la propriété de leurs propriétaires respectifs.
</font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
