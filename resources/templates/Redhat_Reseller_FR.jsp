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

<tr><td><font face="Arial" size="2">Cher partenaire, <br> <br> </font></td></tr> 


<tr><td><font face="Arial" size="2">
Ce courriel hebdomadaire vous informe que, selon nos dossiers, vos clients ont des abonnements Red Hat qui expirent bientôt. Veuillez entrer en contact avec eux afin d'organiser les renouvellements et pour s'assurer de continuer à recevoir les mises à jour importantes en cours, les correctifs et les correctifs de sécurité.

</font></td></tr>



<tr><td><font face="Arial" size="2">
<br>

Le tableau suivant résume tous les abonnements Red Hat de vos clients qui expirent dans les 30 prochains jours :
<br>&nbsp<br><br></font></td></tr>



</table>

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nom du client </font><br></th>

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Numéro de contrat</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Quantité</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">SKUS configuré</font><br></th>
<th  align="center" valign="center">
<font face="Arial" size="2" color="ffffff">Description configurée du produit </font><br></th>

<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Date d'expiration</font><br></th>


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

<tr><td><font face="Arial" size="2"><br><br>Veuillez noter que vos clients recevront des courriels de rappel de renouvellement à 90, 60, 30, 0 et - 30 jours pour les informer sur les avantages et la valeur de leurs abonnements ainsi que sur les détails du contrat. <br><br></font></td></tr>

<tr><td><font face="Arial" size="2">Si vous avez besoin de renseignements supplémentaires ou si vous souhaitez en apprendre davantage sur nos autres services, veuillez contacter notre équipe d'assistance partenaire : <a href=mailto:renewals-emea@redhat.com>renewals-emea@redhat.com</a>. <br><br></font></td></tr>
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
