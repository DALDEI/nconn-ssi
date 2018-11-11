select detail as 'E-mail address', event_dt as 'Bounce time', value3 as 'Customer ID' from event_log
join campaign_dist_elem using (campaign_dist_elem_id)
join dist_elem_item using (dist_elem_id)
where event_log.campaign_id=:campaign_id
and event='BouncedEmail'
and event_dt >= :start_date 
and event_dt < :end_date