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
<%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , null, "mm/dd/yy" , "sv" , "" ) %>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr align="center" valign="top"><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/fsecure/SWE_EU_EXPIRING_90_60_30_7.png"></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- LETTER BODY --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">Bäste kund,</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Tack för att ni använder F-Secures säkerhetslösningar.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Följande F-Secure licenser som anges nedan upphör att gälla inom kort. Vänligen förnya era licenser för att hålla er skyddade och få produktuppdateringar samt support- 

och underhållstjänster från F-Secure.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Om du nyligen förnyat dina licenser vänligen bortse från detta meddelande.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- CONTRACT TABLE --%>
<table width=660 cellspacing="0" cellpadding="5" indent=30 border="1" >
  <tr bgcolor="#EF0707">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Unikt Förnyelse ID</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Produktnamn</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Antal</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Förfallodatum</font></th>
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

  <tr><td><font face="Arial" size="4" color="#ff0000">
Kontakta din återförsäljare för förnyelse
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Vänligen kontakta din F-Secure återförsäljare per telefon eller via e-post för att förnya licenserna och få mer information om våra produkter och tjänster.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Om du nyligen har förnyat dina licenser, vänligen bortse från detta meddelande.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Återförsäljare Kontaktuppgifter:
  </font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_email"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_phone"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"> &nbsp;
  </font></td></tr>

  <tr><td><font face="Arial" size="2">
Tveka inte att kontakta oss om du har några frågor om förnyelseprocessen eller kundkommunikation.
  </font></td></tr>
  <tr><td><font face="Arial" size="2"> &nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">Med Vänliga Hälsningar, </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_ssirep_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2">F-Secure förnyelse Team</font></td></tr>
  <tr><td><font face="Arial" size="2">
Kontor Telefon: <b><x:out select="$d//opp_ssirep_phone"/></b>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
E-postadress: <b><x:out select="$d//opp_ssirep_email"/></b>
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