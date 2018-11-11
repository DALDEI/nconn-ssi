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



<%-- BEGIN: Body of letter --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr align="left" valign="top"><td>
<img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/Zebra_logo.png">
  </td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr align="left" valign="top"><td>
<img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/EN_90-60-30.png">
  </td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Dear Customer,
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Kindly note that the Service Contracts listed below will be expiring and we wanted to make sure that you fully understand Zebra’s current No Service without a Contract policy.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
<b>In order to avoid any disruptions in Service Coverage and potentially incurring a Zebra Service Continuity Fee, it is required that the Service Contract be renewed on or before its expiration date.</b> If the Service Contract is renewed after its expiration date, Zebra will apply to its direct customer a Service Continuity Fee of 10% of the quoted annual renewal value to Zebra of each expired Service Contract, capped at $50,000 USD. Renewing the Service Contract on time will ensure continued investment protection by:
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>

<table cellspacing="0" cellpadding="0" width="560" border="0">
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">Hardware Repairs within contracted Repair Turn Around Times</font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">OS, Software and firmware upgrades</font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">Help desk support and troubleshooting</font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">&#9679;</font></td>
    <td width="90%"><font face="Arial" size="2">Avoiding unexpected Time & Material (“T&M”) Repair charges</font></td>
  </tr>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
<b>Do not leave the Service Contract renewal to the last day of expiry or beyond.</b> As the existing Service Contract expires, all devices previously covered by it will by default operate under T&M conditions with associated costs per device repair. Zebra will require at least 10 days from receipt of a valid T&M purchase order to repair each impacted device. In most cases this T&M approach is more expensive and also excludes the range of benefits which come with a Service Contract.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
We have already prepared a renewal overview for you at our contract renewals site: <a href="http://renewals.connectpartnerportal.com/">http://renewals.connectpartnerportal.com/</a>. Log in with the user information that we’ve previously supplied. If you have never logged into the partner portal, please don’t hesitate to contact us for help.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Should you desire to renew the expiring Service Contract, please contact us and we will be happy to provide you with the details that you require.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
If you have sent your purchase order or renewed the Service Contract, thank you for doing so and please disregard this notification.
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Kind Regards,
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
NA Contract Services Renewal Team
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
<a href=mailto:na.renewals@zebra.com>NA.renewals@zebra.com</a>
  </font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
If you prefer not to receive email renewal notifications, <a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "Zebra_Unsubscribe_Acknowledgement_IN" ) %>'>please click here to unsubscribe.</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="5" width="660" border="0">
  <tr bgcolor="007CB0">
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Contract Number</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">End User</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Term Date</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Days to Expiry</font></th>
  </tr>
  <c:set var="pcount" value='0'/>
  <x:forEach select="$d/account/assets/asset" var="p">
    <c:choose>
      <c:when test="${pcount mod 2 == '0'}">
        <tr>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_1"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_3"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_2"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_4"/></font></td>
        </tr>
      </c:when>
      <c:otherwise>
        <tr bgcolor="e0e0e0">
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_1"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_3"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_2"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/opp_customfield_4"/></font></td>
        </tr>
      </c:otherwise>
    </c:choose>
    <c:set var="pcount" value="${pcount + 1}"/>
  </x:forEach>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="1">
The design, technical, and cost information (“Information”) furnished in this submission is confidential proprietary information of Zebra Technologies International, LLC and its worldwide affiliates (“Zebra”). Such Information is submitted with the restriction that it is to be used for evaluation purposes only, and is not to be disclosed publicly or in any manner to anyone other than those required to evaluate the Information, without the express written permission of Zebra. The Information provided in this submission is for information and budgetary purposes only and does not constitute an offer to sell or license any products or services.  This submission is not binding on Zebra and Zebra is making no representations, warranties, or commitments with respect to pricing, products, payment terms, credit or terms and conditions.
  </font></td></tr>
  <tr><td><font face="Arial" size="1">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="1">
ZEBRA and the stylized Zebra head are trademarks of ZIH Corp., registered in many jurisdictions worldwide.  All other trademarks are the property of their respective owners.  &copy;2016 ZIH Corp. and/or its affiliates.  All rights reserved.
  </font></td></tr>

</table>

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>