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
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteriod_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteriod_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteriod_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteriod_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteriod_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    radius integer NOT NULL,
    color text,
    name character varying(255),
    galaxy_type character varying(255),
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    radius integer NOT NULL,
    color text,
    name character varying(255),
    star_type character varying(255),
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
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
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    radius integer NOT NULL,
    color text,
    name character varying(255),
    star_type character varying(255),
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
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
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    radius integer NOT NULL,
    color text,
    name character varying(255),
    star_type character varying(255),
    is_too_hot boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
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
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteriod_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 1930);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 2800);
INSERT INTO public.asteroid VALUES (3, 'Juno', 9820);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 5, 'violet', 'Andromeda', 'spiral', true);
INSERT INTO public.galaxy VALUES (2, 7, 'jade', 'Cygnus A', 'spiral', true);
INSERT INTO public.galaxy VALUES (3, 6, 'blue', 'Virgo A', 'spiral', false);
INSERT INTO public.galaxy VALUES (4, 10, 'light blue', 'Magellanic Clouds', 'spiral', false);
INSERT INTO public.galaxy VALUES (5, 11, 'orange', 'Canis Major Dwarf', 'spiral', false);
INSERT INTO public.galaxy VALUES (6, 5, 'indigo', 'Milky Way', 'spiral', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (12, 1, 'grey', 'Mimas', NULL, false, 5);
INSERT INTO public.moon VALUES (13, 2, 'grey', 'Enceladus', NULL, false, 5);
INSERT INTO public.moon VALUES (14, 3, 'grey', 'Tethys', NULL, true, 5);
INSERT INTO public.moon VALUES (15, 1, 'grey', 'Rhea', NULL, false, 5);
INSERT INTO public.moon VALUES (16, 1, 'grey', 'Dione', NULL, false, 5);
INSERT INTO public.moon VALUES (17, 5, 'grey', 'Titan', NULL, false, 5);
INSERT INTO public.moon VALUES (18, 8, 'grey', 'Lapetus', NULL, false, 7);
INSERT INTO public.moon VALUES (19, 9, 'green & blue', 'Alpha', NULL, false, 7);
INSERT INTO public.moon VALUES (20, 3, 'violet', 'Hades', NULL, false, 7);
INSERT INTO public.moon VALUES (21, 3, 'green', 'Tigres', NULL, false, 7);
INSERT INTO public.moon VALUES (22, 2, 'grey', 'Luna', NULL, false, 5);
INSERT INTO public.moon VALUES (23, 3, 'grey', 'Deimos', NULL, true, 5);
INSERT INTO public.moon VALUES (24, 1, 'grey', 'Phobos', NULL, false, 5);
INSERT INTO public.moon VALUES (25, 1, 'grey', 'Calisto', NULL, false, 5);
INSERT INTO public.moon VALUES (26, 5, 'grey', 'Io', NULL, false, 5);
INSERT INTO public.moon VALUES (27, 8, 'grey', 'Europa', NULL, false, 7);
INSERT INTO public.moon VALUES (28, 9, 'green & blue', 'Himalia', NULL, false, 7);
INSERT INTO public.moon VALUES (29, 3, 'violet', 'Thebe', NULL, false, 7);
INSERT INTO public.moon VALUES (30, 3, 'green', 'Elara', NULL, false, 7);
INSERT INTO public.moon VALUES (31, 3, 'green', 'Carme', NULL, false, 7);
INSERT INTO public.moon VALUES (32, 4, 'yellow', 'Metis', NULL, false, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 2, 'red', 'Mars', NULL, true, 7);
INSERT INTO public.planet VALUES (2, 1, 'dark red', 'Venus', NULL, false, 7);
INSERT INTO public.planet VALUES (3, 2, 'grey', 'Mercury', NULL, false, 7);
INSERT INTO public.planet VALUES (4, 3, 'green & blue', 'Earth', NULL, true, 7);
INSERT INTO public.planet VALUES (5, 1, 'pale blue', 'Pluto', NULL, false, 7);
INSERT INTO public.planet VALUES (6, 1, 'ocean blue', 'Uranos', NULL, false, 7);
INSERT INTO public.planet VALUES (7, 5, 'orange', 'Saturn', NULL, false, 7);
INSERT INTO public.planet VALUES (8, 8, 'yellow', 'Jupiter', NULL, false, 7);
INSERT INTO public.planet VALUES (9, 9, 'green & blue', 'Alpha', NULL, false, 7);
INSERT INTO public.planet VALUES (10, 3, 'violet', 'Hades', NULL, false, 7);
INSERT INTO public.planet VALUES (11, 3, 'green', 'Tigres', NULL, false, 7);
INSERT INTO public.planet VALUES (12, 4, 'yellow', 'Gassus', NULL, false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 2, 'blue', 'Lynx', 'sun', true, 1);
INSERT INTO public.star VALUES (3, 4, 'orange', 'Leo', 'costellation', true, 5);
INSERT INTO public.star VALUES (4, 7, 'green', 'Virgo', 'costellation', true, 5);
INSERT INTO public.star VALUES (5, 5, 'light blue', 'Scorpio', 'costellation', true, 5);
INSERT INTO public.star VALUES (6, 2, 'scarlet', 'Cancer', 'costellation', true, 5);
INSERT INTO public.star VALUES (7, 11, 'red', 'Andromeda', 'sun', true, 6);


--
-- Name: asteriod_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteriod_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 32, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid asteriod_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteriod_pkey PRIMARY KEY (asteroid_id);


--
-- Name: asteroid asteroid_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_unique UNIQUE (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

