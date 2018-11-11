select `event_log`.`event_dt` as 'Date Sent', 
replace(substring(substring_index(`event_log`.`detail`, '|', 2), length(substring_index(`event_log`.`detail`, '|', 2 - 1)) + 1), '|', '') as 'Message ID',
replace(substring(substring_index(`event_log`.`detail`, '|', 4), length(substring_index(`event_log`.`detail`, '|', 4 - 1)) + 1), '|', '') as 'Template ID',
replace(substring(substring_index(`event_log`.`detail`, '|', 5), length(substring_index(`event_log`.`detail`, '|', 5 - 1)) + 1), '|', '') as 'Message Link'
from `event_log`
where `event_log`.`campaign_id` = :campaign_id
and SUBSTRING_INDEX(`event_log`.`detail`, '|', 1) = 'url'
and date(`event_log`.`event_dt`) > date_sub(curdate(), interval 7 day)