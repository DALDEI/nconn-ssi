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
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Subject: F5 Renewal Notification - Final Reminder<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Dear Customer,<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">I am contacting you with regards to the renewal of your existing F5 Support contract. Please note that your current contract is due to expire.  Please note that it is no longer possible to receive technical support, RMA or access to software upgrades for any expired units.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Should you wish to continue support please renew this contract through your F5 Partner as soon as possible. The renewal of any units later than 30 days after their expiry date will incur a Lapsed Service Fee of $2,000 per appliance.  Support charges will also be back-dated to the expiry date of the last active service contract. To assist you in this process, I have detailed the appliances below.<br><br></td></tr>




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











<tr><td style="font-family:Calibri,sans-serif;font-size:10pt"><br><br>If you do not require maintenance, please let us know clicking on the link below, and we will no longer pursue this renewal quote.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_no_renewal_IN", (java.util.Properties)request.getAttribute("values") ) %>'>My company has decided not to renew.</a><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">If you believe that your company has already renewed the maintenance for these appliances please click on the link below:<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_already_renewed", (java.util.Properties)request.getAttribute("values") ) %>'>I believe we have already renewed these units with our reseller.</a><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Please do not hesitate to contact me or your F5 Partner should you require any further information.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Kind Regards,<br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:11pt"><b><x:out select="$d/account/ssirep/name"/> | Service Renewals<br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:7pt"><b>F5 Networks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;P <x:out select="$d/account/ssirep/phone"/><br><br></td></tr>
<tr><td style="font-family:Arial,sans-serif;font-size:7pt"><a href="http://www.f5.com">www.f5.com</a><br><br></td></tr>
<tr><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/F5/F5_logo.jpg"><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt;text-indent:50pt;color:red"><a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_unsubscribe_IN", (java.util.Properties)request.getAttribute("values") ) %>'>If you do not wish to be contacted again in the future please click on this link</a><br><br></td></tr>  </table>

</body>

<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %></html>
