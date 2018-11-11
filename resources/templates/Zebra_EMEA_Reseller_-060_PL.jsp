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

<table cellspacing="0" cellpadding="0" width="800" border="0" align="left">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
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
    <tr align="left" valign="top"><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/zebra_logo.png"></td></tr>
  </table>
</td>


<%-- BEGIN: Body of letter --%>
<td>

<table cellspacing="0" cellpadding="0" width="600" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
<%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , null, "mm/dd/yy" , "pl" , "" ) %>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"><b>
Państwa umowa serwisowa z firmą Zebra już wygasła!
  </b></font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="5" width="560" border="0">
  <tr bgcolor="5f4b7a">
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">
Numero di contratto
    </font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">
Użytkownik końcowy
    </font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">
Data wygaśnięcia
    </font></th>
  </tr>
  <c:set var="pcount" value='0'/>
  <x:forEach select="$d/account/assets/asset" var="p">
    <c:choose>
      <c:when test="${pcount mod 2 == '0'}">
        <tr>
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_1"/></font></td>
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_3"/></font></td>
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_2"/></font></td>
        </tr>
      </c:when>
      <c:otherwise>
        <tr bgcolor="e0e0e0">
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_1"/></font></td>
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_3"/></font></td>
          <td align="center" valign="center">
            <font face="Arial" style="font-size:8pt">
<x:out select="$p/opp_customfield_2"/></font></td>
        </tr>
      </c:otherwise>
    </c:choose>
    <c:set var="pcount" value="${pcount + 1}"/>
  </x:forEach>
</table>

<table cellspacing="0" cellpadding="0" width="600" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Podane niżej usługi, oferowane w ramach umowy serwisowej 
Zebra OneCare, zapewniają Państwa klientom optymalną pracę 
i dostępność urządzeń na wymaganym przez nich poziomie:
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>

<table cellspacing="0" cellpadding="0" width="560" border="0">
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
aktualizacja oprogramowania i firmware,
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
punkt pomocy technicznej oraz diagnozowanie i rozwiązywanie problemów,
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
kompleksowe wsparcie,
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
naprawa lub wymiana sprzętu,
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
opcje o wartości dodanej objęte umową.
    </font></td>
  </tr>
</table>

<table cellspacing="0" cellpadding="0" width="600" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Jednak nie jest za późno, aby wznowić umowę i zapewnić ponownie 
dostęp do tych ważnych usług serwisowych o krytycznym znaczeniu 
dla firmy! Na stronie 
<a href="http://www.zebra.com/zebraonecare">www.zebra.com/zebraonecare</a> 
podane są opcje dostępne do wyboru dla Państwa klienta. 
Oferta obejmuje nowe usługi, nowe opcje serwisowe i nowe korzyści. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Uprzejmie proszę o kontakt, jeśli mają Państwo pytania lub chcą 
omówić dostępne opcje.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Przygotowaliśmy już dla Państwa ofertę cenową na przedłużenie 
umowy, którą znajdą Państwo w naszej witrynie poświęconej 
odnawianiu umów serwisowych: 
<a href="http://renewals.connectpartnerportal.com/">
http://renewals.connectpartnerportal.com/</a>.
Na stronie można zalogować się za pomocą danych użytkownika, 
które dostarczyliśmy Państwu wcześniej. Jeśli nie logowali się 
Państwo dotąd w portalu partnerskim, zawsze służę 
pomocą – proszę o wiadomość.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Jeśli odnowili już Państwo umowę, dziękuję bardzo i 
proszę o zignorowanie tej wiadomości. 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Jeśli mają Państwo pytania lub uwagi, proszę o kontakt ze mną.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Z poważaniem</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Zebra Renewals Team (EMEA)
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
<a href="mailto:emea.renewals@zebra.com">emea.renewals@zebra.com</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
Jeśli nie chce pan/pani otrzymywać powiadamiania mailowo, proszę kliknąć tutaj, 
<a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "Zebra_Unsubscribe_Acknowledgement_PL" ) %>'>
aby się wypisać z subskrypcji.</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


</td></tr>
</table>


</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>