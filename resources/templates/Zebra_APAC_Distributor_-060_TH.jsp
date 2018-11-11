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
  <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
  <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
  <tr align="left" valign="top">
    <td>
      <table cellspacing="0" cellpadding="0" width="28" border="0" align="left">
        <tr align="left" valign="top"><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/zebra_yellow_bar.png"></td></tr>
      </table>
    </td>
    <td>
      <table cellspacing="0" cellpadding="0" width="12" border="0" align="left">
        <tr><td>&nbsp;</td></tr>
      </table>
    </td>
    <td>
      <table cellspacing="0" cellpadding="0" width="100" border="0" align="left">
        <tr align="left" valign="top"><td><img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/zebra_logo.png"></td></tr>
      </table>
    </td>


<%-- BEGIN: Body of letter --%>
<td>

<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
<%= nexstra.cds.servlet.TemplateTags.formatLongDate( pageContext , null, "mm/dd/yy" , "th" , "" ) %>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2" color="#ff0000"><b>
สัญญาบริการของ Zebra ที่ได้หมดอายุลงแล้ว
  </b></font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
บริการ Zebra OneCare ไม่สามารถใช้งานได้ สำหรับลูกค้าของท่านตามหมายเลขสัญญาบริการด้านล่างนี้
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="5" width="560" border="0">
  <tr bgcolor="5f4b7a">
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">หมายเลขสัญญา</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">ลูกค้า(ผู้ใช้)</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">วันที่หมดอายุ</font></th>
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
<u>รายการตามด้านล่างนี้ เป็นคุณสัมบัติบางส่วนของการให้บริการ</u> Zebra OneCare ซึ่งเป็นการให้ความช่วยเหลือ และเป็นคุณประโยชน์กับลูกค้าที่มีสัญญาบริการ เช่น
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="0" width="560" border="0">
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
อัปเดต Software และ Firmware
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
ทีมบริการช่วยเหลือและให้คำปรึกษา ในการใช้งาน
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
การคุ้มครองของสัญญาบริการ
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
การซ่อมแซม หรือเปลี่ยน อุปกรณ์
    </font></td>
  </tr>
  <tr>
    <td width="5%"><font face="Arial" size="2">&nbsp;</font></td>
    <td valign="top" width="5%"><font face="Arial" size="2">•</font></td>
    <td width="90%"><font face="Arial" size="2">
ประโยนช์เสริมต่างๆ ที่รวมอยู่ในสัญญา
    </font></td>
  </tr>
</table>


<table cellspacing="0" cellpadding="0" width="600" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
อย่างไรก็ตามในขณะนี้ หากลูกค้าของท่านต้องการต่อสัญญา สามารถทำการต่อสัญญาได้ โดยเข้าสู่เว็บไซต์  
<a href="http://www.zebra.com/zebraonecare">www.zebra.com/zebraonecare</a> 
<u>เพื่อหาข้อมูลตัวเลือกที่ทางลูกค้าของท่านมีอยู่  อีกทั้งยังได้พบกับประสบการณ์ เกี่ยวกับ บริการและทางเลือกใหม่ พร้อมทั้งสิทธิประโยชน์ต่างๆ ของสัญญาการบริการ</u>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
โปรดติดต่อทางบริษัทหากท่านมีปัญหาหรือต้องการติดต่อสอบถามข้อมูลต่างๆ  เรายินดีให้คำปรึกษาสำหรับทางเลือกที่เหมาะสมสำหรับลูกค้าของท่าน
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>


  <tr><td><font face="Arial" size="2">
ทางเราได้จัดทำใบเสนอราคาการต่ออายุสัญญาของท่านไว้เรียบร้อยแล้ว  กรุณาล๊อคอินได้โดยใช้ข้อมูลของท่าน ตามที่ทางเราได้ให้ไว้ก่อนหน้านี้ ที่เวปไซต์
<a href="http://renewals.connectpartnerportal.com/">http://renewals.connectpartnerportal.com/</a> 
<u>หรือหากท่านยังไม่เคยล็อคอินเข้าใน</u> partner portal มาก่อน กรุณาติดต่อขอความช่วยเหลือจากเราได้ทันที
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
หากท่านได้ทำการต่ออายุสัญญาเรียบร้อยแล้ว ทางบริษัทขอขอบคุณ และขออภัยสำหรับหนังสือแจ้งเตือนฉบับนี้ 
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
หากมีข้อสงสัย หรือคำแนะนำประการใด กรุณาติดต่อทางเราได้ทันที
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">ขอแสดงความขอบคุณ</font></td></tr>
  <tr><td><font face="Arial" size="2">
Zebra Renewals Team (APAC)
  </font></td></tr>
  <tr><td><font face="Arial" size="2">
<a href="mailto:apac.renewals@zebra.com">apac.renewals@zebra.com</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
หากท่านไม่ต้องการที่จะรับอีเมล์การแจ้งเตือน 
<a href='<%=nexstra.cds.servlet.TemplateTags.getTemplateURL( request , pageContext , "Zebra_Unsubscribe_Acknowledgement_TH" ) %>'>
กรุณากดที่นี่</a>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


</td></tr>
</table>


</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>