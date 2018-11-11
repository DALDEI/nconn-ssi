<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<fmt:setLocale value="en-US" />
<x:parse var="d" doc="${data}"/>
<x:set var="tpl_id" select="string($d//template_id)"/>
<c:set var="tpl_vals" value="${fn:split(tpl_id,'_')}"/>
<c:set var="stage" value = "${tpl_vals[2]}"/>

<c:set var="tpl_id" value="string($d//template_id)"/>
<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat2/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.gif"/> 

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="" width="660" border="0">

<tr><td><img src="<c:out value="${rh_img}"/>" <br> <BR></td></tr>

<tr><td><font face="Arial" size="2"><br>  お客様各位</font><br></td></tr>
<tr><td><font face="Arial" size="2"> アカウント番号 -    <x:out select="$d//acct_no"/></font><br></td></tr>


</table>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<c:choose>
<c:when test="${tpl_vals[1] == 'Direct'}">  


<tr><td><font face="Arial" size="2"><br>レッドハットのサブスクリプション製品をご利用いただき誠にありがとうございます。この度は、
Red Hat Network にご登録いただいているお客様のメールアドレスにご連絡をさせていただいております。</font></td></tr> 

<tr><td><font face="Arial" size="2"><br>*当メールはHTML形式で送信しております。テキスト形式で不具合が生じる場合はHTML形式でご覧下さい。 </font></td></tr> 
<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}">
<tr><td><font face="Arial" size="2"><br>  
弊社登録情報によりますと、前年度、御社のレッドハット営業担当もしくはレッドハットセールスオペレーションセンターより直接販売をさせていただいたお客様のレッドハットサブスクリプションのサービス期間満了まで後<c:out value="${stage}"/> 日となりましたので、サブスクリプションの更新についてご案内させていただきます。
</font></td></tr> 
</c:when>
<c:otherwise>
<tr><td><font face="Arial" size="2"><br> 
弊社登録情報によりますと、前年度、御社のレッドハット営業担当もしくはレッドハットセールスオペレーションセンターより直接販売をさせていただいたお客様のレッドハットサブスクリプションのサービス期間が終了いたしましたので、サブスクリプションの更新について再度ご案内させていただきます。
</font></td></tr>
</c:otherwise>
</c:choose>

<tr><td><font face="Arial" size="2"><br>

すでに該当する下記のコントラクト・ナンバーのサブスクリプションを更新している場合、もしくは更新しない旨をご通知いただいている場合には、ご案内が行き違いとなってしまい、申し訳ございません。その節は、お手数ながら当メールを破棄していただきますようお願い申し上げます。
</font></td></tr> 

<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}">


<tr><td><font face="Arial" size="2"><br>
現時点においてサブスクリプションの更新がお済みでない場合は、レッドハットソフトウェアへのアクセス、アップデート、アップグレード、テクニカルサポート、セキュリティ対策、及びレッドハットオープンソースアシュアランスプログラムを含む様々なサービスを今後もご利用いただくために、サービス期間満了の前にご更新いただきますようお願い申し上げます。
</font></td></tr> 

</c:when>

<c:otherwise>
<tr><td><font face="Arial" size="2"><br>

現時点においてサブスクリプションの更新がお済みでない場合は、レッドハットソフトウェアへのアクセス、アップデート、アップグレード、テクニカルサポート、セキュリティ対策、及びレッドハットオープンソースアシュアランスプログラムを含む様々なサービスを今後もご利用いただくために、至急ご更新いただきますようお願い申し上げます。
</font></td></tr> 
</c:otherwise>

</c:choose>

</c:when>

<c:otherwise>
<tr><td><font face="Arial" size="2"><br>
レッドハットのサブスクリプション製品をご利用いただき誠にありがとうございます。このたびは、  Red Hat Network にご登録いただいているお客様のメールアドレスにご連絡をさせていただいております。 </font></td></tr> 


