<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page contentType="text/html; charset=UTF-8"%>
<fmt:setLocale value="en-US" />

<%-- This is the entire XML structure for the opportunity record --%>
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
<x:set var="ssirep_name"     select="string($d//ssirep/name)"/>

<%-- Basic structure is REGION, then CHANNEL  --%>
<%-- 5 REGIONS = APAC/Japan, APAC/all others, NALA/NA, NALA/LATAM, EMEA --%>
<%-- 3 CHANNELS = Direct, Indirect, and Web --%>

<%-- Template variables --%>
<c:set var="s_company"                  value=""/>
<c:set var="s_company_preamble"   value=""/>
<c:set var="s_contact"                     value=""/>
<c:set var="s_email"                        value=""/>
<c:set var="s_email_preamble"         value=""/>
<c:set var="s_phone"                       value=""/>
<c:set var="main_s_phone"              value=""/>
<c:set var="renew_online_preamble" value=""/>
<c:set var="renew_online_url"           value=""/>
<c:set var="partner_text"                   value=""/>

<%-- NOTE: Need to use variable for Lao because of single quote in country name. --%>
<%-- Not used anymore, but leaving in case country table used again. --%>
<c:set var="country_Loa" value="Lao People's Democratic Republic"/>


<%-- Switch statement based on REGION --%>
<c:choose>
  <c:when test="${ (tpl_region == 'APAC') && (country == 'Japan') }"> 
  <%-- REGION = APAC + COUNTRY = JAPAN Logic --%>

    <%-- SALES COMPANY --%>
    <c:set var="s_company" value=""/>

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
        <c:set var="s_company" value=""/>

        <%-- SALES CONTACT --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]">
            <x:set var="s_contact" select="string($d//ssirep/name)"/>
          </x:when>
          <x:otherwise>
            <x:set var="s_contact" select="string($d//client/rep_name)"/>
          </x:otherwise>
        </x:choose>

        <%-- SALES EMAIL --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]">
            <x:set var="s_email" select="string($d//ssirep/email)"/>
          </x:when>
          <x:otherwise>
            <x:set var="s_email" select="string($d//client/rep_email)"/>
            <c:choose>
              <c:when test="${tpl_lang == 'KO'}">
                <c:set var="s_email" value="buy-kr@redhat.com"/>
              </c:when>
              <c:otherwise></c:otherwise>
            </c:choose>
          </x:otherwise>
        </x:choose>

        <%-- SALES PHONE --%>
        <c:set var="s_phone" value=""/>

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
          <c:otherwise>
            <c:set var="s_contact" value="Red Hat Renewals Team"/>
          </c:otherwise>
        </c:choose>

        <%-- SALES EMAIL --%>
        <c:set var="s_email" value="renewal-apac-partners@redhat.com"/>
  
        <%-- SALES PHONE --%>
        <c:set var="s_phone" value=""/>

      <%-- END: CHANNEL = INDIRECT --%>
      </c:when>  


      <c:when test="${tpl_channel == 'Web'}"> 
      <%-- CHANNEL = WEB (E-COMMERCE) Logic --%>

        <%-- SALES COMPANY--%>
        <c:set var="s_company" value=""/>

        <%-- SALES CONTACT --%>
        <c:choose>
          <c:when test="${tpl_lang == 'EN'}"><c:set var="s_contact" value="Red Hat Renewals Team"/></c:when>
          <c:when test="${tpl_lang == 'KO'}"><c:set var="s_contact" value="The Red Hat 리뉴얼 팀"/></c:when>
          <c:when test="${tpl_lang == 'ZH'}"><c:set var="s_contact" value="红帽续约团队"/></c:when>
          <c:otherwise>
            <c:set var="s_contact" value="Red Hat Renewals Team"/>
          </c:otherwise>
        </c:choose>

        <%-- SALES EMAIL --%>
        <c:set var="s_email" value="renewal-apac-partners@redhat.com"/>

        <%-- SALES PHONE --%>
        <c:set var="s_phone" value=""/>

      </c:when>
    </c:choose>

  </c:when>


  <c:when test="${ (tpl_region == 'NALA') && (region == 'LATAM') }"> 
  <%-- REGION = NALA + LATAM Logic --%>
  <%-- NOTE: CHANNEL appears to be always DIRECT, so no CHANNEL logic. --%>

    <%-- SALES COMPANY--%>
    <x:choose>
      <x:when select="$d//subbatch [ . = 'Red Hat' ]">
        <c:set var="s_company" value="Red Hat"/>
      </x:when>
      <x:otherwise>
       <c:set var="s_company" value=""/>
      </x:otherwise>
    </x:choose>

   <%-- SALES CONTACT --%>
    <x:choose>
      <x:when select="$d//subbatch [ . = 'Red Hat' ]">
        <x:choose>
          <x:when select="$d//lang [ . = 'PB' ]">
            <c:set var="s_contact" value="equipe de Renovações"/>
          </x:when>
          <x:otherwise>
            <c:set var="s_contact"  value="El Equipo de Renovaciones de Red Hat"/>
          </x:otherwise>
        </x:choose>
      </x:when>

      <x:when select="$d//subbatch [ . = 'ServiceSource' ]">
        <x:set var="s_contact" select="string($d//ssirep/name)"/>
      </x:when>

      <x:otherwise>
       <c:set var="s_contact"  value=""/>
      </x:otherwise>
    </x:choose>

    <%-- SALES EMAIL --%>
    <x:choose>
      <x:when select="$d//subbatch [ . = 'Red Hat' ]">
        <x:choose>
          <x:when select="$d//lang [ . = 'PB' ]">
            <c:set var="s_email" value="renovacoes@redhat.com"/>
          </x:when>
          <x:otherwise>
            <x:set var="s_email" select="string($d//client/rep_email)"/>
          </x:otherwise>
        </x:choose>
      </x:when>

      <x:when select="$d//subbatch [ . = 'ServiceSource' ]">
        <x:choose>
          <x:when select="$d//country [ . = 'Brazil' ]">
            <c:set var="s_email" value="renovacoes@redhat.com"/>
          </x:when>
          <x:otherwise>
            <x:set var="s_contact" select="string($d//ssirep/email)"/>
          </x:otherwise>
        </x:choose>
      </x:when>
    </x:choose>

    <%-- SALES PHONE --%>
    <x:choose>
      <x:when select="$d//subbatch [ . = 'Red Hat' ]">
        <x:choose>
          <x:when select="$d//lang [ . = 'PB' ]">
            <c:set var="s_phone" value="11 3529 6000"/>
          </x:when>
          <x:otherwise>
            <c:set var="s_phone" value=" "/>
          </x:otherwise>
        </x:choose>
      </x:when>

      <x:when select="$d//subbatch [ . = 'ServiceSource' ]">
        <x:choose>
          <x:when select="$d//lang [ . = 'PB' ]">
            <c:set var="s_phone" value="11 3529 6000"/>
          </x:when>
          <x:otherwise>
            <c:set var="s_phone" value=" "/>
          </x:otherwise>
        </x:choose>
      </x:when>
    </x:choose>

    <%-- MAIN SALES PHONE --%>
    <c:set var="main_s_phone" value=""/>

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
        <c:set var="s_company" value=""/>

        <%-- SALES CONTACT --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_contact" select="string

