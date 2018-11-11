select item as 'Message ID', type as 'Reason', client_list_item.data as 'Value', comment as 'Opp ID' from client_list_item
join dist_elem on (client_list_item.item = dist_elem.id)
where client_list_item.client_list_id = 23
and client_list_item.campaign_id = :campaign_id
and date(dist_elem.ctime) = :date