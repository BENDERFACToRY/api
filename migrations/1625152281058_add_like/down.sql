-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE TABLE "like" (
    user_id UUID NOT NULL REFERENCES public.user(id),
    media_id UUID NOT NULL REFERENCES public.media(id),
    created  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
