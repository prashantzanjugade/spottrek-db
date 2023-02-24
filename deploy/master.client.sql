-- Deploy spottrek:master.client to pg

BEGIN;

create table master.client (
	  id serial,
	  name varchar(100) not null,
	  group_id integer not null,
	--sub_group_id integer,
	  client_type integer not null, -- broadcaster, agency, advertiser, other
	  spots bigint not null,
	  consumed_spots bigint not null,
	  account_manager_id integer not null,
	  finance_code varchar(50) not null,
	  address varchar(255) not null,
	  users integer not null,
	  auto_csv boolean not null,
	  userwise_subscription boolean not null,
	  tolerance_days smallint not null,
	  created_on timestamp default now(),
	  created_by integer not null,
	  status smallint default 1, -- 1 for active, 0 for inactive,
	  suspend_date timestamp,
	  modified_on timestamp NULL,
	  modified_by smallint,
	  primary key (id),
	  foreign key (group_id) references master.group (id),
	--foreign key (sub_group_id) references master.sub_group (id),
	  foreign key (account_manager_id) references master.account_manager (id),
	  foreign key (created_by) references master.users (id)
);

comment on column master.client.client_type is '1 for Advertiser, 2 for Broadcaster, 3 for Agency, 4 for Other';
comment on column master.client.status is '1 for active, 0 for inactive';

COMMIT;
