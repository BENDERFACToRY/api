
alter table "public"."media" drop column "ipfs_uri" cascade;

alter table "public"."media" add column "title" varchar
 not null;

alter table "public"."media" add column "data_folder" varchar
 not null;

alter table "public"."media" add column "stereo_mix" jsonb
 not null;

alter table "public"."media" add column "recorded_date" date
 null;

alter table "public"."media" add column "torrent" varchar
 null;

alter table "public"."media" add column "tracks" jsonb
 not null default '[]';

alter table "public"."media" add column "bpm" varchar
 null;

alter table "public"."media" add column "youtube_url" varchar
 null;

alter table "public"."media" add column "season" varchar
 null;
ALTER TABLE "public"."media" ALTER COLUMN "data_folder" TYPE character varying;
alter table "public"."media" add constraint "media_data_folder_key" unique ("data_folder");
