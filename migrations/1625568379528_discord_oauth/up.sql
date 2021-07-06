
CREATE SCHEMA "oauth";

CREATE TABLE oauth.token (
    expires TIMESTAMPTZ NOT NULL,
    access_token VARCHAR NOT NULL,
    refresh_token VARCHAR,
    scope JSONB DEFAULT '[]',
    user_id UUID NOT NULL REFERENCES public.user(id),
);


alter table "public"."user" add column "discord_id" varchar null;
alter table "public"."user" add constraint "user_discord_id_key" unique ("discord_id");
alter table "public"."user" add constraint "user_name_key" unique ("name");
