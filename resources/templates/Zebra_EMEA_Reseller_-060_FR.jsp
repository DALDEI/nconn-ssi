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
<%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , null, "mm/dd/yy" , "fr" , "" ) %>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"><b>
Votre contrat de maintenance Zebra est arrivé à échéance !
  </b></font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="5" width="560" border="0">
  <tr bgcolor="5f4b7a">
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">
Numéro de contrat
    </font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">
Utilisateur final
    </font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">
Date d'échéance
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
Les prestations de service indiquées ci-dessous sont incluses dans 
l'offre Zebra OneCare qui conserve les niveaux attendus par vos 
clients en termes de durée d'utilisation effective et de disponibilité.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>

<table cellspacing="0" cellpadding="0" width="560" border="0">
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
Mises à jour de logiciels et de firmware
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
Prise en charge et résolution des incidents par le bureau d'assistance
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
Couverture globale
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
Réparation ou remplacement du matériel
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
Options à valeur ajoutée incluses avec le contrat
    </font></td>
  </tr>
</table>

<table cellspacing="0" cellpadding="0" width="600" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Mais il n'est pas trop tard pour renouveler le contrat et bénéficier 
de ces prestations indispensables à votre client. Rendez-vous sur 
<a href="http://www.zebra.com/zebraonecare">www.zebra.com/zebraonecare</a>
où vous trouverez les options proposées à votre client. Vous 
découvrirez de nouveaux services, de nouvelles options de 
service et de nouveaux avantages. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
N'hésitez pas à me contacter pour que nous discutions des 
options à votre disposition.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Nous vous avons déjà préparé un devis pour le renouvellement 
de votre contrat.  Vous pouvez le consulter à l'adresse suivante : 
<a href="http://renewals.connectpartnerportal.com/">
http://renewals.connectpartnerportal.com/</a>. 
Connectez-vous avec l'identifiant et le mot de passe que nous 
vous avons communiqués. Vous ne vous êtes pas encore connecté 
au portail des partenaires ? N'hésitez pas à me contacter si vous 
avez besoin d'aide.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Veuillez ne pas tenir compte de cet e-mail si vous avez déjà 
renouvelé votre contrat. Nous vous remercions de la confiance 
que vous nous témoignez. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Si vous avez des questions ou des commentaires, je me ferai un plaisir d'y répondre.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Cordialement,</font></td></tr>
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
Si vous souhaitez ne pas recevoir de notifications de renouvellement par e-mail , 
<a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "Zebra_Unsubscribe_Acknowledgement_FR" ) %>'>
cliquez ici pour vous désabonner.</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


</td></tr>
</table>


</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>