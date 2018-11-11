<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<x:parse var="d" doc="${data}"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>${values.subject}</title>
</head>

<body>
<table style="width:500pt" cellpadding="0" cellspacing="0" border="0">
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt"><br><br><br><br>To : <x:out select="$d/account/customer/email"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">From : <x:out select="$d/account/ssirep/email"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Subject: F5 Renewal Notification - Reminder<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Dear Customer,<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Your maintenance will be up for renewals shortly, relating to some appliances you have implemented within your IT infrastructure from F5 Networks.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">To assist you in this process, I have detailed the appliances below which have been or are under contract via your reseller.<br><br></td></tr>
</table>
    <table style="width:400pt" cellpadding="0" cellspacing="0" border="1">
     <tr>
      <td align=center style="width:40%;background:#1F497D;padding:3.0pt 3.0pt 3.0pt 3.0pt;font-family:Calibri,sans-serif;font-size:10pt">
      <b><span style="color:white">End User</span></b></td>
      <td align=center style="width:25%;background:#1F497D;padding:3.0pt 3.0pt 3.0pt 3.0pt;font-family:Calibri,sans-serif;font-size:10pt">
      <b><span style="color:white">Cov Product</span></b></td>
      <td align=center style="width:20%;background:#1F497D;padding:3.0pt 3.0pt 3.0pt 3.0pt;font-family:Calibri,sans-serif;font-size:10pt">
      <b><span style="color:white">Serial Number</span></b></td>
      <td align=center style="width:15%;background:#1F497D;padding:3.0pt 3.0pt 3.0pt 3.0pt;font-family:Calibri,sans-serif;font-size:10pt">
      <b><span style="color:white">End Date</span></b></td>
     </tr>
<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/products/product" var="p">
<c:choose>
<c:when test="${pcount mod 2 == '0'}">
  <tr>
    <td style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$d//customer/name"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$p/prod"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$p/ser_no"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , "enddate", "yyyyMMdd" , "en" , "", java.text.DateFormat.SHORT ) %></c:if>&nbsp;</td>
</c:when>
<c:otherwise>
  <tr bgcolor="e0e0e0">
    <td style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$d//customer/name"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$p/prod"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:out select="$p/ser_no"/>&nbsp;</td>
    <td align=center style="padding:1.5pt 1.5pt 1.5pt 1.5pt;border:inset #999999 1.0pt;font-family:Calibri,sans-serif;font-size:10pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , "enddate", "yyyyMMdd" , "en" , "", java.text.DateFormat.SHORT ) %></c:if>&nbsp;</td>
</c:otherwise>
</c:choose>
    </tr>
<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>
<table style="width:500pt" cellpadding="0" cellspacing="0" border="0">
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt"><br><br>If the data provided is correct, I would like to encourage you to request a quote from your preferred reseller to ensure we are able to continue to provide you with support.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">As a reminder, in case we do not receive a purchase order from your reseller/distributor within 30 days after service expiration date, a late penalty fee per unit will be added to the service cost of the units in addition to the service cost of the backdated period.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">If you believe that you are not the correct individual within your organisation to receive this Maintenance Renewal information, I would appreciate if you could forward this email to the appropriate person and let me know so I can follow-up and do not disturb you again in the future.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_wrong_contact_IN", (java.util.Properties)request.getAttribute("values") ) %>'>I am not the correct point of contact.</a><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">If you do not require maintenance, please let us know clicking on the link below, and we will no longer pursue this renewal quote.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_no_renewal_IN", (java.util.Properties)request.getAttribute("values") ) %>'>My company has decided not to renew.</a><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">If you believe that your company has already renewed the maintenance for these appliances please click on the link below:<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_already_renewed_south_IN", (java.util.Properties)request.getAttribute("values") ) %>'>We have already renewed these units with our reseller.</a><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Kind Regards,<br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:11pt"><b><x:out select="$d/account/ssirep/name"/> | Service Renewals<br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:7pt"><b>F5 Networks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;P <x:out select="$d/account/ssirep/phone"/><br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:7pt"><a href="http://www.f5.com">www.f5.com</a><br><br></td></tr>
<tr><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/F5/F5_logo.jpg"><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_unsubscribe_IN", (java.util.Properties)request.getAttribute("values") ) %>'>If you do not wish to be contacted again in the future please click on this link</a><br><br></td></tr>  </table>

</body>

<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %></html>