($d//ssirep/name)"/></x:when>
          <x:otherwise><x:set var="s_contact" select="string($d//client/rep_name)"/></x:otherwise>
        </x:choose>

        <%-- SALES EMAIL --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_email" select="string

($d//ssirep/email)"/></x:when>
          <x:otherwise><x:set var="s_email" select="string($d//client/rep_email)"/></x:otherwise>
        </x:choose>

        <%-- SALES PHONE --%>
        <c:set var="s_phone" value=""/>

      <%-- END: CHANNEL = DIRECT --%>
      </c:when>

      <c:when test="${tpl_channel == 'Indirect'}"> 
      <%-- CHANNEL = INDIRECT Logic --%>

        <%-- SALES COMPANY--%>
        <%-- CHANGE: Added s_company_preamble --%>
        <c:set var="s_company_preamble" value="Partner: "/>
        <x:set var="s_company" select="string($d//reseller/name)"/>

        <%-- SALES CONTACT --%>
        <c:set var="s_contact" value="Red Hat Partner Team"/>

        <%-- SALES EMAIL --%>
        <c:set var="s_email" value="renewals@redhat.com"/>

        <%-- SALES PHONE --%>
        <c:set var="s_phone" value=""/>

        <%-- ROUTING LOGIC / RENEW_ONLINE --%>
        <c:set var="renew_online_preamble" value="You can also find your Partner’s contact information using our Partner 

Locator, here: "/>
        <c:set var="renew_online_url" value="http://redhat.force.com/finder/"/>

      </c:when>

      <c:when test="${tpl_channel == 'Web'}"> 
      <%-- CHANNEL = WEB Logic --%>

        <%-- SALES COMPANY--%>
        <c:set var="s_company" value=""/>

        <%-- SALES CONTACT --%>
        <c:set var="s_contact" value="Red Hat Renewals Team"/>
   
        <%-- SALES EMAIL --%>
        <c:set var="s_email" value="renewals@redhat.com"/>

        <%-- SALES PHONE --%>
        <c:set var="s_phone" value=""/>

        <%-- ROUTING LOGIC / RENEW_ONLINE --%>
        <c:set var="renew_online_preamble" value="You can renew your subscription online by visiting the Red Hat Customer 

Portal subscription management tool at "/>
        <c:set var="renew_online_url" value="http://access.redhat.com/management/subscriptions/expiring"/>

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
        <c:set var="s_company" value=""/>

        <%-- SALES CONTACT --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_contact" select="string

($d//ssirep/name)"/></x:when>
          <x:otherwise><x:set var="s_contact" select="string($d//client/rep_name)"/></x:otherwise>
        </x:choose>

        <%-- SALES EMAIL --%>
        <x:choose>
          <x:when select="$d//subbatch [ . = 'ServiceSource' ]"><x:set var="s_email" select="string

($d//ssirep/email)"/></x:when>
          <x:otherwise><x:set var="s_email" select="string($d//client/rep_email)"/></x:otherwise>
        </x:choose>

        <%-- SALES PHONE --%>  
        <c:set var="s_phone" value=""/>

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
          <x:when select="$d//acct_status [ . = 'Named Account' ]"><x:set var="s_contact" select="string

($d//client/rep_name)"/></x:when>
          <x:otherwise>
            <c:choose>
              <c:when test="${tpl_lang == 'EN'}"><c:set var="s_contact" value="Red Hat: Red Hat Renewals Team"/></c:when>
              <c:when test="${tpl_lang == 'FR'}"><c:set var="s_contact" value="Red Hat: L'équipe de renouvellements Red 

Hat"/></c:when>
              <c:when test="${tpl_lang == 'ES'}"><c:set var="s_contact" value="Red Hat: El Equipo de Renovaciones de Red 

Hat"/></c:when>
              <c:when test="${tpl_lang == 'DE'}"><c:set var="s_contact" value="Red Hat: Das Red Hat Team für 

Verlängerungen"/></c:when>
              <c:when test="${tpl_lang == 'IT'}"><c:set var="s_contact" value="Red Hat: Team Rinnovi Red Hat"/></c:when>
              <c:when test="${tpl_lang == 'PT'}"><c:set var="s_contact" value="Red Hat: A equipa de renovações Red 

Hat"/></c:when>
              <c:when test="${tpl_lang == 'TR'}"><c:set var="s_contact" value="Red Hat Subscription Yenileme Ekibi"/></c:when>
              <c:otherwise><c:set var="s_contact" value="Red Hat Renewals Team"/></c:otherwise>
            </c:choose>
          </x:otherwise>
        </x:choose>

        <%-- SALES EMAIL --%>
        <%-- If named account, set to Red Hat (client.rep_email) --%>
        <x:choose>
          <x:when select="$d//acct_status [ . = 'Named Account' ]"><x:set var="s_email" select="string

($d//client/rep_email)"/></x:when>
          <x:otherwise>
            <c:set var="s_email_preamble" value="Red Hat: "/>
            <c:set var="s_email" value="renewals-emea@redhat.com"/>
          </x:otherwise>
        </x:choose>

        <%-- SALES PHONE--%>  
        <c:set var="s_phone" value=""/>

        <%-- PARTNER TEXT--%>  
        <c:choose>
          <c:when test="${tpl_lang == 'EN'}"><c:set var="partner_text" value="your partner or"/></c:when>
          <c:when test="${tpl_lang == 'FR'}"><c:set var="partner_text" value="votre partenaire ou"/></c:when>
          <c:when test="${tpl_lang == 'ES'}"><c:set var="partner_text" value="su partner o"/></c:when>
          <c:when test="${tpl_lang == 'DE'}"><c:set var="partner_text" value="Ihren Partner oder"/></c:when>
          <c:when test="${tpl_lang == 'IT'}"><c:set var="partner_text" value="Il suo partner"/></c:when>
          <c:when test="${tpl_lang == 'PT'}"><c:set var="partner_text" value="o seu parceiro ou"/></c:when>
          <c:when test="${tpl_lang == 'TR'}"><c:set var="partner_text" value="İş Ortağı / Bayi veya"/></c:when>
          <c:otherwise><c:set var="partner_text" value=""/></c:otherwise>
        </c:choose>

        <%-- ROUTE LOGIC / RENEW ONLINE --%>
        <c:choose>
          <c:when test="${tpl_lang == 'EN'}">
            <c:set var="renew_online_preamble" value="You can also find your Partner’s contact information using our Partner 
Locator, here: "/>
            <c:set var="renew_online_url" value="http://redhat.force.com/finder/"/>
          </c:when>
          <c:otherwise>
            <c:set var="renew_online_preamble" value=""/>
            <c:set var="renew_online_url" value=""/>
          </c:otherwise>
        </c:choose>

      <%-- END: CHANNEL = INDIRECT --%>
      </c:when>

 
      <c:when test="${tpl_channel == 'Web'}"> 
      <%-- CHANNEL = WEB Logic --%>

        <%-- SALES COMPANY --%>
        <c:set var="s_company" value=""/>

        <%-- SALES CONTACT--%>
        <c:choose>
          <c:when test="${tpl_lang == 'EN'}"><c:set var="s_contact" value="Red Hat: Red Hat Renewals Team"/></c:when>
          <c:when test="${tpl_lang == 'FR'}"><c:set var="s_contact" value="Red Hat: L'équipe de renouvellements Red 

Hat"/></c:when>
          <c:when test="${tpl_lang == 'ES'}"><c:set var="s_contact" value="Red Hat: El Equipo de Renovaciones de Red 

Hat"/></c:when>
          <c:when test="${tpl_lang == 'DE'}"><c:set var="s_contact" value="Red Hat: Das Red Hat Team für 

Verlängerungen"/></c:when>
          <c:when test="${tpl_lang == 'IT'}"><c:set var="s_contact" value="Red Hat: Team Rinnovi Red Hat"/></c:when>
          <c:when test="${tpl_lang == 'PT'}"><c:set var="s_contact" value="Red Hat: A equipa de renovações Red 

Hat"/></c:when>
          <c:when test="${tpl_lang == 'TR'}"><c:set var="s_contact" value="Red Hat: Red Hat Subscription Yenileme 

Ekibi"/></c:when>
          <c:otherwise><c:set var="s_contact" value="Red Hat Renewals Team"/></c:otherwise>
        </c:choose>

        <%-- SALES EMAIL --%>
        <c:set var="s_email_preamble" value="Red Hat: "/>
        <c:set var="s_email" value="renewals-emea@redhat.com"/>

        <%-- SALES PHONE --%>  
        <c:set var="s_phone" value=""/>

        <%-- ROUTING LOGIC / RENEW ONLINE  --%>
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

  <%-- END: REGION = EMEA Logic --%>
  </c:when>

</c:choose>
<%-- END: Switch statement based on REGION --%>


<c:set var="rh_img" value="https://nexstra-com-resources.s3.amazonaws.com/cds/ssi/images/redhat6/Rh_banner_${tpl_vals[2]}_${tpl_vals[3]}.png"/> 

<%-- DONE SETTING VARIABLES --%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<title>${values.subject}</title>
</head>

<body>

<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><img src="<c:out value="${rh_img}"/>"></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">Prezado(a) cliente,</font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <c:choose>
    <c:when test="${tpl_stage == 'minus30'}"> 
      <tr><td><font face="Arial" size="2">Suas subscrições Red Hat listadas abaixo já estão expiradas há 30 

dias.</font></td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Não deixe suas aplicações de negócio sem cobertura e sem suporte.</font></td></tr>
    </c:when>
    <c:when test="${tpl_stage == '0'}"> 
      <tr><td><font face="Arial" size="2">Suas subscrições Red Hat listadas abaixo estão vencendo hoje.</font></td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Não deixe suas aplicações de negócio sem cobertura e sem suporte.</font></td></tr>
    </c:when>
    <c:otherwise> 
      <tr><td><font face="Arial" size="2">Suas subscrições Red Hat listadas abaixo vencerão em <c:out 

value="${tpl_stage}"/> dias.</font></td></tr>
    </c:otherwise> 
  </c:choose>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
O processo de renovação é  muito simples. Ligue para 
<c:out value="${s_phone}"/>, 
e peça para falar com a 
<c:out value="${s_contact}"/>, 
ou entre em contato através do e-Mail 
<a href=mailto:<c:out value="${s_email}"/>><c:out value="${s_email}"/></a>.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Se você é atendido diretamente por um gerente de conta, peça que ele providencie a sua renovação.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>

<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">Cliente: <x:out select="$d//customer/name"/></font></td></tr>
</table>

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Quantidade</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Descrição do produto</font></th>
    <th align="center" valign="center"><font face="Arial" size="2" color="ffffff">Data de vencimento</font></th>
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


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2"><b>Por que renovar?</b></font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Para que as aplicações importantes para o seu negócio continuem contando com a 
segurança, confiabilidade, manutenção e suporte da sua tecnologia open source Red Hat.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
A sua subscrição inclue: Suporte, Assessoria Técnica, Correções e Atualizações, 
Upgrades e Novas Funcionalidades, Acesso à biblioteca de software da Red Hat, 
Base de Conhecimento, Ferramentas de Configuração (Red Hat Labs), e Proteção Legal.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Se suas aplicações não podem deixar de funcionar, a melhor escolha é considerar 
a subscrição Red Hat. 
É muito mais eficiente que usar seu próprio tempo para atualizar sistemas, procurar 
vulnerabilidades, prevenir e remediar problemas.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
Consulte nossa página de Renovações em 
<a href="http://www.redhat.com/pt-br/about/subscription">http://www.redhat.com/pt-br/about/subscription</a>. 
Você irá encontrar tudo o que precisa saber sobre esse processo.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
É um prazer tê-lo como nosso cliente! Obrigado por escolher a Red Hat.
  </font></td></tr>
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="2">
    <c:out value="${s_contact}"/><br>
    <c:out value="${s_email_preamble}"/>
    <a href=mailto:<c:out value="${s_email}"/>><c:out value="${s_email}"/></a>
  </font> </td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>

  <tr><td><font face="Arial" size="1"><hr></font> </td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">
Para facilitar o seu processo tenha disponível com você as seguintes informações:
  </font></td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="2">Nome do cliente - <x:out select="$d//customer/name"/></font> </td></tr> 
  <tr><td><font face="Arial" size="2">Número da conta - <x:out select="$d//acct_no"/></font> </td></tr> 
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
</table>


<%-- Only DIRECT should have PO Number column --%>
<c:choose>
  <c:when test="${tpl_channel == 'Direct'}">

<table width=660 cellspacing="0" cellpadding="5" indent=30  border="0" >
  <tr bgcolor="CC0000">
    <th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Número do contrato</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Número da ordem de compra</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Quantidade original</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">SKU original</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Descrição original</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nova quantidade</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nova SKU</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nova descrição</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Data de vencimento</font></th>
  </tr>
  <c:set var="pcount" value='0'/>
  <x:forEach select="$d/account/products/product" var="p">
    <c:choose>
      <c:when test="${pcount mod 2 == '0'}">
        <tr>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/contract_no"/> 

</font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/existing_po"/> </font> 

</td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/qty"/> </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/oldsku"/>  </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/desc"/> </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/new_qty"/> </font> </td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/sku"/> </font> </td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/newprod"/>  </td>
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
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/contract_no"/> 

</font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/existing_po"/> </font> 

</td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/qty"/> </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/oldsku"/>  </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/desc"/> </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/new_qty"/> </font> </td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/sku"/> </font> </td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/newprod"/>  </td>
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
    <th  align="Center" valign="center"><font face="Arial" size="2" color="ffffff">Número do contrato</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Quantidade original</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">SKU original</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Descrição original</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nova quantidade</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nova SKU</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Nova descrição</font></th>
    <th  align="center" valign="center"><font face="Arial" size="2" color="ffffff">Data de vencimento</font></th>
  </tr>
  <c:set var="pcount" value='0'/>
  <x:forEach select="$d/account/products/product" var="p">
    <c:choose>
      <c:when test="${pcount mod 2 == '0'}">
        <tr>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/contract_no"/> 

</font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/qty"/> </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/oldsku"/>  </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/desc"/> </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/new_qty"/> </font> </td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/sku"/> </font> </td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/newprod"/>  </td>
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
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/contract_no"/> 

</font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/qty"/> </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/oldsku"/>  </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/desc"/> </font></td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/new_qty"/> </font> </td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/sku"/> </font> </td>
          <td align="center" valign="center"><font face="Arial" style="font-size:8pt"><x:out select="$p/newprod"/>  </td>
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


<table cellspacing="0" cellpadding="0" width="660" border="0">
  <tr><td><font face="Arial" size="2">&nbsp;</font></td></tr>
  <tr><td><font face="Arial" size="1">
© 2015 Red Hat, Inc. Todos os direitos reservados. Red Hat, Red Hat Enterprise Linux, o logotipo Shadowman e JBoss 

são marcas registradas da Red Hat, Inc., nos EUA e em outros países. Linux® é a marca registrada da Linus Torvalds nos 

EUA e em outros países. Todas as outras marcas são de propriedade de seus respectivos proprietários.
  </font> </td></tr> 
</table>




</body>
<%=nexstra.cds.servlet.TemplateTags.getOpenEmailImage( request , pageContext ) %>
</html>