-- Deploy spottrek:master.brand to pg

BEGIN;

/*
create table master.brand (
	  brandname text,
	  brandnamecode integer,
	  brandsectorcode integer,
	  brandcategorycode integer,
	  advertisercode integer,
	  descriptorcode integer,
	  brandtype integer, -- 0 for brand, 1 for promo
	  created_on timestamp default current_timestamp,
	  primary key (brandnamecode),
	  foreign key (brandsectorcode) references master.brandsector (brandsectorcode),
	  foreign key (brandcategorycode) references master.brandcategory (brandcategorycode),
	  foreign key (advertisercode) references master.advertiser (advertisercode),
	  foreign key (descriptorcode) references master.descriptor (descriptorcode)
);
*/

create table master.brand (
	  id serial,
	  brandname text,
	  brandnamecode integer,
	  brandsectorcode integer,
	  brandcategorycode integer,
	  advertiser_id integer,
	  descriptorcode integer,
	  brandtype integer, -- 0 for brand, 1 for promo
	  created_on timestamp default current_timestamp,
	  primary key (id),
	  foreign key (brandsectorcode) references master.brandsector (brandsectorcode),
	  foreign key (brandcategorycode) references master.brandcategory (brandcategorycode),
	  foreign key (advertiser_id) references master.advertiser (id),
	  foreign key (descriptorcode) references master.descriptor (id)
);

comment on column master.brand.brandtype is '0 for brand, 1 for promo';

COMMIT;
