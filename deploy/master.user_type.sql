-- Deploy spottrek:master.user_type to pg

BEGIN;

create table master.user_type (
	  id serial,
	  name varchar(100) not null,
	  remarks text,
	  created_on timestamp default now(),
	  primary key (id)
);

insert into master.user_type(name) values ('Super Admin'),('Admin'),('Manager'),('BARC Operations'),('Agency Admin'),('Agency End User'),('Broadcaster Admin'),('Broadcaster End User'),('Advertiser Admin'),('Advertiser End User'),('Other Admin'),('Other End User');

COMMIT;
