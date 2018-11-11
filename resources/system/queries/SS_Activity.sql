select
dist_message_event.dist_message_event_id AS 'MESSAGE_ID',
dist_elem.id as 'ACCOUNT_NUMBER',
campaign.name as 'CAMPAIGN_NAME',
CAST( dist_message_event.event_dt AS DATETIME ) as 'TIMESTAMP',
dist_method.name as 'ACTIVITY_TYPE',
dist_method_event.name as 'ACTIVITY',
dist_message.tag as 'ACTIVITY_IDENTIFIER',
dist_message_event.detail as 'ACTIVITY_DETAILS'
FROM dist_message_event
JOIN dist_message USING( dist_message_id )
JOIN dist_method_event ON( dist_message_event.dist_method_event_id  = dist_method_event.dist_method_event_id )
JOIN dist_elem ON( dist_message.dist_elem_id = dist_elem.dist_elem_id )
JOIN campaign ON( dist_message.campaign_id = campaign.campaign_id )
JOIN dist_method ON( dist_message.`dist_method_id` = dist_method.dist_method_id )
WHERE dist_message.campaign_id = :campaign_id
ORDER BY dist_message_event.event_dt ASC
