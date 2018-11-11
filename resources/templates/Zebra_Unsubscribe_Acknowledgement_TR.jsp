<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<% nexstra.cds.servlet.TemplateTags.sendEvent( request , pageContext , "UnsubscribeEvent" , null ); %>

<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">		  
  <title>Unsubscribe Confirmation</title>
</head>


<table cellspacing="0" cellpadding="0" width="800" border="0" align="left">
  <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
  <tr align="left" valign="top">
    <td>
      <table cellspacing="0" cellpadding="0" width="28" border="0" align="left">
        <tr align="left" valign="top"><td>
<img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/zebra_yellow_bar.png">
        </td></tr>
      </table>
    </td>
    <td>
      <table cellspacing="0" cellpadding="0" width="12" border="0" align="left">
        <tr><td>&nbsp;</td></tr>
      </table>
    </td>
    <td>
  <table cellspacing="0" cellpadding="0" width="160" border="0" align="left">
    <tr align="left" valign="top"><td><img 

src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/zebra_logo.png"></td></tr>
    <tr align="left" valign="top"><td>&nbsp;</td></tr>
    <tr align="left" valign="top"><td><font face="Arial" style="font-size:6pt" color="000000">
Zebra Technologies Corporation<br>
3 Overlook Point<br>
Lincolnshire, IL 60069
    </font></td></tr>
    <tr align="left" valign="top"><td>&nbsp;</td></tr>
    <tr align="left" valign="top"><td><font face="Arial" style="font-size:6pt" color="000000">
p 847-634-6700<br>
f 847-913-8766<br>
zebra.com
    </font></td></tr>
  </table>
</td>
<td>

<%-- BEGIN: Body of letter --%>
<table cellspacing="0" cellpadding="0" width="600" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="3"><b>
 Kayıtlarımız iptal isteğiniz doğrultusunda güncellenecektir.
  </b></font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>
		

</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>

</html>