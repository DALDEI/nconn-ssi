<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page contentType="text/html; charset=UTF-8"%>
<fmt:setLocale value="en-US" />

<%-- This is the entire XML structure for the opportunity record from SSI --%>
<x:parse var="d" doc="${data}"/>

<%-- template_id is used to identify the name of the template to be used. --%>
<%-- template_id includes useful information: region, channel, stage and language --%>
<x:set var="tpl_id" select="string($d//template_id)"/>
<c:set var="tpl_vals"       value= "${fn:split(tpl_id,'_')}"/>
<c:set var="tpl_region"   value= "${tpl_vals[0]}"/>
<c:set var="tpl_channel" value= "${tpl_vals[1]}"/>
<c:set var="tpl_stage"     value= "${tpl_vals[2]}"/>
<c:set var="tpl_lang"       value= "${tpl_vals[3]}"/>

<%-- region and tpl_region can be different when tpl_region = NALA. --%>
<%-- When tpl_region = NALA, region can be NA or LATAM --%>

<%-- These are the values pulled from the opportunity record. --%>
<x:set var="region"               select="string($d//region)"/>
<x:set var="chng_email_not" select="string($d//chng_email_notification)"/> 
<x:set var="channel"             select="string($d//channel)"/>
<x:set var="country"             select="string($d//country)"/>
<x:set var="reseller_name"   select="string($d//reseller/name)"/>

<%-- Basic structure is REGION, then CHANNEL  --%>
<%-- 5 REGIONS = APAC/Japan, APAC/all others, NALA/NA, NALA/LATAM, EMEA --%>
<%-- 3 CHANNELS = Direct, Indirect, and Web --%>


<c:set var="s_company" value="s_company"/>
<c:set var="s_contact"    value="s_contact"/>
<c:set var="s_email"       value="s_email"/>
<c:set var="s_email_preamble"       value=""/>
<c:set var="s_phone"     value="s_phone"/>
<c:set var="main_s_phone" value="main_s"/>
<c:set var="renew_online_preamble" value=""/>
<c:set var="renew_online_url" value=""/>

<%-- PARTNER TEXT - only valid for EMEA & Indirect --%>
<c:set var="partner_text" value=""/>


<%--NOTE: Had to use variable for Lao becuase of single quote in country name. --%>
<%-- Used below in APAC (not JAPAN), seting s_phone variable. --%>
<c:set var="country_Loa" value="Lao People's Democratic Republic"/>


