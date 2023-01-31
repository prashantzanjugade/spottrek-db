-- Verify spottrek:master.client_contact on pg

BEGIN;

select
  id,
  client_id,
  client_contact_type, -- mail authority, manager, spoc, etc
  name,
  designation,
  email,
  mobile,
  created_on 
from master.client_contact
where false;

ROLLBACK;
