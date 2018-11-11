select item as 'Record ID', data as 'Input Data', comment as 'Reason' from client_list_item
where client_list_item.client_list_id = :client_list_id
and client_list_item.campaign_id = :campaign_id
and date(mtime) = curdate()