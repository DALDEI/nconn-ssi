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
that have Avaya-provided support &mdash; either retail, wholesale or co-delivery 
contracts. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
The below list of contracts are due to expire in the next 
<x:out select="round(substring($d//key_daysfreq,3,2))"/> 
days. Please 
review the list below and contact your assigned Avaya Renewals Team 
Representative to discuss and align on the current pipeline.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Our goal is to help you achieve a 90% renewal rate within 30 days of 
contract expiration to ensure our customers have support needed to 
maintain their business while also assisting you in your efforts to close 
your business on time with the maximum return.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- SIGNATURE BLOCK --%>
<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Thank you,</font></td></tr>
  <tr><td><font face="Arial" size="2">Sincerely yours AVAYA Renewals Team</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- CONTRACT TABLE --%>
<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Contract #</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Sold To <br>Address</font></th>
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
  <tr><td><font face="Arial" size="2" color="#FF0000">
<b>*Renewal Tools replace manual quotes for all renewals</b>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr>
    <td width="3%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="3%"><font face="Arial" size="2">•</font></td>
    <td width="94%"><font face="Arial" size="2">
<b>For Heritage Nortel: Use EC Services</b> to retrieve the auto-generated 
renewal quote, and then order through a distributor or directly from Avaya using 
Order Center. 
    </font></td>
  </tr>
  <tr>
    <td width="3%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="3%"><font face="Arial" size="2">•</font></td>
    <td width="94%"><font face="Arial" size="2">
For Heritage Avaya: Use the Avaya One Source Renewal Tool (CSQT 2.0) to 
generate support renewal quotes.
    </font></td>
  </tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">
<a href="https://urldefense.proofpoint.com/v2/url?u=http-3A__links.avayanews.com_rts_go2.aspx-3Fh-3D532451-26tp-3Di-2DH43-2D1y-2D74e-2D1XshP-2D1c-2D7Hww-2D1c-2D1Xsg3-2D1uaPlT&d=CwMFaQ&c=BFpWQw8bsuKpl1SgiZH64Q&r=uhN7oNCeisT55V3mgK04fClqH225NGncp8SOlfrKSaM&m=bSAql8WgpAG8H05U3n3ZyEauoV9Bxu4MGuuvA4QnQac&s=TEiQKfS4Vd_5X4deQ4xyENdZJQdWWXSD4QxDKuItqYM&e=">
Download the job aid for hAvaya renewals
</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
<a href="https://urldefense.proofpoint.com/v2/url?u=http-3A__links.avayanews.com_rts_go2.aspx-3Fh-3D532452-26tp-3Di-2DH43-2D1y-2D74e-2D1XshP-2D1c-2D7Hww-2D1c-2D1Xsg3-2D1uaPlT&d=CwMFaQ&c=BFpWQw8bsuKpl1SgiZH64Q&r=uhN7oNCeisT55V3mgK04fClqH225NGncp8SOlfrKSaM&m=bSAql8WgpAG8H05U3n3ZyEauoV9Bxu4MGuuvA4QnQac&s=huIm0n21yX311X3vwYjNYgNrfBe1oYPFAUYdb4KgLEw&e=">
Attend upcoming monthly tool training
</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
NOTE: Please do not reply to this email as it is electronically generated, and this mailbox is not monitored. 
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