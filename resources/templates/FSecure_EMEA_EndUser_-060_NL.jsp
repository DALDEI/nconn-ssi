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
<%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , null, "mm/dd/yy" , "nl" , "" ) %>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr align="center" valign="top"><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/fsecure/NL_EU_EXPIRED_-60.png"></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- LETTER BODY --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">Geachte klant</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Wij willen u als F-Secure klant graag bedanken voor het gebruik van onze security producten. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Ons systeem laat zien dat de onderstaande F-Secure licenties zijn vervallen. Wij willen u graag verzoeken om uw licenties te vernieuwen zodat u onze product updates kunt blijven ontvangen, uw IT-omgeving volledig beschermd blijft en u van onze onderhoud- en support diensten kunt blijven profiteren.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- CONTRACT TABLE --%>
<table width=660 cellspacing="0" cellpadding="5" indent=30 border="1" >
  <tr bgcolor="#EF0707">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Uniek Renewal ID</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Productomschrijving</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Hoeveelheid</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Afloopdatum</font></th>
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
Om te vernieuwen, neem contact op met uw reseller.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Om te vernieuwen en om meer informatie te ontvangen over onze producten en diensten, kunt u telefonisch of via e-mail contact opnemen met uw F-Secure reseller.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Als u inmiddels uw contract heeft vernieuwd, verzoeken wij u om deze kennisgeving als niet verzonden te beschouwen. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Reseller contactgegevens:
  </font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_email"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_phone"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"> &nbsp;
  </font></td></tr>

  <tr><td><font face="Arial" size="2">
Als u vragen heeft over uw renewal proces of een van onze andere diensten, kunt u uiteraard te allen tijde contact met ons opnemen.
  </font></td></tr>
  <tr><td><font face="Arial" size="2"> &nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">Met vriendelijke groet,</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_ssirep_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2">F-Secure Renewals Team</font></td></tr>
  <tr><td><font face="Arial" size="2">
Tel: <b><x:out select="$d//opp_ssirep_phone"/></b>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
E-mail: <b><x:out select="$d//opp_ssirep_email"/></b>
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