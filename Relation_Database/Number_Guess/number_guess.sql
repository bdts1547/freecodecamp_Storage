--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    best_game integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 4, 113);
INSERT INTO public.games VALUES (2, 4, 953);
INSERT INTO public.games VALUES (3, 5, 315);
INSERT INTO public.games VALUES (4, 5, 753);
INSERT INTO public.games VALUES (5, 4, 176);
INSERT INTO public.games VALUES (6, 4, 251);
INSERT INTO public.games VALUES (7, 4, 827);
INSERT INTO public.games VALUES (8, 6, 958);
INSERT INTO public.games VALUES (9, 6, 995);
INSERT INTO public.games VALUES (10, 7, 900);
INSERT INTO public.games VALUES (11, 7, 166);
INSERT INTO public.games VALUES (12, 6, 724);
INSERT INTO public.games VALUES (13, 6, 147);
INSERT INTO public.games VALUES (14, 6, 156);
INSERT INTO public.games VALUES (15, 8, 78);
INSERT INTO public.games VALUES (16, 8, 782);
INSERT INTO public.games VALUES (17, 9, 164);
INSERT INTO public.games VALUES (18, 8, 25);
INSERT INTO public.games VALUES (19, 8, 61);
INSERT INTO public.games VALUES (20, 8, 451);
INSERT INTO public.games VALUES (21, 12, 883);
INSERT INTO public.games VALUES (22, 12, 558);
INSERT INTO public.games VALUES (23, 13, 87);
INSERT INTO public.games VALUES (24, 13, 116);
INSERT INTO public.games VALUES (25, 12, 141);
INSERT INTO public.games VALUES (26, 12, 952);
INSERT INTO public.games VALUES (27, 12, 432);
INSERT INTO public.games VALUES (28, 14, 436);
INSERT INTO public.games VALUES (29, 15, 14);
INSERT INTO public.games VALUES (30, 15, 15);
INSERT INTO public.games VALUES (31, 14, 104);
INSERT INTO public.games VALUES (32, 14, 940);
INSERT INTO public.games VALUES (33, 14, 718);
INSERT INTO public.games VALUES (34, 16, 14);
INSERT INTO public.games VALUES (35, 17, 6);
INSERT INTO public.games VALUES (36, 17, 401);
INSERT INTO public.games VALUES (37, 18, 315);
INSERT INTO public.games VALUES (38, 18, 225);
INSERT INTO public.games VALUES (39, 17, 411);
INSERT INTO public.games VALUES (40, 17, 752);
INSERT INTO public.games VALUES (41, 17, 704);
INSERT INTO public.games VALUES (42, 3, 11);
INSERT INTO public.games VALUES (43, 19, 281);
INSERT INTO public.games VALUES (44, 19, 209);
INSERT INTO public.games VALUES (45, 20, 252);
INSERT INTO public.games VALUES (46, 20, 876);
INSERT INTO public.games VALUES (47, 19, 189);
INSERT INTO public.games VALUES (48, 19, 691);
INSERT INTO public.games VALUES (49, 19, 908);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('dang', 1);
INSERT INTO public.users VALUES ('dia', 2);
INSERT INTO public.users VALUES ('Dang', 3);
INSERT INTO public.users VALUES ('user_1682648655201', 4);
INSERT INTO public.users VALUES ('user_1682648655200', 5);
INSERT INTO public.users VALUES ('user_1682649018864', 6);
INSERT INTO public.users VALUES ('user_1682649018863', 7);
INSERT INTO public.users VALUES ('user_1682649316698', 8);
INSERT INTO public.users VALUES ('user_1682649316697', 9);
INSERT INTO public.users VALUES ('Dia', 10);
INSERT INTO public.users VALUES ('haidang', 11);
INSERT INTO public.users VALUES ('user_1682649458078', 12);
INSERT INTO public.users VALUES ('user_1682649458077', 13);
INSERT INTO public.users VALUES ('user_1682649536158', 14);
INSERT INTO public.users VALUES ('user_1682649536157', 15);
INSERT INTO public.users VALUES ('Haidang', 16);
INSERT INTO public.users VALUES ('user_1682649640178', 17);
INSERT INTO public.users VALUES ('user_1682649640177', 18);
INSERT INTO public.users VALUES ('user_1682649726889', 19);
INSERT INTO public.users VALUES ('user_1682649726888', 20);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 49, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 20, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

