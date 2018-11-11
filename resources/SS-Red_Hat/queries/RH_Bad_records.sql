select item as 'Message ID', data as 'Input Data', type as 'Reason', comment as 'Opp ID' from client_list_item
where client_list_item.client_list_id = 36
and client_list_item.campaign_id = :campaign_id
and date(SUBSTRING_INDEX(item,'_',1)) = DATE_SUB(CURDATE(), INTERVAL 1 DAY)