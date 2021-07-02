
SET check_function_bodies = false;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE "user" (
    id uuid DEFAULT uuid_generate_v4 (),
    name VARCHAR NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE media (
    id      UUID NOT NULL default uuid_generate_v4(),
    ipfs    VARCHAR NOT NULL,

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
