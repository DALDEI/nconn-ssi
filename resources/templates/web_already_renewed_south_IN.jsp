<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8"%>


<html>
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">		<title></title>
		<style type="text/css"> 
		<%-- P {font-family: verdana, helvetica; font-size: 12px; font-weight: normal; color: #000000}
	DIV {font-family: verdana, helvetica; font-size: 12px; font-weight: normal; color: #000000}
	TD {font-family: verdana, helvetica; font-size: 12px; font-weight: normal; color: #000000}
	.td {font-family: verdana, helvetica; font-size: 12px; font-weight: normal; color: #000000}
	a.td:link {text-decoration: underline; font-size: 12px; color: #336600}
	a.td:hover {text-decoration: underline; font-size: 12px; color: #003399}
	a.td:active {text-decoration: underline; font-size: 12px; color: #336600}
	a.td:visited {text-decoration: underline; font-size: 12px; color: #336600}
	.sidebartext {font-family: verdana, arial; font-size: 10px; font-weight: normal; color: #000000}
	.ptitle {font-family: verdana, helvetica; font-size: 12px; font-weight: bold; color: #003399}
	.plink {font-family: verdana, helvetica; font-size: 12px; font-weight: bold; color: #003399}
	HR {color: #000000; height: 1}
	H2 { font-family: verdana, helvetica; font-size: 20px; font-weight: bold; color: #003399 }
	H3 { font-family: verdana, helvetica; font-size: 18px; font-weight: bold; color: #003399 }
	H4 { font-family: verdana, helvetica; font-size: 12px; font-weight: bold; color: #003399 }
	OL { font-family: verdana, helvetica; font-size: 12px; font-weight: normal; color: #000000 }
	UL { font-family: verdana, helvetica; font-size: 12px; font-weight: normal; color: #000000; list-style: outside; list-style-type: square }
	B { font-weight: bold }
	I { font-style: italic }
	.sidebar {text-decoration: none; font-family: verdana, arial; font-size: 10px; font-weight: bold; color: #000000}
	a.footer {font-family: verdana, helvetica; text-decoration: none; font-weight: bold; font-size: 10px; color: #999999}
	a.footer:link {font-family: verdana, helvetica; text-decoration: none; font-weight: bold; font-size: 10px; color: #999999}
	a.footer:hover {font-family: verdana, helvetica; text-decoration: none; font-weight: bold; font-size: 10px; color: #999999}
	a.footer:active {font-family: verdana, helvetica; text-decoration: none; font-weight: bold; font-size: 10px; color: #999999}
	a.footer:visited {font-family: verdana, helvetica; text-decoration: none; font-weight: bold; font-size: 10px; color: #999999}
	a.footer2:link {font-family: verdana, helvetica; text-decoration: none; font-weight: normal; font-size: 10px; color: #999999}
	a.footer2:hover {font-family: verdana, helvetica; text-decoration: none; font-weight: normal; font-size: 10px; color: #999999}
	a.footer2:active {font-family: verdana, helvetica; text-decoration: none; font-weight: normal; font-size: 10px; color: #999999}
	a.footer2:visited {font-family: verdana, helvetica; text-decoration: none; font-weight: normal; font-size: 10px; color: #999999}
	.pfooter {font-family: verdana, helvetica; font-weight: normal; font-size: 10px; color: #999999}
	li{margin-bottom:14pt}
	--%>
	    </style>
	</head>
	<body bgcolor="#ffffff" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

		<table width="640" border="0" cellspacing="0" cellpadding="0"> <tr><td width="10" rowspan="11">&nbsp;</td></tr>
		<tr>
		    <td>

                <br /><br />
 <p>Could you please indicate the reseller through which the F5 support has been renewed?</p>
 <br />
 <br />
                <form name="corrected" method="post" action='<%=nexstra.cds.servlet.TemplateTags.getFormPostURL( request , pageContext ) %>'>
		<input name="_event" type="hidden" size="40" value="FormEvent.already_renewed_south">		  	  
				  <input name="_redirect" type="hidden" size="40" value='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "web_already_renewed_south_IN" ) %>'>
                  <table>
<tr><td>Reseller Name:</td><td><textarea name="comments" rows=2 cols=40></textarea></td>
				  </tr>
				  <tr>
				    <td>&nbsp;</td>
				    <td><input type="submit" name="Submit" value="Submit"></td>
				    </tr>				  				  
				  </table>
            </form>

	</td>
		</tr>
		</table>
		
		<%-- BEGIN FOOTER --%>

		<table border="0" cellspacing="0" cellpadding="10" width="640" id="Table6">
			<tr bgcolor="#ffffff">
				<td bgcolor="#ffffff"><p><span class="pfooter">
                <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/F5/F5_logo.jpg" alt="F5 Logo"></span><span class="pfooter"></span></p>
				</td>
			</tr>
		</table>
		<%-- END FOOTER --%>

	</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>

</html>