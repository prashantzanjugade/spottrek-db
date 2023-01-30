-- Deploy spottrek:master.page to pg

BEGIN;

create table master.page (
	  id serial,
	  name varchar(100) not null,
	  remarks text,
	  created_on timestamp default now(),
	  primary key (id)
);

insert into master.page(name) values ('dashboard'),('monitoring-report'),('ad-hoc-report'),('summary-report'),('feed-missing-report'),('brand-master'),('channel-master'),('content-language-master'),('genre-master'),('program-master'),('promo-master'),('account-manager-master'),('user-master'),('rate-card'),('client-listing'),('group-advertiser'),('renew-client'),('subscription-listing'),('subscription-approvals'),('billing-details'),('billing-requests'),('billing-adjustments');

COMMIT;
