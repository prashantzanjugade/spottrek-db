-- Verify spottrek:master.playout on pg

BEGIN;

select
  broadcastercode,
  contenttypecode,
  channelcode,
  title,
  titlecode,
  contentlanguagecode,
  telecastdate,
  telecastday,
  telecaststarttime,
  telecastendtime,
  telecastduration,
  descriptorcode,
  breaknumber,
  positioninbreak,
  countinbreak,
  durationinbreak, -- not sure of data type
  breakduration, -- not sure of data type
  countperprogram,
  durationperprogram, -- not sure of data type
  totalbreakcountperprogram,
  totalbreakdurationperprogram,
  promotypecode,
  promocategorycode,
  promochannelcode,
  promosponsorname,
  promoprogramnamecode,
  promoprogramthemecode,
  promoprogramgenrecode,
  programthemecode,
  programgenrecode,
  programsegmentnumber,
  numberofsegmentsinprogram,
  productservicenamecode,
  brandnamecode,
  subbrandnamecode,
  advertisercode,
  commercialprogramnamecode,
  commercialprogramthemecode,
  commercialprogramgenrecode,
  sport,
  originalorrepeat,
  live,
  combinedpositioninbreak,
  combinedcountinbreak,
  promoprogramstarttime,
  commercialprogramstarttime,
  spotid bigint,
  lastmodifieddate
  adbreakcode,
  promobroadcastercode,
  beam,
  split,
  market,
  splitregion,
  splitplatform,
  prodhouse,
  created_on
from master.playout
where false;

ROLLBACK;
