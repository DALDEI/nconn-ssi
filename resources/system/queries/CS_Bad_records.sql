select item as 'List ID', data as 'Input Data', comment as 'Reason' from client_list_item
where client_list_item.client_list_id = 33
and client_list_item.campaign_id = :campaign_id
and date(mtime) = curdate()