SELECT 
  campaign.name AS Campaign,
  dist_method.name AS `Message Type`,
  count( distinct dist_message.dist_elem_id) as 'Distinct Contacts',  
  count( distinct dist_message.dist_message_id) AS Messages,
  count( IF(dist_method_event.name = 'open',1,NULL)) as 'Emails Opened Count' ,
  count( IF(dist_method_event.name = 'bounce',1,NULL)) as 'Emails Bounced Count' 
  
FROM
  dist_message
  INNER JOIN dist_method ON (dist_message.dist_method_id = dist_method.dist_method_id)
  INNER JOIN dist_message_event ON (dist_message.dist_message_id = dist_message_event.dist_message_id)
  INNER JOIN campaign ON (dist_message.campaign_id = campaign.campaign_id AND campaign.testmode = 0 )
  INNER JOIN dist_method_event ON (dist_message_event.dist_method_event_id = dist_method_event.dist_method_event_id)
WHERE campaign.campaign_id = :campaign_id
GROUP BY
  dist_method.dist_method_id