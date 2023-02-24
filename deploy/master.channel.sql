-- Deploy spottrek:master.channel to pg

BEGIN;

create table master.channel (
	  channel text,
	  channelcode integer,
	  networkcode integer,
	  contentlanguagecode integer,
	  regioncode integer,
	  genrecode integer,
	  genre text,
	  created_on timestamp default current_timestamp,
	  primary key (channelcode),
	  foreign key (networkcode) references master.network (networkcode),
	  foreign key (contentlanguagecode) references master.contentlanguage (contentlanguagecode),
	  foreign key (regioncode) references master.region (regioncode)
	 );

COMMIT;