<tr><td><font face="Arial" size="2"><br>
*当メールはHTML形式で送信しております。テキスト形式で不具合が生じる場合はHTML形式でご覧下さい。  </font></td></tr> 

<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}">
<tr><td><font face="Arial" size="2"><br>
弊社登録情報によりますと、お客様のレッドハットサブスクリプションのサービス期間満了まで後<c:out value="${stage}"/>日となりましたので、サブスクリプションの更新についてご案内させていただきます。
</font></td></tr> 
</c:when>
<c:otherwise>
<tr><td><font face="Arial" size="2"><br>
弊社登録情報によりますと、ご使用のレッドハットのサブスクリプションのサービス期間が終了いたしましたので下記のサブスクリプションについての詳細を再度ご案内させていただきます。
</font></td></tr> 
</c:otherwise>
</c:choose>

<tr><td><font face="Arial" size="2"><br>
すでに該当する下記のコントラクト・ナンバーのサブスクリプションを更新している場合、もしくは更新しない旨をご通知いただいている場合には、ご案内が行き違いとなってしまい、申し訳ございません。その節は、お手数ながら当メールを破棄していただきますようお願い申し上げます。
 </font></td></tr> 

<tr><td><font face="Arial" size="2"><br>
現時点においてサブスクリプションの更新がお済みでない場合は、レッドハットソフトウェアへのアクセス、アップデート、アップグレード、テクニカルサポート、セキュリティ対策、及びレッドハットオープンソースアシュアランスプログラムを含む様々なサービスを今後もご利用いただくために、サービス期間満了の前にご更新いただきますようお願い申し上げます。
</font></td></tr> 

<tr><td><font face="Arial" size="2"><br>
今すぐ更新していただける場合は、下記ボタンをクリックしてください。
</font></td></tr> 

<tr><td><font face="Arial" size="2"> 
<BR>&nbsp;<BR>
<a href ="https://www.redhat.com/apps/store/renew/" > <img src="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat2/button_renew_now.gif" border=0> </a> </font> </td></tr> 


</c:otherwise>
</c:choose>



<tr><td><font face="Arial" size="2">
<BR>

このたびレッドハットでは、お客様からのフィードバックを基に、製品の機能強化をするだけでなく、製品の体系を新たに見直しました。これにより、従来以上に高い機能の製品・サービスをよりお客様のニーズに合った柔軟な形でご利用いただくことが可能になりました。</font></td></tr>
<tr><td><font face="Arial" size="2">
<BR>
サブスクリプションを更新いただくことにより、新体系に基づいた機能強化されたレッドハット製品をご使用いただくことが可能となります。

</font></td></tr>

<c:choose>
<c:when test="${tpl_vals[1] == 'Direct'}">  
<tr><td><font face="Arial" size="2">
<br><br>下表は、現在ご使用いただいているサブスクリプション（Old SKU） とそれに対応する新体系を基調としたサブスクリプション（Configured SKU） の一例となります。お客様のご利用環境に応じ、弊社担当営業より適切なサブスクリプションのSKU (Configured SKU)をご提案、お見積もりさせていただきます。
</font></td></tr>

</c:when>

<c:otherwise>
<tr><td><font face="Arial" size="2">

<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}">
<br>下表は、現在ご使用いただいているサブスクリプション(Old SKU) とそれに対応する新体系を基調としたサブスクリプション(Configured SKU) の一例となります。
</c:when>

<c:otherwise>
<br>
下表は、現在ご使用いただいているサブスクリプション（Old SKU）とそれに対応する新体系の基のサブスクリプション（Configured SKU）となります。
</font></td></tr>

</c:otherwise>
</c:choose>



</c:otherwise>

</c:choose>



</table>
<BR>&nbsp;<BR>
<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">

<th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Contract<BR> No.</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Qty</font></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Old Product Description </font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Old SKUS</font><br></th>
<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Configured <br>SKUS</font><br></th>
<th  align="center" valign="center">
<font face="Arial" size="2" color="ffffff">Configured Product<br>Description</font><br></th>

