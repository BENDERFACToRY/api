
CREATE TABLE "public"."discord" ("id" varchar NOT NULL, "username" character varying NOT NULL, "discriminator" varchar(4) NOT NULL, "avatar" varchar NOT NULL, "bot" boolean NOT NULL DEFAULT false, "system" boolean NOT NULL DEFAULT false, "email" varchar, PRIMARY KEY ("id") );

alter table "public"."like" drop constraint "like_user_id_fkey",
  add constraint "like_user_id_fkey"
  foreign key ("user_id")
  references "public"."user"
  ("id") on update set null on delete set null;

alter table "public"."like" drop constraint "like_media_id_fkey",
  add constraint "like_media_id_fkey"
  foreign key ("media_id")
  references "public"."media"
  ("id") on update cascade on delete cascade;

alter table "oauth"."token" drop constraint "token_user_id_fkey",
  add constraint "token_user_id_fkey"
  foreign key ("user_id")
  references "public"."user"
  ("id") on update cascade on delete cascade;

alter table "public"."like" drop constraint "like_user_id_fkey",
  add constraint "like_user_id_fkey"
  foreign key ("user_id")
  references "public"."user"
  ("id") on update cascade on delete cascade;

alter table "public"."user"
  add constraint "user_discord_id_fkey"
  foreign key ("discord_id")
  references "public"."discord"
  ("id") on update restrict on delete restrict;

alter table "public"."user" drop constraint "user_discord_id_fkey",
  add constraint "user_discord_id_fkey"
  foreign key ("discord_id")
  references "public"."discord"
  ("id") on update cascade on delete cascade;

alter table "public"."discord" add column "roles" jsonb
 not null default '[]';

alter table "public"."discord" alter column "avatar" drop not null;

alter table "public"."discord" alter column "discriminator" drop not null;
