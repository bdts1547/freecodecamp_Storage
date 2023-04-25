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

DROP DATABASE universe;
--
-- Name universe; Type DATABASE; Schema -; Owner freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

connect universe

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
-- Name death_planet; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.death_planet (
    death_planet_id integer NOT NULL,
    age_millions_of_years integer NOT NULL,
    weight integer NOT NULL,
    death_year integer,
    name character varying(255),
    distance_from_earth numeric,
    discription text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.death_planet OWNER TO freecodecamp;

--
-- Name death_planet_death_planet_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.death_planet_death_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.death_planet_death_planet_id_seq OWNER TO freecodecamp;

--
-- Name death_planet_death_planet_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.death_planet_death_planet_id_seq OWNED BY public.death_planet.death_planet_id;


--
-- Name galaxy; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    weight integer NOT NULL,
    name character varying(255),
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name galaxy_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name galaxy_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name moon; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    weight integer NOT NULL,
    name character varying(255),
    distance_from_earth numeric,
    discription text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name moon_moon_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name moon_moon_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name planet; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    weight integer NOT NULL,
    name character varying(255),
    distance_from_earth numeric,
    discription text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name planet_planet_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name planet_planet_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name star; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    weight integer NOT NULL,
    name character varying(255),
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name star_star_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name star_star_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name death_planet death_planet_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.death_planet ALTER COLUMN death_planet_id SET DEFAULT nextval('public.death_planet_death_planet_id_seq'regclass);


--
-- Name galaxy galaxy_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'regclass);


--
-- Name moon moon_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'regclass);


--
-- Name planet planet_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'regclass);


--
-- Name star star_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'regclass);


--
-- Data for Name death_planet; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.death_planet VALUES (2, 3, 10, 2024, '1st death planet', 200, '2 dmm', true, true, 5);
INSERT INTO public.death_planet VALUES (3, 3, 10, 2024, '2st death planet', 200, '2 dmm', true, true, 5);
INSERT INTO public.death_planet VALUES (4, 3, 10, 2024, '3st death planet', 200, '2 dmm', true, true, 5);


--
-- Data for Name galaxy; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1000, 0, 'Galaxy of Anh Ba Dia', 6996, 'Hanh tinh duoc anh ba dia tao ra voi muc dich cho may thang ngu song, dac biet la thang Minh 214', true, false);
INSERT INTO public.galaxy VALUES (0, 2000, 0, '2nd Galaxy', 9696, 'Cho thang ngu song', true, false);
INSERT INTO public.galaxy VALUES (2, 3000, 0, '3nd Galaxy', 96963, '3Cho thang ngu song', true, false);
INSERT INTO public.galaxy VALUES (3, 4000, 0, '4nd Galaxy', 496963, '4ho thang ngu song', true, false);
INSERT INTO public.galaxy VALUES (4, 5000, 0, '5nd Galaxy', 4696963, '5ho thang ngu song', true, false);
INSERT INTO public.galaxy VALUES (5, 6000, 0, '6nd Galaxy', 46969631, '65ho thang ngu song', true, false);
INSERT INTO public.galaxy VALUES (6, 7000, 0, '7nd Galaxy', 47631, '75ho thang ngu song', true, false);


