
-- -- Could not auto-generate a down migration.
-- -- Please write an appropriate down migration for the SQL below:
-- -- alter table "public"."media" add column "season" varchar
--  null;

-- -- Could not auto-generate a down migration.
-- -- Please write an appropriate down migration for the SQL below:
-- -- alter table "public"."media" add column "youtube_url" varchar
--  null;

-- -- Could not auto-generate a down migration.
-- -- Please write an appropriate down migration for the SQL below:
-- -- alter table "public"."media" add column "bpm" varchar
--  null;

-- -- Could not auto-generate a down migration.
-- -- Please write an appropriate down migration for the SQL below:
-- -- alter table "public"."media" add column "tracks" jsonb
--  not null default '[]';

-- -- Could not auto-generate a down migration.
-- -- Please write an appropriate down migration for the SQL below:
-- -- alter table "public"."media" add column "torrent" varchar
--  null;

-- -- Could not auto-generate a down migration.
-- -- Please write an appropriate down migration for the SQL below:
-- -- alter table "public"."media" add column "recorded_date" date
--  null;

-- -- Could not auto-generate a down migration.
-- -- Please write an appropriate down migration for the SQL below:
-- -- alter table "public"."media" add column "stereo_mix" jsonb
--  not null;

-- -- Could not auto-generate a down migration.
-- -- Please write an appropriate down migration for the SQL below:
-- -- alter table "public"."media" add column "data_folder" varchar
--  not null;

-- -- Could not auto-generate a down migration.
-- -- Please write an appropriate down migration for the SQL below:
-- -- alter table "public"."media" add column "title" varchar
--  not null;

-- alter table "public"."media" alter column "ipfs_uri" drop not null;
-- alter table "public"."media" add column "ipfs_uri" varchar;
