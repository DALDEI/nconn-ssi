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
  <title>Avaya Renewal Notification</title>
</head>

<body>

<%-- DATE & LOGO --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
<%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , null, "mm/dd/yy" , "en" , "" ) %>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr align="center" valign="top"><td>
<img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/Avaya_logo.png">
  </td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- LETTER BODY --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">Dear Avaya Partner,</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Avaya appreciates your ongoing work in renewing end customer contracts 
that have Avaya-provided support &mdash; either retail, wholesale or co-delivery contracts. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
The Avaya Renewals Team can assist you in quoting, negotiating, and 
closing your small and mid-sized contracts. Our proven professionals 
want to help you achieve a 90% renewal rate within 30 days of contract 
expiration. As a first step, we have compiled and attached a list of your 
SMB contracts with expiration dates occurring in the next three months.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- WHAT WE NEED --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2"><b><u>What we need from you:</u></b></font></td></tr>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr>
    <td width="3%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="3%"><font face="Arial" size="2">•</font></td>
    <td width="94%"><font face="Arial" size="2">
Please review the attached list and prepare feedback on these contracts.  
For all contracts that will not renew please reach out to your reseller and 
be prepared to provide us with a reason why contracts will not renew or 
what steps are needed for the contracts to close and the actions we can 
take to assist.
    </font></td>
  </tr>
  <tr>
    <td width="3%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="3%"><font face="Arial" size="2">•</font></td>
    <td width="94%"><font face="Arial" size="2">
If we do not hear back from you with a status in seven business days, the 
Avaya Renewals Team will contact the customers that expire this month 
on your behalf to request renewal of their maintenance contract. We will, 
of course, explain that the customer should renew their contract through 
you, their partner of choice. 
    </font></td>
  </tr>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"><b><u>Next Steps:</u></b></font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
We will discuss these contracts on our next weekly call.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Let’s work together to protect these customers with uninterrupted support, 
while driving continued maintenance revenue for your business.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
In case of any questions please reach out to your dedicated AVAYA 
Renewals Sales Representative
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- SIGNATURE BLOCK --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Thank you,</font></td></tr>
  <tr><td><font face="Arial" size="2">Sincerely yours AVAYA Renewals Team</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- CONTRACT TABLE --%>
<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Contract #</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Sold To <br>Address</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Existing Reseller</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">End User<br>Company</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Functional <br>Location</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Existing<br>PO Number</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Expiration<br>Date</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Offer Type</font></th>
  </tr>

<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/assets/asset" var="p">
<c:choose>

<c:when test="${pcount mod 2 == '0'}">
<tr>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_1"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_2"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_8"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_3"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_4"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_5"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_6"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_7"/>
  </font></td>
</c:when>

<c:otherwise>
  <tr bgcolor="e0e0e0">
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_1"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_2"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_8"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_3"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_4"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_5"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_6"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_7"/>
  </font></td>

</c:otherwise>
</c:choose>

</tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
NOTE: Please do not reply to this email as it is electronically generated, 
and this mailbox is not monitored.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
If you prefer to not receive email renewal notifications from Avaya, please 
<a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , 

"Avaya_Unsubscribe_Acknowledgement_IN" ) %>'>
click here to unsubscribe.</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>