--
-- Data for Name moon; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.moon VALUES (1, 1000, 10, '20st moon', 200, '2 dmm', true, true, 6);
INSERT INTO public.moon VALUES (2, 1000, 10, '19st moon', 200, '2 dmm', true, true, 6);
INSERT INTO public.moon VALUES (3, 1000, 10, '18st moon', 200, '2 dmm', true, true, 6);
INSERT INTO public.moon VALUES (4, 1000, 10, '17st moon', 200, '2 dmm', true, true, 6);
INSERT INTO public.moon VALUES (5, 1000, 10, '16st moon', 200, '2 dmm', true, true, 6);
INSERT INTO public.moon VALUES (7, 1000, 10, '15st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (8, 1000, 10, '14st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (9, 1000, 10, '13st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (10, 1000, 10, '12st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (11, 1000, 10, '11st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (12, 1000, 10, '10st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (13, 1000, 10, '9st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (14, 1000, 10, '8st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (15, 1000, 10, '7st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (16, 1000, 10, '6st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (17, 1000, 10, '5st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (18, 1000, 10, '4st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (19, 1000, 10, '3st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.moon VALUES (20, 1000, 10, '2st moon', 200, '2 dmm', true, true, 4);
INSERT INTO public.moon VALUES (21, 1000, 10, '1st moon', 200, '2 dmm', true, true, 4);


--
-- Data for Name planet; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.planet VALUES (2, 1000, 10, '1st Pl', 200, '1 dmm', true, true, 1);
INSERT INTO public.planet VALUES (3, 1000, 10, '2st Pl', 200, '2 dmm', true, true, 2);
INSERT INTO public.planet VALUES (4, 1000, 10, '3st Pl', 200, '2 dmm', true, true, 2);
INSERT INTO public.planet VALUES (5, 1000, 10, '4st Pl', 200, '2 dmm', true, true, 2);
INSERT INTO public.planet VALUES (6, 1000, 10, '5st Pl', 200, '2 dmm', true, true, 3);
INSERT INTO public.planet VALUES (7, 1000, 10, '6st Pl', 200, '2 dmm', true, true, 3);
INSERT INTO public.planet VALUES (8, 1000, 10, '7st Pl', 200, '2 dmm', true, true, 3);
INSERT INTO public.planet VALUES (9, 1000, 10, '8st Pl', 200, '2 dmm', true, true, 4);
INSERT INTO public.planet VALUES (10, 1000, 10, '9st Pl', 200, '2 dmm', true, true, 4);
INSERT INTO public.planet VALUES (11, 1000, 10, '10st Pl', 200, '2 dmm', true, true, 4);
INSERT INTO public.planet VALUES (12, 1000, 10, '11st Pl', 200, '2 dmm', true, true, 4);
INSERT INTO public.planet VALUES (13, 1000, 10, '12st Pl', 200, '2 dmm', true, true, 5);
INSERT INTO public.planet VALUES (14, 1000, 10, '1st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.planet VALUES (15, 1000, 10, '2st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.planet VALUES (16, 1000, 10, '3st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.planet VALUES (17, 1000, 10, '4st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.planet VALUES (18, 1000, 10, '5st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.planet VALUES (19, 1000, 10, '6st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.planet VALUES (20, 1000, 10, '7st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.planet VALUES (21, 1000, 10, '8st moon', 200, '2 dmm', true, true, 5);
INSERT INTO public.planet VALUES (22, 1000, 10, '9st moon', 200, '2 dmm', true, true, 3);
INSERT INTO public.planet VALUES (23, 1000, 10, '10st moon', 200, '2 dmm', true, true, 3);
INSERT INTO public.planet VALUES (24, 1000, 10, '11st moon', 200, '2 dmm', true, true, 3);
INSERT INTO public.planet VALUES (25, 1000, 10, '12st moon', 200, '2 dmm', true, true, 2);
INSERT INTO public.planet VALUES (26, 1000, 10, '13st moon', 200, '2 dmm', true, true, 1);
INSERT INTO public.planet VALUES (27, 1000, 10, '14st moon', 200, '2 dmm', true, true, 1);
INSERT INTO public.planet VALUES (28, 1000, 10, '15st moon', 200, '2 dmm', true, true, 4);
INSERT INTO public.planet VALUES (29, 1000, 10, '16st moon', 200, '2 dmm', true, true, 4);
INSERT INTO public.planet VALUES (30, 1000, 10, '17st moon', 200, '2 dmm', true, true, 4);
INSERT INTO public.planet VALUES (31, 1000, 10, '18st moon', 200, '2 dmm', true, true, 4);
INSERT INTO public.planet VALUES (32, 1000, 10, '19st moon', 200, '2 dmm', true, true, 4);
INSERT INTO public.planet VALUES (33, 1000, 10, '20st moon', 200, '2 dmm', true, true, 6);


--
-- Data for Name star; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.star VALUES (1, 1000, 10, '1st Star', 100, 'Ngoi sao sang', true, true, 0);
INSERT INTO public.star VALUES (2, 1000, 10, '2st Star', 200, '2Ngoi sao sang', true, true, 1);
INSERT INTO public.star VALUES (3, 1000, 10, '3st Star', 200, '3Ngoi sao sang', true, true, 3);
INSERT INTO public.star VALUES (4, 1000, 10, '4st Star', 200, '4Ngoi sao sang', true, true, 3);
INSERT INTO public.star VALUES (5, 1000, 10, '5st Star', 200, '5Ngoi sao sang', true, true, 4);
INSERT INTO public.star VALUES (6, 1000, 10, '6st Star', 200, '6Ngoi sao sang', true, true, 5);
INSERT INTO public.star VALUES (7, 1000, 10, '7st Star', 200, '7Ngoi sao sang', true, true, 6);


--
-- Name death_planet_death_planet_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.death_planet_death_planet_id_seq', 4, true);


--
-- Name galaxy_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name moon_moon_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name planet_planet_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 33, true);


--
-- Name star_star_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name death_planet death_planet_name_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.death_planet
    ADD CONSTRAINT death_planet_name_key UNIQUE (name);


--
-- Name death_planet death_planet_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.death_planet
    ADD CONSTRAINT death_planet_pkey PRIMARY KEY (death_planet_id);


--
-- Name galaxy galaxy_name_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name galaxy galaxy_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name moon moon_name_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name moon moon_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name planet planet_name_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name planet planet_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name star star_name_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name star star_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name death_planet death_planet_planet_id_fkey; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.death_planet
    ADD CONSTRAINT death_planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name moon moon_planet_id_fkey; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name planet planet_star_id_fkey; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name star star_galaxy_id_fkey; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--