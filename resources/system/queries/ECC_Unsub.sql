select item as 'Email Addr' from client_list_item
where client_list_item.client_list_id = :client_list_id
and client_list_item.campaign_id = :campaign_id
and date(mtime) = curdate()