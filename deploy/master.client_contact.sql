-- Deploy spottrek:master.client_contact to pg

BEGIN;

create table master.client_contact (
	  id serial,
	  client_id integer not null,
	  client_contact_type integer not null, -- mail authority, manager, spoc, etc
	  name varchar(100) not null,
	  designation varchar(100),
	  email varchar(100) not null,
	  mobile varchar(15),
	  created_on timestamp default now(),
	  primary key (id),
	  foreign key (client_id) references master.client(id)
);

comment on column master.client_contact.client_contact_type is '1 for Mail Authority, 2 for Business, 3 for Management, 4 for Media, 5 for SPOC, 6 for Technical';

COMMIT;
