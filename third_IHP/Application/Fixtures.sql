

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body) VALUES ('b359cee1-e573-4a69-9ae3-f0d2c3eb7d3d', 'my poster!!!!', 'aaaaaaaaaaaabbbbbbbbbbbcccccccccccccc!!!!');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


