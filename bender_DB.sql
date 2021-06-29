create type status_enum as enum ('raw', 'archived', 'processing');

create table if not exists projects
(
    id   serial not null
        constraint projects_pk
            primary key,
    name varchar(128)
);

create unique index if not exists projects_name_uindex
    on projects (name);

create table if not exists tags
(
    id serial not null
        constraint tags_pk
            primary key
);

create table if not exists media_tag_votes
(
    id                 serial                  not null
        constraint tag_votes_pk
            primary key,
    "media_tag_rel_ID" integer                 not null,
    "user_ID"          integer                 not null,
    updated            timestamp default now() not null
);

create table if not exists users
(
    id         serial       not null
        constraint users_pk
            primary key,
    new_column integer,
    name       varchar(128) not null,
    email      varchar(128) not null
);

create unique index if not exists users_email_uindex
    on users (email);

create unique index if not exists users_name_uindex
    on users (name);

create table if not exists comments
(
    id        integer       not null
        constraint comments_pk
            primary key,
    "user_ID" integer       not null,
    comment   varchar(1024) not null,
    updated   timestamp default now()
);

create unique index if not exists comments_id_uindex
    on comments (id);

create table if not exists media
(
    id      serial                  not null
        constraint media_pk
            primary key,
    hash    varchar(128)            not null,
    name    varchar(128),
    type    integer,
    updated timestamp default now() not null
);

create unique index if not exists media_hash_uindex
    on media (hash);

create table if not exists project_media_rel
(
    id           serial  not null
        constraint project_media_rel_pk
            primary key,
    "media_ID"   integer not null,
    "project_ID" integer not null
);

create table if not exists project_user_rel
(
    id           serial  not null
        constraint project_user_rel_pk
            primary key,
    "user_ID"    integer not null,
    "project_ID" integer not null,
    "role_ID"    integer not null
);

create table if not exists roles
(
    id      serial                  not null
        constraint roles_pk
            primary key,
    name    varchar(128)            not null,
    "desc"  varchar(1024)           not null,
    updated timestamp default now() not null
);

create table if not exists media_user_rel
(
    id         serial  not null
        constraint media_user_rel_pk
            primary key,
    "user_ID"  integer not null,
    "media_ID" integer not null
);

create table if not exists media_tag_rel
(
    id         serial  not null
        constraint tag_media_rel_pk
            primary key,
    "tag_ID"   integer not null,
    "media_ID" integer
);

create table if not exists media_comment_rel
(
    id           serial  not null
        constraint media_comment_rel_pk
            primary key,
    "comment_ID" integer not null,
    "media_ID"   integer not null
);

create table if not exists likes
(
    id        serial  not null
        constraint likes_pk
            primary key,
    "user_ID" integer not null,
    updated   timestamp default now()
);

create table if not exists media_likes_rel
(
    id         serial  not null
        constraint media_likes_rel_pk
            primary key,
    "media_ID" integer not null,
    "like_ID"  integer not null
);

create table if not exists project_like_rel
(
    id           serial  not null
        constraint project_like_rel_pk
            primary key,
    "project_ID" integer not null,
    "like_ID"    integer not null
);

create table if not exists project_tag_rel
(
    id           serial  not null
        constraint project_tag_rel_pk
            primary key,
    "project_ID" integer not null,
    "tag_ID"     integer not null
);

create table if not exists project_tag_votes
(
    id                   serial                  not null
        constraint project_tag_votes_pk
            primary key,
    "project_tag_rel_ID" integer                 not null,
    "user_ID"            integer                 not null,
    updated              timestamp default now() not null
);

create table if not exists project_comment_rel
(
    id           serial  not null
        constraint project_comment_rel_pk
            primary key,
    "project_ID" integer not null,
    "comment_ID" integer not null
);


