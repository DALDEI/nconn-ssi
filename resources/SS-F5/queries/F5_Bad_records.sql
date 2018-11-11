select item as 'Account Number', data as 'End User', type as 'Reason' from client_list_item
where client_list_item.client_list_id = 30
and client_list_item.campaign_id = :campaign_id
and date(mtime) = curdate()