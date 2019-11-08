-- migrate:up

CREATE TABLE public.sessions (
    id bigint DEFAULT nextval('public.sessions_id_seq'::regclass) NOT NULL,
    user_id bigint REFERENCES users NOT NULL,
    info jsonb DEFAULT '{}'::jsonb NOT NULL,
    device_token text,
    notifications_enabled boolean DEFAULT true NOT NULL,
    is_valid boolean DEFAULT true NOT NULL,
    expires timestamp without time zone,
    inserted_at timestamp without time zone DEFAULT timezone('utc'::text, now()) NOT NULL,
    updated_at timestamp without time zone DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- migrate:down

DROP TABLE public.sessions;