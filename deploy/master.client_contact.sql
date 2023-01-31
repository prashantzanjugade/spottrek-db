-- Deploy spottrek:master.client_contact to pg

BEGIN;

create table master.client_contact (
	  id bigserial,
	  client_id integer not null,
	  client_contact_type integer not null, -- mail authority, manager, spoc, etc
	  name varchar(100) not null,
	  designation varchar(100),
	  email varchar(50) not null,
	  mobile varchar(15),
	  created_on timestamp default now(),
	  primary key (id),
	  foreign key (client_id) references master.client(id)
);

comment on column master.client_contact.client_contact_type is '1 for Mail Authority, 2 for Manager, 3 for SPOC, 4 for Other';

COMMIT;
