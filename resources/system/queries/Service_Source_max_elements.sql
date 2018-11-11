select * from (select client.name as 'Client', `campaign`.`name` as 'Campaign', `campaign_activity`.`active_elem` as 'Max Active Elements'  
from `campaign_activity`, campaign, partners, client
where partners.code = 'SS'
and client.partner_id = partners.partner_id
and MONTH(campaign_activity.activity_dt) = :Month
and year(campaign_activity.activity_dt) = :Year
and `campaign_activity`.`campaign_id` = `campaign`.`campaign_id`
and `campaign`.`status` = 'ONLINE'
and `campaign`.`testmode` = 0
and `campaign`.`client_id` = `client`.`client_id`
order by `campaign_activity`.`active_elem` DESC) as c
group by c.Client, c.Campaign