<th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Expiration <br>Date</font><br></th>


</tr>
<c:set var="pcount" value='0'/>
<x:forEach select="$d/account/products/product" var="p">

<c:choose>
<c:when test="${pcount mod 2 == '0'}">

<tr>

<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$d//contract_no"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">  <x:out select="$p/desc"/>  </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/oldsku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font> </td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/newprod"/>  </td>
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "yyyy/MM/dd") %></c:if></font></td>
</tr>
</c:when>
<c:otherwise>
  <tr bgcolor="e0e0e0">
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out  select="$d//contract_no"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt"> <x:out select="$p/qty"/> </font></td>
<td align="center" valign="center""><font face="Arial" style="font-size:8pt">  <x:out select="$p/desc"/>  </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/oldsku"/> </font></td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/sku"/> </font> </td>
<td align="center" valign="center"> <font face="Arial" style="font-size:8pt">   <x:out select="$p/newprod"/>  </td>
<td class="center"><font face="Arial" style="font-size:8pt"><x:set var="enddate" select="string($p/enddate)"/><c:if test="${fn:length(enddate) gt 0}"><%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "yyyy/MM/dd") %></c:if></font></td>
</tr>
</c:otherwise>
</c:choose>

<c:set var="pcount" value="${pcount + 1}"/>
</x:forEach>
</table>
<br>
<table cellspacing="0" cellpadding="0" width="660" border="0">
<tr><td><font face="Arial" size="2"> <br>レッドハットは、レッドハットソフトウェアをご使用しているリソース数でこの価値を判断するため、アクティブサブスクリプションをお持ちの場合は、レッドハットソフトウェア導入数すべてのサブスクリプションを保持する必要がございます。サブスクリプションをお持ちの場合、レッドハットは下記のような付加価値をお客様に継続的に提供させていただきます。  </font></td></tr>

<tr><td><font face="Arial" size="2"> 
<ul>
<br>
<li>
<b>新テクノロジー：</b>新チップセットへのサポート、メジャーパフォーマンスの最適化、特定ワークロードの向上などを四半期毎に、サブスクリプションの一部として追加費用なしでご提供いたします。
<li>
<b>アップデート、バグ修正、セキュリティ：</b>機能の向上・修正、新機能、継続的なサーティフィケーションが、ご使用のサブスクリプションサイクルを通じて、ご利用可能です。
<li>
<b>ソフトウェアのテスト及び品質管理：</b>最新技術をテストを行ったうえでご提供致しますので、安心してご利用いただけます。
<li>
<b>アップグレードへの柔軟性：</b>サブスクリプションがアクティブの間、リリースされる新バージョンをご利用いただけます。
<li>
<b>テクニカルサポート：</b>ご利用回数に制限なく、ご要求に応じたサポートレベルをご提供します。
<li>
<b>ハードウェアおよびソフトウェアの認定：</b>レッドハット製品の動作が認定されているハードウェア、ソフトウェアについては、サブスクリプションがアクティブな間は、メーカー様の認定の元、安心してご利用いただけます。
<li>
<b>バイナリー及びドキュメント：</b>ソフトウェア製品バイナリー及びドキュメントをご利用いただけます。
<li>
<b>オープンソース保証制度：</b>レッドハットサブスクリプションを保有している期間中は、レッドハットのオープンソース保証制度への加入が可能となり、レッドハット製品の使用に伴い、知的財産権の侵害などの法的問題が発生した場合に、レッドハットによる支援を受けることが可能となります。
</ul>
</font></td></tr>
<c:choose>
<c:when test="${tpl_vals[1] == 'Direct'}">  

<tr><td><font face="Arial" size="2"><br>ご使用いただいておりましたサブスクリプションでご利用できるサービス及び更新に必要な情報の詳細は<a href ="http://www.jp.redhat.com/subscriptions/" >こちら</a>でご覧いただけます。
</font></td></tr>

