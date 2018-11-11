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
<%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , null, "mm/dd/yy" , "de" , "" ) %>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
     <tr align="center" valign="top"><td><img src="http://nexstra-com-resources-us-east-1.s3.amazonaws.com/cds3/scratch/images/fsecure/GER_EU_EXPIRING_90_60_30_7.png"></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- LETTER BODY --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">Sehr geehrter Kunde,</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
vielen Dank, dass Sie sich für unsere Produkte entschieden haben.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Gerne möchten wir Sie daran erinnern, dass die unten aufgeführten Lizenzen demnächst ablaufen.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Bitte verlängern Sie Ihre Lizenzen, um weiterhin geschützt zu sein und Produktupdates, sowie Support und Wartungsservice von F-Secure zu erhalten.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Falls Sie kürzlich Ihre Lizenzen verlängert haben, bitte ignorieren Sie dieses Email.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- CONTRACT TABLE --%>
<table width=660 cellspacing="0" cellpadding="5" indent=30 border="1" >
  <tr bgcolor="#EF0707">
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Lizenz-Seriennummer</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Produktname</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Anzahl</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Ablaufdatum</font></th>
  </tr>

<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/assets/asset" var="p">
<c:choose>

<c:when test="${pcount mod 2 == '0'}">
<tr>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_5"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_2"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_3"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_4"/>
  </font></td>
</c:when>

<c:otherwise>
  <tr bgcolor="e0e0e0">
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_5"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_2"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_3"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_4"/>
  </font></td>

</c:otherwise>
</c:choose>

</tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="4" color="#ff0000">
Kontaktieren Sie Ihren Partner für die F-Secure Wartungsverlängerung
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Bitte kontaktieren Sie Ihren F-Secure Partner telefonisch oder per E-Mail um Ihre Lizenzen zu verlängern und weitere Informationen über unsere Produkte und Services zu erhalten. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Wenn Sie Ihre Lizenzen zwischenzeitlich schon verlängert haben, bitten wir Sie diese Erinnerung zu ignorieren.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Partner Kontaktinformationen:
  </font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_email"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_reseller_primarycontact_phone"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2"> &nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Sollten Sie weitere Fragen bezüglich dem Verlängerungs-Prozess oder der Kundenkommunikation haben, zögern Sie bitte nicht uns jederzeit zu kontaktieren.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">Herzliche Grüße, </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"><b><x:out select="$d//opp_ssirep_fullname"/></b></font></td></tr>
  <tr><td><font face="Arial" size="2">Ihr F-Secure Team</font></td></tr>
  <tr><td><font face="Arial" size="2">
Tel. : <b><x:out select="$d//opp_ssirep_phone"/></b>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
Email  : <b><x:out select="$d//opp_ssirep_email"/></b>
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