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
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt"><br><br><br><br>To : <x:out select="$d/account/ssirep/email"/><br><br>End User Email Address: <x:out select="$d/account/customer/email"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Subject: I believe we have already renewed these units with our reseller<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Thanks for the Renewal Notification regarding the appliances:<br><br></td></tr>
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
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt"><br><br>I believe that our company has already renewed the maintenance for these appliances.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Thank you.<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Kind Regards,<br><br></td></tr>
</table>

</body>

</html>