<%-- Switch statement based on REGION --%>
<c:choose>
  <c:when test="${ (tpl_region == 'APAC') && (country == 'Japan') }"> 
  <%-- REGION = APAC + COUNTRY = JAPAN Logic --%>

    <%-- SALES COMPANY --%>
    <c:set var="s_company" value=" "/>

    <%-- SALES CONTACT --%>
    <c:set var="s_contact" value="レッドハット 更新担当"/>

    <c:choose>
      <c:when test="${tpl_channel == 'Direct'}">
      <%-- CHANNEL = DIRECT Logic --%>

        <%-- SALES EMAIL --%>
        <c:set var="s_email_preamble" value="メールアドレス： "/>
         <c:set var="s_email" value="soc-jp@redhat.com"/>

        <%-- SALES PHONE --%>
        <c:set var="s_phone" value="電話番号： 0120-266-086"/>
      </c:when>
      <c:otherwise>
        <%-- SALES EMAIL --%>
         <c:set var="s_email_preamble" value="メールアドレス： "/>
         <c:set var="s_email" value="renewal-jp-partners@redhat.com"/>

        <%-- SALES PHONE --%>
        <c:set var="s_phone" value="電話番号： 0120-865-100"/>
      </c:otherwise>
    </c:choose>
    <%-- END: CHANNEL = DIRECT and "OTHERWISE" --%>

    <%-- MAIN SALES PHONE - only used in Japanese template --%>
    <c:set var="main_s_phone" value="受付時間：9:00~18:00（土日・祝を除く）"/>

  <%-- END: REGION = APAC (Japan) --%>
  </c:when>


  <c:when test="${ (tpl_region == 'APAC') }"> 
  <%-- REGION = APAC (but not Japan) Logic --%>

    <%-- Switch statement based on CHANNEL --%>
    <c:choose>
      <c:when test="${tpl_channel == 'Direct'}">
      <%-- CHANNEL = DIRECT Logic --%>
 
       <%-- SALES COMPANY --%>
        <c:set var="s_company" value=" "/>

        <%-- SALES CONTACT --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]">
            <x:set var="s_contact" select="string($d//ssirep/name)"/>
          </x:when>
          <x:otherwise><x:set var="s_contact" select="string($d//client/rep_name)"/></x:otherwise>
        </x:choose>

        <%-- SALES EMAIL --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_email" select="string($d//ssirep/email)"/></x:when>
          <x:otherwise><x:set var="s_email" select="string($d//client/rep_email)"/></x:otherwise>
        </x:choose>

        <%-- SALES PHONE --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]">
            <x:set var="s_phone" select= "string($d//ssirep/phone)"/>
          </x:when>
          <x:otherwise><x:set var="s_phone" select="string($d//client/rep_tel)"/></x:otherwise>
        </x:choose>
        <c:set var="s_phone" value=" "/>

      <%-- END: CHANNEL = DIRECT --%>
      </c:when>


      <c:when test="${tpl_channel == 'Indirect'}"> 
      <%-- CHANNEL = INDIRECT Logic --%>

        <%-- SALES COMPANY--%>
        <x:set var="s_company" select="string($d//reseller/name)"/>
 
        <%-- SALES CONTACT --%>
        <c:choose>
          <c:when test="${tpl_lang == 'EN'}"><c:set var="s_contact" value="Red Hat Renewals Team"/></c:when>
          <c:when test="${tpl_lang == 'KO'}"><c:set var="s_contact" value="The Red Hat 리뉴얼 팀"/></c:when>
          <c:when test="${tpl_lang == 'ZH'}"><c:set var="s_contact" value="红帽续约团队"/></c:when>
          <c:otherwise><c:set var="s_contact" value="Red Hat Renewals Team"/></c:otherwise>
        </c:choose>

        <%-- SALES EMAIL --%>
        <c:set var="s_email" value="renewal-apac-partners@redhat.com"/>
  
        <%-- SALES PHONE --%>
        <c:set var="s_phone" value=" "/>

      <%-- END: CHANNEL = INDIRECT --%>
      </c:when>  


      <c:when test="${tpl_channel == 'Web'}"> 
      <%-- CHANNEL = WEB (E-COMMERCE) Logic --%>

        <%-- SALES COMPANY--%>
        <c:set var="s_company" value=" "/>

        <%-- SALES CONTACT --%>
        <c:choose>
          <c:when test="${lang == 'EN'}"><c:set var="s_contact" value="Red Hat Renewals Team"/></c:when>
          <c:when test="${tpl_lang == 'KO'}"><c:set var="s_contact" value="The Red Hat 리뉴얼 팀"/></c:when>
          <c:when test="${tpl_lang == 'ZH'}"><c:set var="s_contact" value="红帽续约团队"/></c:when>
          <c:otherwise><c:set var="s_contact" value="Red Hat Renewals Team"/></c:otherwise>
        </c:choose>

        <%-- SALES EMAIL --%>
        <c:set var="s_email" value="renewals@redhat.com"/>

        <%-- SALES PHONE - based on country --%>
        <c:choose>
          <c:when test="${ (country == 'Australia') || (country == 'New Zealand') || (country == 'Papua New Guinea') }">
            <c:set var="s_phone" value="1-800-redhat or 1-800-733-428"/>
          </c:when>
          <c:when test="${country == 'South Korea'}"><c:set var="s_phone" value="080-708-0880"/></c:when>
          <c:when test="${country == 'Korea, Republic of'}"><c:set var="s_phone" value="080-708-0880"/></c:when>
          <c:when test="${ (country == 'China') || (country == 'Hong Kong') || (country == 'Taiwan') }"><c:set var="s_phone" value="800-810-2100"/></c:when>
          <c:when test="${ (country == 'India') || (country == 'Sri Lanka') || (country == 'Pakistan') || (country == 'Bangladesh') || (country == 'Nepal')  || (country == 'Maldives') }">
            <c:set var="s_phone" value="+91 22 39878888"/>
          </c:when>
          <c:when test="${ (country == 'Cambodia') || (country == c1) || (country == 'Myanmar') ||
                           (country == 'Vietnam') || (country == 'Indonesia') || (country == 'Philippines')  || (country == 'Thailand') ||
                           (country == 'Singapore') || (country == 'Malaysia') || (country == 'Brunei Darussalam') }">
            <c:set var="s_phone" value="+65 6490 4116"/>
          </c:when>
        </c:choose>
        <c:set var="s_phone" value=" "/>

      </c:when>
    </c:choose>

  </c:when>


  <c:when test="${ (tpl_region == 'NALA') && (region == 'LATAM') }"> 
  <%-- REGION = NALA + LATAM Logic --%>
  <%-- NOTE: CHANNEL appears to be always DIRECT, so no CHANNEL logic. --%>

    <%-- SALES COMPANY--%>
    <c:set var="s_company" value=" "/>

    <%-- SALES CONTACT --%>
    <x:choose>
      <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_contact" select="string($d//ssirep/name)"/></x:when>
      <x:otherwise><x:set var="s_contact" select="string($d//client/rep_name)"/></x:otherwise>
    </x:choose>

    <%-- SALES EMAIL --%>
    <x:choose>
      <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_email" select="string($d//ssirep/email)"/></x:when>
      <x:otherwise><x:set var="s_email" select="string($d//client/rep_email)"/></x:otherwise>
    </x:choose>

    <%-- SALES PHONE --%>
    <x:choose>
      <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_phone" select= "string($d//ssirep/phone)"/></x:when>
      <x:otherwise><x:set var="s_phone" select="string($d//client/rep_tel)"/></x:otherwise>
    </x:choose>
    <c:set var="s_phone" value=" "/>

  <%-- END: REGION = NALA + LATAM --%>
  </c:when>


  <c:when test="${ (tpl_region == 'NALA') }"> 
  <%-- REGION = NA (nala minus latam) --%>
  <%-- NOTE: This logic works for NA because previous "when" clause handles LATAM --%>

    <%-- Switch statement based on CHANNEL --%>
    <c:choose>
      <c:when test="${tpl_channel == 'Direct'}">
      <%-- CHANNEL = DIRECT Logic --%>

        <%-- SALES COMPANY --%>
        <c:set var="s_company" value=" "/>

        <%-- SALES CONTACT --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_contact" select="string($d//ssirep/name)"/></x:when>
          <x:otherwise><x:set var="s_contact" select="string($d//client/rep_name)"/></x:otherwise>
        </x:choose>

        <%-- SALES EMAIL --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_email" select="string($d//ssirep/email)"/></x:when>
          <x:otherwise><x:set var="s_email" select="string($d//client/rep_email)"/></x:otherwise>
        </x:choose>

        <%-- SALES PHONE --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_phone" select= "string($d//ssirep/phone)"/></x:when>
          <x:otherwise><x:set var="s_phone" select="string($d//client/rep_tel)"/></x:otherwise>
        </x:choose>
        <c:set var="s_phone" value=" "/>

      <%-- END: CHANNEL = DIRECT --%>
      </c:when>

      <c:when test="${tpl_channel == 'Indirect'}"> 
      <%-- CHANNEL = INDIRECT Logic --%>

        <%-- SALES COMPANY--%>
        <x:set var="s_company" select="string($d//reseller/name)"/>

        <%-- SALES CONTACT --%>
        <c:set var="s_contact" value="Red Hat Partner Team"/>

        <%-- SALES EMAIL --%>
        <c:set var="s_email" value="renewals@redhat.com"/>

        <%-- SALES PHONE --%>
        <c:set var="s_phone" value="1-888-REDHAT-1 extension 49991"/>
        <c:set var="s_phone" value=" "/>

      </c:when>

      <c:when test="${tpl_channel == 'Web'}"> 
      <%-- CHANNEL = WEB Logic --%>

        <%-- SALES COMPANY--%>
        <c:set var="s_company" value=" "/>

        <%-- SALES CONTACT --%>
        <c:set var="s_contact" value="Red Hat Renewals Team"/>
   
        <%-- SALES EMAIL --%>
        <c:set var="s_email" value="renewals@redhat.com"/>

        <%-- SALES PHONE --%>
        <c:set var="s_phone" value="1-888-REDHAT1 (888-733-4281) option 2"/>
        <c:set var="s_phone" value=" "/>

      </c:when>

    </c:choose>

  <%-- END: REGION = NA Logic --%>
  </c:when>


  <c:when test="${tpl_region == 'EMEA'}"> 
  <%-- REGION = EMEA Logic --%>
    <%-- Switch statement based on CHANNEL --%>
    <c:choose>
      <c:when test="${tpl_channel == 'Direct'}"> 
      <%-- CHANNEL = DIRECT Logic --%>

        <%-- SALES COMPANY--%>           
        <c:set var="s_company" value=" "/>

        <%-- SALES CONTACT --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_contact" select="string($d//ssirep/name)"/></x:when>
          <x:otherwise><x:set var="s_contact" select="string($d//client/rep_name)"/></x:otherwise>
        </x:choose>

        <%-- SALES EMAIL --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_email" select="string($d//ssirep/email)"/></x:when>
          <x:otherwise><x:set var="s_email" select="string($d//client/rep_email)"/></x:otherwise>
        </x:choose>

        <%-- SALES PHONE --%>  
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_phone" select= "string($d//ssirep/phone)"/></x:when>
          <x:otherwise><x:set var="s_phone" select="string($d//client/rep_tel)"/></x:otherwise>
        </x:choose>
        <c:set var="s_phone" value=" "/>

      <%-- END: CHANNEL = DIRECT --%>
      </c:when>


      <c:when test="${tpl_channel == 'Indirect'}"> 
      <%-- CHANNEL = INDIRECT Logic --%>

        <%-- SALES COMPANY  --%>
        <c:choose>
          <c:when test="${tpl_lang == 'EN'}"><c:set var="s_company" value="Partner: ${reseller_name}"/></c:when>
          <c:when test="${tpl_lang == 'FR'}"><c:set var="s_company" value="Partenaire: ${reseller_name}"/></c:when>
          <c:when test="${tpl_lang == 'ES'}"><c:set var="s_company" value="Partner: ${reseller_name}"/></c:when>
          <c:when test="${tpl_lang == 'DE'}"><c:set var="s_company" value="Partner: ${reseller_name}"/></c:when>
          <c:when test="${tpl_lang == 'IT'}"><c:set var="s_company" value="Partner: ${reseller_name}"/></c:when>
          <c:when test="${tpl_lang == 'PT'}"><c:set var="s_company" value="Parceiro: ${reseller_name}"/></c:when>
          <c:when test="${tpl_lang == 'TR'}"><c:set var="s_company" value="İş Ortağı / Bayi: ${reseller_name}"/></c:when>
          <c:otherwise><c:set var="s_company" value="Partner: ${reseller_name}"/></c:otherwise>
        </c:choose>

        <%-- SALES CONTACT--%>
        <%-- If named account, set to Red Hat (client.rep_name) --%>
        <x:choose>
          <x:when select="$d//acct_status [ . = 'Named Account' ]"><x:set var="s_contact" select="string($d//client/rep_name)"/></x:when>
          <x:otherwise>
            <c:choose>
              <c:when test="${tpl_lang == 'EN'}"><c:set var="s_contact" value="Red Hat: Red Hat Renewals Team"/></c:when>
              <c:when test="${tpl_lang == 'FR'}"><c:set var="s_contact" value="Red Hat: L'équipe de renouvellements Red Hat"/></c:when>
              <c:when test="${tpl_lang == 'ES'}"><c:set var="s_contact" value="Red Hat: El Equipo de Renovaciones de Red Hat"/></c:when>
              <c:when test="${tpl_lang == 'DE'}"><c:set var="s_contact" value="Red Hat: Das Red Hat Team für Verlängerungen"/></c:when>
              <c:when test="${tpl_lang == 'IT'}"><c:set var="s_contact" value="Red Hat: Team Rinnovi Red Hat"/></c:when>
              <c:when test="${tpl_lang == 'PT'}"><c:set var="s_contact" value="Red Hat: A equipa de renovações Red Hat"/></c:when>
              <c:when test="${tpl_lang == 'TR'}"><c:set var="s_contact" value="Red Hat Subscription Yenileme Ekibi"/></c:when>
              <c:otherwise><c:set var="s_contact" value="Red Hat Renewals Team"/></c:otherwise>
            </c:choose>
          </x:otherwise>
        </x:choose>

        <%-- SALES EMAIL --%>
        <%-- If named account, set to Red Hat (client.rep_email) --%>
        <x:choose>
          <x:when select="$d//acct_status [ . = 'Named Account' ]"><x:set var="s_email" select="string($d//client/rep_email)"/></x:when>
          <x:otherwise>
            <c:set var="s_email_preamble" value="Red Hat: "/>
            <c:set var="s_email" value="renewals-emea@redhat.com"/>
          </x:otherwise>
        </x:choose>

        <%-- SALES PHONE--%>  
        <%-- If named account, set to Red Hat (client.rep_tel) --%>
        <x:choose>
          <x:when select="$d//acct_status [ . = 'Named Account' ]"><x:set var="s_phone" select="string($d//client/rep_tel)"/></x:when>
          <x:otherwise>
            <c:choose>
              <c:when test="${tpl_lang == 'EN'}"><c:set var="s_phone" value="Red Hat: Free phone 00800 7334 2835 / Local 0044 1252 362 795"/></c:when>
              <c:when test="${tpl_lang == 'FR'}"><c:set var="s_phone" value="Red Hat: Appel gratuit 00800 7334 2835 / Numéro local 0044 1252 362 795"/></c:when>
              <c:when test="${tpl_lang == 'ES'}"><c:set var="s_phone" value="Red Hat: Telefono gratis 00800 7334 2835 / Local 0044 1252 362 795"/></c:when>
              <c:when test="${tpl_lang == 'DE'}"><c:set var="s_phone" value="Red Hat: Gebührenfreie Rufnummer 00800 7334 2835 / Lokal 0044 1252 362 795"/></c:when>
              <c:when test="${tpl_lang == 'IT'}"><c:set var="s_phone" value="Red Hat: Numero Verde 00800 7334 2835 / Telefono 0044 1252 362 795"/></c:when>
              <c:when test="${tpl_lang == 'PT'}"><c:set var="s_phone" value="Red Hat: ligue 00800 7334 2835 (chamada gratuita) / Local 0044 1252 362 795"/></c:when>
              <c:when test="${tpl_lang == 'TR'}"><c:set var="s_phone" value="Red Hat: Ücretsiz çağrı merkezi 00800 7334 2835 / Lokal 0044 1252 362 795"/></c:when>
              <c:otherwise><c:set var="s_phone" value=" "/></c:otherwise>
            </c:choose>
          </x:otherwise>
        </x:choose>
        <c:set var="s_phone" value=" "/>

        <%-- PARTNER TEXT--%>  
        <c:choose>
          <c:when test="${tpl_lang == 'EN'}"><c:set var="partner_text" value="your partner or"/></c:when>
          <c:when test="${tpl_lang == 'FR'}"><c:set var="partner_text" value="votre partenaire ou"/></c:when>
          <c:when test="${tpl_lang == 'ES'}"><c:set var="partner_text" value="su partner o"/></c:when>
          <c:when test="${tpl_lang == 'DE'}"><c:set var="partner_text" value="Ihren Partner oder"/></c:when>
          <c:when test="${tpl_lang == 'IT'}"><c:set var="partner_text" value="Il suo partner"/></c:when>
          <c:when test="${tpl_lang == 'PT'}"><c:set var="partner_text" value="o seu parceiro ou Red Hat"/></c:when>
          <c:when test="${tpl_lang == 'TR'}"><c:set var="partner_text" value="İş Ortağı / Bayi veya Red Hat"/></c:when>
          <c:otherwise><c:set var="partner_text" value=" "/></c:otherwise>
        </c:choose>

      <%-- END: CHANNEL = INDIRECT --%>
      </c:when>

 
      <c:when test="${tpl_channel == 'Web'}"> 
      <%-- CHANNEL = WEB Logic --%>

        <%-- SALES COMPANY --%>
        <c:set var="s_company" value=" "/>

        <%-- SALES CONTACT--%>
        <c:choose>
          <c:when test="${tpl_lang == 'EN'}"><c:set var="s_contact" value="Red Hat: Red Hat Renewals Team"/></c:when>
          <c:when test="${tpl_lang == 'FR'}"><c:set var="s_contact" value="Red Hat: L'équipe de renouvellements Red Hat"/></c:when>
          <c:when test="${tpl_lang == 'ES'}"><c:set var="s_contact" value="Red Hat: El Equipo de Renovaciones de Red Hat"/></c:when>
          <c:when test="${tpl_lang == 'DE'}"><c:set var="s_contact" value="Red Hat: Das Red Hat Team für Verlängerungen"/></c:when>
          <c:when test="${tpl_lang == 'IT'}"><c:set var="s_contact" value="Red Hat: Team Rinnovi Red Hat"/></c:when>
          <c:when test="${tpl_lang == 'PT'}"><c:set var="s_contact" value="Red Hat: A equipa de renovações Red Hat"/></c:when>
          <c:when test="${tpl_lang == 'TR'}"><c:set var="s_contact" value="Red Hat: Red Hat Subscription Yenileme Ekibi"/></c:when>
          <c:otherwise><c:set var="s_contact" value="Red Hat Renewals Team"/></c:otherwise>
        </c:choose>

        <%-- SALES EMAIL --%>
        <c:set var="s_email_preamble" value="Red Hat: "/>
        <c:set var="s_email" value="renewals-emea@redhat.com"/>

        <%-- SALES PHONE --%>  
        <c:choose>
          <c:when test="${tpl_lang == 'EN'}"><c:set var="s_phone" value="Red Hat: Free phone 00800 7334 2835 / Local 0044 1252 362 795"/></c:when>
          <c:when test="${tpl_lang == 'FR'}"><c:set var="s_phone" value="Red Hat: Appel gratuit 00800 7334 2835 / Numéro local 0044 1252 362 795"/></c:when>
          <c:when test="${tpl_lang == 'ES'}"><c:set var="s_phone" value="Red Hat: Telefono gratis 00800 7334 2835 / Local 0044 1252 362 795"/></c:when>
          <c:when test="${tpl_lang == 'DE'}"><c:set var="s_phone" value="Red Hat: Gebührenfreie Rufnummer 00800 7334 2835 / Lokal 0044 1252 362 795"/></c:when>
          <c:when test="${tpl_lang == 'IT'}"><c:set var="s_phone" value="Red Hat: Numero Verde 00800 7334 2835 / Telefono 0044 1252 362 795"/></c:when>
          <c:when test="${tpl_lang == 'PT'}"><c:set var="s_phone" value="Red Hat: ligue 00800 7334 2835 (chamada gratuita) / Local 0044 1252 362 795"/></c:when>
          <c:when test="${tpl_lang == 'TR'}"><c:set var="s_phone" value="Red Hat: Ücretsiz çağrı merkezi 00800 7334 2835 / Lokal 0044 1252 362 795"/></c:when>
          <c:otherwise><c:set var="s_phone" value=" "/></c:otherwise>
        </c:choose>
        <c:set var="s_phone" value=" "/>

        <%-- RENEW ONLINE  --%>
        <c:choose>
          <c:when test="${tpl_lang == 'EN'}"><c:set var="renew_online_preamble" value="Renew online: "/></c:when>
          <c:when test="${tpl_lang == 'FR'}"><c:set var="renew_online_preamble" value="Renouveler en ligne: "/></c:when>
          <c:when test="${tpl_lang == 'ES'}"><c:set var="renew_online_preamble" value="Renueve Online: "/></c:when>
          <c:when test="${tpl_lang == 'DE'}"><c:set var="renew_online_preamble" value="Vertragsverlängerung Online: "/></c:when>
          <c:when test="${tpl_lang == 'IT'}"><c:set var="renew_online_preamble" value="Rinnova Online: "/></c:when>
          <c:when test="${tpl_lang == 'PT'}"><c:set var="renew_online_preamble" value="Renove Online: "/></c:when>
          <c:when test="${tpl_lang == 'TR'}"><c:set var="renew_online_preamble" value="Çevrimiçi Yenileme: "/></c:when>
          <c:otherwise><c:set var="renew_online_preamble" value="Renew online:"/></c:otherwise>
        </c:choose>
        <c:set var="renew_online_url" value="http://red.ht/1lEBy5j"/>

      <%-- END: CHANNEL = WEB Logic --%>
      </c:when>

    </c:choose>
    <%-- END: Switch statement based on CHANNEL --%>

  <%-- REGION = EMEA Logic --%>
  </c:when>

</c:choose>
<%-- END: Switch statement based on REGION --%>


<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat5/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.png"/> 

<%-- DONE SETTING VARIABLES --%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="" width="660" border="0">
  <tr><td><img src="<c:out value="${rh_img}"/>"></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <c:choose>
    <c:when test="${tpl_stage == 'minus30'}"> 
      <tr><td><font face="Arial" size="2">The following Red Hat subscriptions have expired.</font></td></tr> 
    </c:when>
    <c:when test="${tpl_stage == '0'}"> 
      <tr><td><font face="Arial" size="2">The following Red Hat subscriptions expire today.</font></td></tr> 
    </c:when>
    <c:otherwise> 
      <tr><td><font face="Arial" size="2">The following Red Hat subscriptions will expire in <c:out value="${tpl_stage}"/> days.</font></td></tr>
    </c:otherwise> 
  </c:choose>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Customer Name - <x:out select="$d//customer/name"/></font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Quantity</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Product Description</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Expiration Date</font></th>
  </tr>
  <c:set var="pcount" value='0'/>
  <x:forEach select="$d/account/products/product" var="p">
    <c:choose>
      <c:when test="${pcount mod 2 == '0'}">
        <tr>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/qty"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/desc"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
            <x:set var="enddate" select="string($p/enddate)"/>
            <c:if test="${fn:length(enddate) gt 0}">
              <%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
            </c:if>
          </font></td>
        </tr>
      </c:when>
      <c:otherwise>
        <tr bgcolor="e0e0e0">
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/qty"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/desc"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
            <x:set var="enddate" select="string($p/enddate)"/>
            <c:if test="${fn:length(enddate) gt 0}">
              <%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
            </c:if>
          </font></td>
        </tr>
      </c:otherwise>
    </c:choose>
    <c:set var="pcount" value="${pcount + 1}"/>
  </x:forEach>
</table>


<table cellspacing="0" cellpadding="" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
    <c:choose>
      <c:when test="${ (tpl_region == 'EMEA') && (tpl_channel == 'Indirect') }"> 
You can renew your Red Hat Subscriptions by contacting <c:out value="${partner_text}"/> Red Hat at:
      </c:when>
      <c:otherwise>
You can renew your Red Hat Subscriptions by contacting Red Hat at:
      </c:otherwise>
    </c:choose>
  </font></td></tr> 
  <tr><td><font face="Arial" size="2">
<blockquote>
    <c:out value="${s_company}"/><br>
    <c:out value="${s_contact}"/><br>
    <c:out value="${s_email_preamble}"/>
    <a href=mailto:<c:out value="${s_email}"/>><c:out value="${s_email}"/></a>
    <c:if test="${fn:length(renew_online_url) gt 0}">
      <br>
      <c:out value="${renew_online_preamble}"/>
      <a href=<c:out value="${renew_online_url}"/>><c:out value="${renew_online_url}"/></a>
    </c:if>
</blockquote>
  </font></td></tr>
</table>


<table cellspacing="0" cellpadding="" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Your Red Hat subscriptions provide you with continuous value that helps your business every day. Only with active Red Hat subscriptions do you have access to:</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"> 
    <ul>
      <li><b>Security:  </b>Red Hat’s Security Response Team has delivered fixes for more than 98% of critical vulnerabilities within one calendar day of being identified.</li>
      <li><b>Award-winning support: </b>Red Hat’s technical support is available 24 hours a day globally, with the knowledgebase, case studies and reference architectures available via the Red Hat Customer Portal.</li>
      <li><b>Free updates and upgrades:  </b> Your subscription gives you access to any supported version of the Red Hat software, including all updates to those versions.</li>
    </ul>
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
You can learn more about the benefits of your Red Hat subscription at
<a href ="http://www.redhat.com/about/subscription">http://www.redhat.com/about/subscription</a>.</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Thank you for choosing Red Hat.</font> </td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">
    <c:out value="${s_contact}"/><br>
    <c:out value="${s_email_preamble}"/>
    <a href=mailto:<c:out value="${s_email}"/>><c:out value="${s_email}"/></a>
  </font> </td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="1"><hr></font> </td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Please have the following information available when you contact us:</font></td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Customer Name - <x:out select="$d//customer/name"/></font></td></tr> 
  <tr><td><font face="Arial" size="2">Account Number - <x:out select="$d//acct_no"/></font></td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- Only DIRECT should have PO Number column --%>
<c:choose>
  <c:when test="${tpl_channel == 'Direct'}">

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Contract<br>Number</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">PO<br>Number</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Original<br>Quantity</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Original<br>SKU </font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Original<br>Description</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">New<br>Quantity</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">New<br>SKU</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">New<br>Description</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Expiration<br>Date</font></th>
  </tr>
  <c:set var="pcount" value='0'/>
  <x:forEach select="$d/account/products/product" var="p">
    <c:choose>
      <c:when test="${pcount mod 2 == '0'}">
        <tr>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/contract_no"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/existing_po"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/qty"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/oldsku"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/desc"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/new_qty"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/sku"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/newprod"/></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
            <x:set var="enddate" select="string($p/enddate)"/>
            <c:if test="${fn:length(enddate) gt 0}">
              <%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
            </c:if>
          </font></td>
        </tr>
      </c:when>
      <c:otherwise>
        <tr bgcolor="e0e0e0">
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/contract_no"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/existing_po"/></font> </td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/qty"/> </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/oldsku"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/desc"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/new_qty"/></font> </td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/sku"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/newprod"/></font></td>
          <td align="center"><font face="Arial" style="font-size:8pt">
            <x:set var="enddate" select="string($p/enddate)"/>
            <c:if test="${fn:length(enddate) gt 0}">
              <%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
            </c:if>
          </font></td>
        </tr>
      </c:otherwise>
    </c:choose>
    <c:set var="pcount" value="${pcount + 1}"/>
  </x:forEach>
</table>

  </c:when>
  <c:otherwise>

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Contract<br>Number</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Original<br>Quantity</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Original<br>SKU </font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Original<br>Description</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">New<br>Quantity</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">New<br>SKU</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">New<br>Description</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Expiration<br>Date</font></th>
  </tr>
  <c:set var="pcount" value='0'/>
  <x:forEach select="$d/account/products/product" var="p">
    <c:choose>
      <c:when test="${pcount mod 2 == '0'}">
        <tr>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/contract_no"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/qty"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/oldsku"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/desc"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/new_qty"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/sku"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/newprod"/></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt">
            <x:set var="enddate" select="string($p/enddate)"/>
            <c:if test="${fn:length(enddate) gt 0}">
              <%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
            </c:if>
          </font></td>
        </tr>
      </c:when>
      <c:otherwise>
        <tr bgcolor="e0e0e0">
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/contract_no"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/qty"/> </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/oldsku"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/desc"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/new_qty"/></font> </td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/sku"/></font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/newprod"/></font></td>
          <td align="center"><font face="Arial" style="font-size:8pt">
            <x:set var="enddate" select="string($p/enddate)"/>
            <c:if test="${fn:length(enddate) gt 0}">
              <%= nexstra.cds.servlet.TemplateTags.reformatDate( pageContext , "enddate", "yyyyMMdd" , "dd MMM, yyyy") %>
            </c:if>
          </font></td>
        </tr>
      </c:otherwise>
    </c:choose>
    <c:set var="pcount" value="${pcount + 1}"/>
  </x:forEach>
</table>

  </c:otherwise>
</c:choose>


<table cellspacing="0" cellpadding="" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="1">
© 2013 Red Hat, Inc. All Rights Reserved. Red Hat, Red Hat Enterprise Linux, the Shadowman logo, and JBoss are trademarks of Red Hat, Inc., registered in the U.S. and other countries. Linux® is the registered trademark of Linus Torvalds in the U.S. and other countries. All other trademarks are the property of their respective owners.
  </font> </td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>