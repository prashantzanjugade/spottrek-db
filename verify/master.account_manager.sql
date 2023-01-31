-- Verify spottrek:master.account_manager on pg

BEGIN;

select
	id,
	name,
	designation,
	mobile,
	status,
	created_on
from master.account_manager
where false;

ROLLBACK;
