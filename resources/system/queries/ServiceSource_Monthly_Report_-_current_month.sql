select `client`.`name` as 'Client Name', `campaign`.`name` as 'Campaign Name', `campaign`.`status` as 'Campaign Status', 
ifnull(all_elem, 0) as 'Total Members', ifnull(new_elem, 0) as 'New Members (added this month)', monthname(now()) as 'Report Month' , year(now()) as 'Report Year'
from `campaign`
join `client` on `campaign`.`client_id` = `client`.`client_id`
join `partners` on `partners`.`partner_id` = `client`.`partner_id`
left join
(select `campaign_dist_elem`.`campaign_id`, COUNT(`campaign_dist_elem`.`campaign_id`) as all_elem
from `campaign_dist_elem`
where `campaign_dist_elem`.`ctime` <= NOW()
and `campaign_dist_elem`.`active` = 1
group by `campaign_dist_elem`.`campaign_id`) as cde1
on cde1.`campaign_id` = `campaign`.`campaign_id`
left join
(select `campaign_dist_elem`.`campaign_id`, COUNT(`campaign_dist_elem`.`campaign_id`) as new_elem
from `campaign_dist_elem`
where `campaign_dist_elem`.`ctime` >= DATE_SUB( NOW() , INTERVAL 30 DAY )
and `campaign_dist_elem`.`active` = 1
group by `campaign_dist_elem`.`campaign_id`) as cde
on cde.`campaign_id` = `campaign`.`campaign_id`
where `partners`.`partner_id` = 4
and `campaign`.`testmode` = 0