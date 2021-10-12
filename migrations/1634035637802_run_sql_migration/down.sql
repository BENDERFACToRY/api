-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE OR REPLACE FUNCTION media_liked_by_user(media_row public.media, hasura_session json)
-- RETURNS boolean AS $$
-- SELECT EXISTS (
--     SELECT 1
--     FROM public.like L
--     WHERE L.user_id = (hasura_session ->> 'x-hasura-user-id')::uuid AND L.media_id = media_row.id
-- );
-- $$ LANGUAGE sql STABLE;
