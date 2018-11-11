select count(*), b.name,monthname(ctime) from campaign_dist_elem a , campaign b where 
a.campaign_id=b.campaign_id and a.campaign_id in (151,163,164,165,166,167,168,169,170)
 and  year(ctime)=2018 and campaign_state_status='RUNNING'
 group by a.campaign_id, month(ctime);