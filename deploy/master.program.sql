-- Deploy spottrek:master.program to pg

BEGIN;

/*
create table master.program (
	  channelcode integer,
	  title text,
	  titlecode integer,
	  programthemecode integer,
	  programgenrecode integer,
	  productionhouse text,
	  prodhouse integer,
	  created_on timestamp default current_timestamp,
	  primary key (titlecode),
	  foreign key (channelcode) references master.channel (channelcode),
	  foreign key (programthemecode) references master.programtheme (programthemecode),
	  foreign key (programgenrecode) references master.programgenre (programgenrecode)
);
*/

create table master.program (
	  id serial,
	  channelcode integer,
	  title text,
	  titlecode integer,
	  programthemecode integer,
	  programgenrecode integer,
	  productionhouse text,
	  prodhouse integer,
	  created_on timestamp default current_timestamp,
	  primary key (id),
	  UNIQUE(channelcode,titlecode),
	  foreign key (channelcode) references master.channel (channelcode),
	  foreign key (programthemecode) references master.programtheme (programthemecode),
	  foreign key (programgenrecode) references master.programgenre (programgenrecode)
);

COMMIT;
