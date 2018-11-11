select id, campaign.name, campaign.client_id, last_run_dt from campaign_dist_elem
join dist_elem using (dist_elem_id)
join campaign using (campaign_id)
where campaign_state_status = 'ERROR'
and date(last_run_dt) = date(NOW())
