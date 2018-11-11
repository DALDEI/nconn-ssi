select connector_log.log_data from `connector_log`
join connectors on (`connector_log`.`connector_id` = `connectors`.`connector_id`)
join `client` on (`connectors`.`client_id` = `client`.`client_id`)
where `client`.`client_id` = :client_id
and `connector_log`.`start_dt` >= CURDATE()
and `connector_log`.`end_dt` < CURDATE() + INTERVAL 1 DAY
and `connector_log`.`log_data` like '%Illegal%'