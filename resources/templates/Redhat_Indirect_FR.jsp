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
<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.gif"/> 

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
Nous avons pensé que vous souhaiteriez savoir que vos abonnements Red Hat mentionnés ci-dessous ont expiré.
</font></td></tr>
</c:when>

<c:otherwise> 
<tr><td><font face="Arial" size="2"><br>
Nous souhaiterions vous informer que vos abonnements Red Hat, détaillés dans le tableau ci-dessous, vont bientôt expirer.</font></td></tr>
</c:otherwise>
</c:choose>
 
<tr><td><font face="Arial" size="2">
<BR>Afin de continuer à bénéficier des avantages de votre abonnement, veuillez contacter votre revendeur ou notre équipe partenaire à l’adresse électronique ci-dessous.
</font></td></tr>

<tr><td><font face="Arial" size="2">
<BR>Nous aimerions également vous informer que nous avons mis en place plusieurs améliorations pour vous offrir plus de souplesse et de valeur ajoutée dans le cadre de votre abonnement Red Hat. Vous aurez ainsi accès à une version améliorée et plus personnalisée de votre solution Red Hat actuelle. 
</font></td></tr>



<tr><td><font face="Arial" size="2"><br>
Le tableau suivant montre la correspondance entre votre abonnement actuel et notre nouvelle structure de produits, dont vous bénéficierez en renouvelant votre abonnement: <br>&nbsp;<br></font></td></tr>
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

<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"><br>Pour en savoir plus sur la nouvelle organisation de nos produits, veuillez suivre ce lien: <a href ="http://www.redhat.com/rhel/renew/"> http://www.redhat.com/rhel/renew/ </a> <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">
Vos abonnements Red Hat vous assurent une valeur continue pour vous aider à résoudre vos problèmes professionnels quotidiens. Red Hat mesure cette valeur en fonction du nombre de systèmes utilisant un logiciel Red Hat, ce qui signifie que tant que vous avez des abonnements actifs, vous êtes tenu de maintenir un abonnement pour chaque installation/instance d'un logiciel Red Hat. C’est uniquement si ces abonnements sont actifs que vous avez accès à : 
 <br><br></font></td></tr>

<tr><td><font face="Arial" size="2"> 
<ul>
<li>
<b>Nouvelles technologies : </b>Assistance pour les nouveaux chipsets, optimisation considérable des performances, améliorations spécifiques à certaines charge de travail et plus encore vous sont offerts tous les trimestres dans le cadre de votre abonnement, sans aucuns frais supplémentaire. 
<li>
<b>Mises à jour, corrections des bugs, errata de sécurité : </b>Améliorations, correctifs, nouvelles fonctionnalités et certifications continues sont disponibles tout au long de votre cycle d'abonnement. 
<li>
<b>Test de logiciels et QA : </b>Les toutes dernières technologies sont testées, combinées et approuvées afin que vous puissiez gérer vos déploiements critiques en toute confiance.
<li>
<b>Flexibilité des mises à niveau : </b>Tant que vos abonnements seront actifs, vous aurez accès à toutes les nouvelles versions mises sur le marché.
<li>
<b>Assistance technique : </b>Utilisez les niveaux de support technique répondant à vos besoins.  
<li>
<b>Certifications matériels et logiciels : </b>Déployez des solutions avec l’assurance que vos applications logicielles et matérielles sont entièrement certifiées. 
<li>
<b>Code source et documentation: </b>Accédez aux binaires de nos logiciels et à la documentation.
<li>
<b>Assurance de la propriété intellectuelle : </b>le programme d'assurance de propriété intellectuelle Red Hat, qui offre certaines garanties en cas de litige lié à tout logiciel ayant un abonnement Red Hat actif.

</ul>

</font></td></tr>


<tr><td><font face="Arial" size="2">Vous en saurez plus sur les avantages et les conditions de renouvellement de votre abonnement de Red Hat <a href= "https://www.redhatrenewal.com/16LZ/lz.aspx?p1=WRg1CmP7L8J+EZUTYDEbiuxId2hg5xgods/r0SbP8Hc=&w=60">ici.</a>.

</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">Pour toute information complémentaire, ou si vous souhaitez en savoir davantage sur les autres services que nous proposons, veuillez contacter votre revendeur.  
</font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Dans le cas où vous n'avez pas de revendeur attitré, vous pouvez en choisir un en utilisant le lien 
 <a href ="https://www.redhatrenewal.com/EUROPE/lz.aspx?p1=K3cxyaSY2KYM0KzYq+7T6DUtK4seG+N5IzFXbkF1NEeXRTbPsLBcDw==&w=40" > suivant.</a></font><br><br></td></tr>

<tr><td><font face="Arial" size="2">Si vous souhaitez que quelqu'un d'autre reçoive ces notifications à l'avenir, veuillez envoyer un courriel à <a href=mailto:customerdata-emea@redhat.com> customerdata-emea@redhat.com </a>



 <BR>
</font><br></td></tr>
<tr><td><font face="Arial" size="2">
Dans l'espoir de continuer notre collaboration.
  <BR><BR></font></td></tr>
<tr><td><font face="Arial" size="2">Cordialement,<br><br><b></b><br><br></font></td></tr>
<tr><td><font face="Arial" size="2">L’équipe des renouvellements Red Hat<br><br><b></b><br><br></font></td></tr>

<tr><td><font face="Arial" size="1">
<BR>&nbsp;<BR>
© 2009 Red Hat, Inc. Tous droits réservés. Red Hat, Red Hat Enterprise Linux, le logo Shadowman et JBoss sont des marques déposées de Red Hat, Inc. aux États-Unis et d'autres pays. Linux est une marque déposée de Linus Torvalds. Toutes les autres marques sont la propriété de leurs propriétaires respectifs.<BR><BR></font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
