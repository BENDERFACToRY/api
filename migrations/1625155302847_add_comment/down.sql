-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE TABLE "comment" (
    id UUID NOT NULL DEFAULT uuid_generate_v4 (),
    text VARCHAR NOT NULL,
    media_id UUID NOT NULL REFERENCES public.media(id),
    media_timestamp VARCHAR,
    
    user_id UUID NOT NULL REFERENCES public.user(id),
    created  TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    PRIMARY KEY (id)
);
