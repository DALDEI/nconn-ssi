select max(campaign_activity.active_elem) as 'Max Active Elements During Month' from campaign_activity, partners, client, campaign
where partners.code = :Partner
and client.name = :Client
and client.partner_id = partners.partner_id
and campaign.name = :Campaign_name
and campaign.client_id = client.client_id
and campaign.campaign_id = campaign_activity.campaign_id
and MONTH(campaign_activity.activity_dt) = :Month
and year(campaign_activity.activity_dt) = :Year