<tr><td><font face="Arial" size="2"><br>レッドハットサブスクリプションについて、今後、ご連絡を差し上げるべき方が他にいらっしゃいましたら、恐れ入りますが、ご連絡先を<a href=mailto:customerdata-apac@redhat.com > customerdata-apac@redhat.com </a>
までお知らせ頂けますようお願い申し上げます。
</font><br></td></tr>
<tr><td><font face="Arial" size="2"><br>また、新体系においてお客様のご利用環境に応じた製品の提案、更新手続き及びお見積もりをご希望の場合には、レッドハット営業担当もしくは弊社セールスオペレーションセンターまでお問い合わせ下さい。
 <BR>
</font><br></td></tr>
<tr><td><font face="Arial" size="2">
レッドハット　セールスオペレーションセンター　更新担当

</font><br></td></tr>

<tr><td><font face="Arial" size="2">
電話番号： 0120-266-086 （携帯からは03-5798-8510）
 </font><br></td></tr>
<tr><td><font face="Arial" size="2">
メールアドレス： <a href=mailto:soc-jp@redhat.com>soc-jp@redhat.com</a>
 </font><br></td></tr>
<tr><td><font face="Arial" size="2">
受付時間：9:30~18:00（土日・祝を除く）
</font><br></td></tr>

</c:when>

<c:otherwise> 
<c:choose>
<c:when test="${tpl_vals[2] != 'minus30'}">
<tr><td><font face="Arial" size="2">
現在ご使用になられているサブスクリプションでご利用できるサービス及び更新に必要な情報の詳細は<a href ="http://www.jp.redhat.com/subscriptions/" >こちら</a>で御覧頂けます。
</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">
レッドハットサブスクリプションについて、今後、ご連絡を差し上げるべき方が他にいらっしゃいましたら、恐れ入りますがご連絡先を <a href=mailto:customerdata-apac@redhat.com>customerdata-apac@redhat.com</a> までお知らせいただきますようお願い申し上げます。
</font><br><br></td></tr>


</c:when>
<c:otherwise>

<tr><td><font face="Arial" size="2">ご使用になられているサブスクリプションでご利用できるサービス及び更新に必要な事項の詳細は<a href ="http://www.jp.redhat.com/subscriptions/" >こちら</a>でご覧いただけます。
</font><br><br></td></tr>
<tr><td><font face="Arial" size="2">レッドハットサブスクリプションについて、今後、ご連絡を差し上げるべき方が他にいらっしゃいましたら、恐れ入りますが、ご連絡先を <a href=mailto:customerdata-apac@redhat.com>customerdata-apac@redhat.com</a> までお知らせいただきますようお願い申し上げます。</font><br><br></td></tr>
</c:otherwise>
</c:choose>

<tr><td><font face="Arial" size="2">
弊社の新しいパッケージングについてのより詳しいご説明は、下記URLよりご覧いただけますのでご利用下さい。</font><br><br></td></tr>
</c:otherwise>
</c:choose>

<tr><td><font face="Arial" size="2">
<a href="http://www.jp.redhat.com/purchase/RHEL_renewal_stop.html">http://www.jp.redhat.com/purchase/RHEL_renewal_stop.html</a>
 </font></td></tr>

<tr><td><font face="Arial" size="2">
<br>今後とも弊社サービスをご利用いただきますよう心よりお願い申し上げます。</font><br></td></tr>
<tr><td><font face="Arial" size="2">
<br>レッドハット株式会社
</font></td><br></tr>



<tr><td><font face="Arial" size="1"><br>
© 2011 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo and JBoss are registered trademarks of Red Hat, Inc. in the U.S. and other countries. Linux is a registered trademark of Linus Torvalds. All other trademarks are the property of their respective owners.
<BR><BR></font></td></tr>

</table>



</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>
