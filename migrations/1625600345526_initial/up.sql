SET check_function_bodies = false;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE "user" (
    id uuid DEFAULT uuid_generate_v4 (),
    name VARCHAR NOT NULL,

    PRIMARY KEY (id)
);

ALTER TABLE public.user ADD column "discord_id" varchar null;
ALTER TABLE public.user ADD constraint "user_discord_id_key" unique ("discord_id");
ALTER TABLE public.user ADD constraint "user_name_key" unique ("name");


CREATE TABLE media (
    id      UUID NOT NULL default uuid_generate_v4(),

    title VARCHAR NOT NULL,
    data_folder VARCHAR NOT NULL UNIQUE,
    stereo_mix JSONB NOT NULL,
    recorded_date DATE NULL,
    torrent VARCHAR NULL,
    tracks JSONB NOT NULL DEFAULT '[]',
    bpm VARCHAR NULL,
    youtube_url VARCHAR NULL,
    season VARCHAR NULL,

    PRIMARY KEY (id)
);

CREATE TABLE "like" (
    user_id UUID NOT NULL REFERENCES public.user(id),
    media_id UUID NOT NULL REFERENCES public.media(id),
    created  TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    PRIMARY KEY (user_id, media_id)
);

CREATE TABLE "tag" (
    name VARCHAR NOT NULL,
    media_id UUID NOT NULL REFERENCES public.media(id),
    score INT DEFAULT 0,
    
    PRIMARY KEY (name, media_id)
);

CREATE TABLE "comment" (
    id UUID NOT NULL DEFAULT uuid_generate_v4 (),
    text VARCHAR NOT NULL,
    media_id UUID NOT NULL REFERENCES public.media(id),
    media_timestamp VARCHAR,
    
    user_id UUID NOT NULL REFERENCES public.user(id),
    created  TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    PRIMARY KEY (id)
);


CREATE SCHEMA "oauth";

CREATE TABLE oauth.token (
    expires TIMESTAMPTZ NOT NULL,
    access_token VARCHAR NOT NULL,
    refresh_token VARCHAR,
    scope JSONB DEFAULT '[]',
    user_id UUID NOT NULL REFERENCES public.user(id)
);


