SELECT sent_dt as "Date Sent" , 
    de.`id` as 'Message ID' , 
   address as 'Email Addr' , 
  CONCAT('https://ssi.nexstra.com/cds/data:campaign_id' , 
   TO_BASE64( CONCAT('mi=', dist_message_id)))  as 'Message Link'

FROM  dist_message as dm  
JOIN dist_elem as de USING( dist_elem_id ) 
WHERE dm.`campaign_id`  = :_2
AND dm.`sent_dt` > DATE_SUB(NOW(), INTERVAL 24 HOUR)