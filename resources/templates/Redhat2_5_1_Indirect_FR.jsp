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

<tr><td><font face="Arial" size="2"><br>Numéro de compte :   <x:out select="$d//acct_no"/></font></td></tr><tr><td></td></tr>

</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">
 
<c:choose>
<c:when test="${tpl_vals[2] == 'minus30'}"> 
<tr><td><font face="Arial" size="2"><br>
Nous souhaitons vous rappeler que vos abonnements de Red Hat détaillés dans le tableau ci-dessous ont expiré. Veuillez vous assurer de leur renouvellement immédiat pour continuer à recevoir les avantages de vos abonnements, notamment l'accès au logiciel Red Hat, aux mises à jour, aux mises à niveau, au soutien technique, aux correctifs de sécurité et au programme Assurance Open Source de Red Hat. Veuillez vous assurer de lire les conditions ci-dessous pour comprendre parfaitement les conditions de votre offre de renouvellement car nos configurations de produit ont changé.</font></td></tr>
</c:when>
<c:when test="${tpl_vals[2] == '0'}"> 
<tr><td><font face="Arial" size="2"><br>
Nous souhaitons vous rappeler que vos abonnements de Red Hat détaillés dans le tableau ci-dessous vont expirer aujourd'hui. Veuillez vous assurer de leur renouvellement immédiat pour continuer à recevoir les avantages de vos abonnements, notamment l'accès au logiciel Red Hat, aux mises à jour, aux mises à niveau, au soutien technique, aux correctifs de sécurité et au programme Assurance Open Source de Red Hat. Veuillez vous assurer de lire les conditions ci-dessous pour comprendre parfaitement les conditions de votre offre de renouvellement car nos configurations de produit ont changé. 
</font></td></tr>

</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2"><br>

Nous souhaitons vous rappeler que vos abonnements de Red Hat détaillés dans le tableau ci-dessous vont bientôt expirer. Veuillez vous assurer de leur renouvellement avant la date d'expiration pour continuer à recevoir les avantages de vos abonnements, notamment l'accès au logiciel Red Hat, aux mises à jour, aux mises à niveau, au soutien technique, aux correctifs de sécurité et au programme Assurance Open Source de Red Hat. Veuillez vous assurer de lire les conditions ci-dessous pour comprendre parfaitement les conditions de votre offre de renouvellement car nos configurations de produit ont changé.

</font></td></tr>
</c:otherwise>
</c:choose>
 
<tr><td><font face="Arial" size="2">
<BR>Afin de continuer de recevoir les prestations de votre abonnement, veuillez contacter votre revendeur, ou vous pouvez également contacter notre équipe de renouvellements à l'adresse <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a>.</font></td></tr>

<tr><td><font face="Arial" size="2">
<BR>Nous aimerions également vous informer que nous avons fait plusieurs améliorations pour vous offrir plus de souplesse et de valeur pour votre abonnement Red Hat. Cela vous permettra de bénéficier d'une version améliorée, plus personnalisée par rapport à votre solution actuelle Red Hat. Cette transition comprend de nouvelles configurations de produits plus souples, de nombreux produits, une tarification, des niveaux de soutien et des produits stratifiés facultatifs. À la suite de la nouvelle configuration, votre prix de renouvellement peut varier de votre prix d'achat original.</font></td></tr>



<tr><td><font face="Arial" size="2"><br>
Le tableau suivant montre le mappage de votre abonnement actuel vers notre nouvelle structure de produit, qui vous sera accessible dès que vous renouvèlerez votre abonnement:
<br>&nbsp;<br></font></td></tr>
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
<tr><td><font face="Arial" size="2"><br>Plus d'informations sur notre nouvelle structure de produit sont disponibles en visitant, <a href ="http://www.redhat.com/rhel/renew/"> http://www.redhat.com/rhel/renew/ </a> <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">
Vos abonnements Red Hat vous fournissent une valeur continue pour vous aider à résoudre vos problèmes professionnels tous les jours. Red Hat mesure cette valeur en fonction du nombre de systèmes exécutant le logiciel Red Hat, donc pendant la durée de votre contrat avec Red Hat (c.-à-d., quand vous avez les abonnements actifs), vous êtes tenu de maintenir un abonnement pour chaque installation/instance du logiciel Red Hat. Uniquement quand ces abonnements sont actifs, vous avez accès à: 
 <br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Nouvelles technologies : </b>Assistance pour les nouveaux ensembles de puce, optimisations des performances améliorées, améliorations de la charge de travail spécifique, et bien plus encore, vous sont offerts tous les trimestres dans le cadre de votre abonnement, sans aucun frais supplémentaire. 
<li>
<b>Mises à jour, corrections de bugs, amendements de sécurité : </b>Améliorations, correctifs, nouvelles fonctionnalités et certifications continues sont disponibles tout au long du cycle de votre abonnement. 
<li>
<b>Tests logiciels et AQ : </b>La toute dernière technologie est testée et personnalisée pour vous afin que vous puissiez exécuter ces déploiements critiques en toute confiance.
<li>
<b>Flexibilité des mises à jour : </b>Tant que vos abonnements sont actifs, vous pouvez déployer toutes les nouvelles versions sorties.
<li>
<b>Support technique : </b>Utilisez les niveaux de soutien et les incidents illimités qui répondent à vos besoins.  
<li>
<b>Certifications des matériels et logiciels : </b>Déployez des solutions en toute confiance: vos logiciels et votre matériel sont entièrement certifiés. 
<li>
<b>Code source et documentation : </b>Accédez aux binaires et documentation de nos produits logiciels.
<li>
<b>Assurance de la propriété intellectuelle : </b>Le programme d'assurance de la propriété intellectuelle de Red Hat, qui prévoit certaines garanties en cas d'action en justice tandis que vous aurez un abonnement Red Hat.
</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">Vous pouvez en apprendre plus sur les avantages et les exigences relatives au renouvellement de votre abonnement Red Hat <a href="http://www.redhat.com/subscriptions/">ici</a>. Si vous souhaitez recevoir des informations complémentaires sur nos autres services, veuillez contacter votre revendeur.
</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">Si vous n'avez pas un fournisseur préféré de produits Red Hat, veuillez contacter notre équipe de renouvellements à <a href="renewals-emea@redhat.com">renewals-emea@redhat.com</a>, et nous serons heureux de vous mettre en contact avec un revendeur agréé Red Hat. 
</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Si vous pensez que quelqu'un d'autre pourrait être intéressé pour recevoir des avis au sujet de vos abonnements Red Hat, veuillez envoyer un courriel contenant ces informations à <a href="renewals-emea@redhat.com">renewals-emea@redhat.com</a>. Veuillez vous assurer d'inclure votre ID de connexion Red Hat et votre numéro de contrat.</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">
C'est un plaisir de vous assister.<BR><BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2">Cordialement,<br><br><br></font></td></tr>
<tr><td><font face="Arial" size="2">L'équipe de renouvellements Red Hat<br><br><br></font></td></tr>

<tr><td><font face="Arial" size="1">
<BR>&nbsp;<BR>
© 2011 Red Hat, Inc. Tous droits réservés. Red Hat, Red Hat Enterprise Linux, le logo Shadowman et JBoss sont des marques déposées de Red Hat, Inc. aux États-Unis et d'autres pays. Linux est une marque déposée de Linus Torvalds. Toutes les autres marques sont la propriété de leurs propriétaires respectifs.<BR><BR></font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
