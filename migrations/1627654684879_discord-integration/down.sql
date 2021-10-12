
alter table "public"."discord" alter column "discriminator" set not null;

alter table "public"."discord" alter column "avatar" set not null;

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."discord" add column "roles" jsonb
--  not null default '[]';

alter table "public"."user" drop constraint "user_discord_id_fkey",
  add constraint "user_discord_id_fkey"
  foreign key ("discord_id")
  references "public"."discord"
  ("id") on update restrict on delete restrict;

alter table "public"."user" drop constraint "user_discord_id_fkey";

alter table "public"."like" drop constraint "like_user_id_fkey",
  add constraint "like_user_id_fkey"
  foreign key ("user_id")
  references "public"."user"
  ("id") on update set null on delete set null;

alter table "oauth"."token" drop constraint "token_user_id_fkey",
  add constraint "token_user_id_fkey"
  foreign key ("user_id")
  references "public"."user"
  ("id") on update restrict on delete restrict;

alter table "public"."like" drop constraint "like_media_id_fkey",
  add constraint "like_media_id_fkey"
  foreign key ("media_id")
  references "public"."media"
  ("id") on update no action on delete no action;

alter table "public"."like" drop constraint "like_user_id_fkey",
  add constraint "like_user_id_fkey"
  foreign key ("user_id")
  references "public"."user"
  ("id") on update no action on delete no action;

DROP TABLE "public"."discord";
