CREATE TABLE IF NOT EXISTS "public".tbl_fn_dog (
    id integer NOT NULL,
    val integer NOT NULL
) WITH (oids = false);

CREATE FUNCTION fn_breed_count() RETURNS SETOF "public".tbl_fn_dog AS $$
  SELECT "breedId", COUNT(*) FROM dog GROUP BY "breedId";
$$ LANGUAGE SQL;
