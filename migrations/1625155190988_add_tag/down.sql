-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE TABLE "tag" (
    name VARCHAR NOT NULL,
    media_id UUID NOT NULL REFERENCES public.media(id),
    score INT DEFAULT 0,
    
    PRIMARY KEY (name, media_id)
);
