select item as 'Radar Account Number', client_list_item.data as 'Renewal ID', comment as 'Reason' from client_list_item
join dist_elem on (client_list_item.item = dist_elem.id)
where client_list_item.client_list_id = 25
and client_list_item.campaign_id = :campaign_id
and date(dist_elem.ctime) = curdate()