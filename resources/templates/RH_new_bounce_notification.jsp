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
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">A <a href="${values.image}">RedHat Renewal notification</a> did not reach its intended recipient:<br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Opportunity ID: <x:out select="$d//opp_id"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Template ID: <x:out select="$d//template_id"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Bounced End User Email Address: <x:out select="$d/account/customer/email"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">End User Name: <x:out select="$d/account/customer/name"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Contract Number: <x:out select="$d/account/contract_no"/><br><br></td></tr>
<tr><td style="font-family:Calibri,sans-serif;font-size:10pt">Account Number: <x:out select="$d/account/acct_no"/><br><br></td></tr>
</table>

</body>

</html>
