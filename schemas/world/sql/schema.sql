-- Continents
CREATE TYPE continents AS ENUM (
    'Africa',
    'Antarctica',
    'Asia',
    'Europe',
    'Oceania',
    'North America',
    'South America'
);

-- Countries
CREATE TABLE countries (
    id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name character varying(255),
    iso2 character varying(255) NOT NULL,
    iso3 character varying(255),
    local_name text,
    continent continents
);
COMMENT ON COLUMN countries.id IS 'ISO 3166-1 numeric. See https://en.wikipedia.org/wiki/ISO_3166-1_numeric';
COMMENT ON COLUMN countries.iso2 IS 'ISO 3166-1 alpha-2. See https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2';
COMMENT ON COLUMN countries.iso3 IS 'ISO 3166-1 alpha-3. See https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3';

-- Cities
CREATE TABLE cities (
    id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name text NOT NULL,
    country_id bigint REFERENCES countries,
    district text NOT NULL
);
