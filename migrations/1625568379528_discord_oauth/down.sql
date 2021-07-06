

alter table "public"."user" drop constraint "user_name_key";
alter table "public"."user" drop constraint "user_discord_id_key";

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."user" add column "discord_id" varchar
--  null;


DROP TABLE oauth.token CASCADE;
DELETE SCHEMA "oauth";
