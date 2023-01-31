-- Deploy spottrek:master.advertiser to pg

BEGIN;

create table master.advertiser (
	  advertiser text,
	  advertisercode integer,
	  advertisinggroupcode integer,
	  created_on timestamp default current_timestamp,
	  primary key (advertisercode),
	  foreign key (advertisinggroupcode) references master.advertisinggroup (advertisinggroupcode)
);

COMMIT;
