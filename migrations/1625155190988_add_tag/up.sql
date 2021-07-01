CREATE TABLE "tag" (
    name VARCHAR NOT NULL,
    media_id UUID NOT NULL REFERENCES public.media(id),
    score INT DEFAULT 0,
    
    PRIMARY KEY (name, media_id)
);
