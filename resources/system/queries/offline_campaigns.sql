SELECT campaign.name as 'Campaign Name', client.name as 'Client' from campaign 
join client using (client_id) where
client_id in (38,40,43) and
testmode = 0 and
status = 'OFFLINE'