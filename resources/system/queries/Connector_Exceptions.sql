select distinct `client`.`name` as 'Client Name', connectors.name as 'Importer Name', SUBSTRING_INDEX(`connectors`.`log_data`,'/',-1) as 'File Name'
from `connectors`
join `client` on `connectors`.`client_id` = `client`.`client_id`
where `connectors`.`log_data` like '%Exception%'
and `connectors`.`connector_type_id` in (13,16)
and `connectors`.`run_type` = 'EVERY' 