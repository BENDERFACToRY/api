CREATE TABLE media (
    id      UUID NOT NULL default uuid_generate_v4(),
    ipfs    VARCHAR NOT NULL
);
