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
  <title>Notice of outstanding Avaya Support Renewals that are transacted via Distribution only</title>
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
  <tr><td><font face="Arial" size="2"><b>
Subject: Notice of outstanding Avaya Support Renewals that are transacted via Distribution only
  </b></font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Dear Avaya Distributor and Reseller,
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Thank you for your partnership with Avaya.  In response to feedback we have received to provide more <b>visibility on renewals transacted via Distributors</b>, we are pleased to provide both our Distributors and Resellers a list of your applicable outstanding renewals with Avaya, on a monthly basis. This e-mail will serve to assist and remind you in ensuring your support contracts are <b>renewed on time</b>. It will thus list your <b>contracts within the M-30 to M+30 period that have not been renewed</b>, as per our records, at the start of the month. 
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- WHAT WE NEED --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2"><b><u>
Remediation actions you need to take to avoid a lapse in contract:
  </u></b></font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr>
    <td width="3%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="3%"><font face="Arial" size="2">•</font></td>
    <td width="94%"><font face="Arial" size="2">
Contact your Distributor to ensure contract renewal has been sent to/ received by Avaya; and/or
    </font></td>
  </tr>
  <tr>
    <td width="3%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="3%"><font face="Arial" size="2">•</font></td>
    <td width="94%"><font face="Arial" size="2">
Distributor to contact Avaya, <b>before M+30</b>, to confirm renewal order has been received and is being processed by Avaya.
    </font></td>
  </tr>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Should you decline to renew your contract, upon contract expiry, you/the customer will no longer have access to Avaya support as well as support contract entitlements.  As Avaya is committed to protecting our customer’s investment in Avaya solutions, we reserve the right to notify the customer that a manufacturer support agreement for their Avaya system is not in place, and communicate their support options going forward, which can include:
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr>
    <td width="3%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="3%"><font face="Arial" size="2">a.</font></td>
    <td width="94%"><font face="Arial" size="2">
direct service support from Avaya; or
    </font></td>
  </tr>
  <tr>
    <td width="3%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="3%"><font face="Arial" size="2">b.</font></td>
    <td width="94%"><font face="Arial" size="2">
support from an alternate Avaya Authorized Partner, backed with manufacturer support from Avaya
    </font></td>
  </tr>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">
 <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Once a contract passes its grace period, reinstatement will be quoted at current pricing and will be subjected to applicable Avaya policies including re-initialization fees.
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
We look forward to working together with you to protect our customers with uninterrupted support, while driving continued maintenance revenue for your business. Should you have any question, please do not hesitate to contact me. My contact information is as below.
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>



<%-- CONTRACT TABLE --%>
<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Contract #</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Sold To Name</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Existing Reseller</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">End User Company Name</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Legacy</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Expiration Date</font></th>
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
<x:out select="$p/opp_customfield_7"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_6"/>
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
<x:out select="$p/opp_customfield_7"/>
  </font></td>
  <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_6"/>
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

</c:otherwise>
</c:choose>

</tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>


<%-- SIGNATURE BLOCK --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Sincerely,</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Avaya Renewals Team Member</font></td></tr>
  <tr><td><font face="Arial" size="2"><x:out select="$d/account/opp_ssirep_fullname"/></font></td></tr>
  <tr><td><font face="Arial" size="2"><a href="mailto:<x:out select="$d/account/opp_ssirep_email"/>"><x:out select="$d/account/opp_ssirep_email"/></a></font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
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