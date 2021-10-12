CREATE OR REPLACE FUNCTION media_likes_count(media_row public.media)
RETURNS INT AS $$
SELECT COUNT(*)
    FROM public.like L
    WHERE L.media_id = media_row.id
;
$$ LANGUAGE sql STABLE;
