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
-- Name: dark_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dark_hole (
    dark_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance integer
);


ALTER TABLE public.dark_hole OWNER TO freecodecamp;

--
-- Name: dark_hole_dark_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dark_hole_dark_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dark_hole_dark_hole_id_seq OWNER TO freecodecamp;

--
-- Name: dark_hole_dark_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dark_hole_dark_hole_id_seq OWNED BY public.dark_hole.dark_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_ly integer,
    diameter_ly integer
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
    name character varying(30) NOT NULL,
    planet_id integer,
    crater_km integer,
    distance_to_earth integer
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
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    has_life boolean,
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
-- Name: dark_hole dark_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dark_hole ALTER COLUMN dark_hole_id SET DEFAULT nextval('public.dark_hole_dark_hole_id_seq'::regclass);


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
-- Data for Name: dark_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dark_hole VALUES (1, 'AP Librae', 700);
INSERT INTO public.dark_hole VALUES (2, 'Phoenix', 8570);
INSERT INTO public.dark_hole VALUES (3, 'NGC 4261', 100);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', 'our galaxy!', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'looks like milky way huh?', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'LMC', 'satellite galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 'it look like a cigar in photos', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'you got how it got its name', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'NGC 1300', '61M ly distance', NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Hoags Object', '600M ly distance too fur huh?', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Albategnius', 6, 131, NULL);
INSERT INTO public.moon VALUES (4, 'Aristarchus', 6, 40, NULL);
INSERT INTO public.moon VALUES (5, 'Aristotales', 6, 88, NULL);
INSERT INTO public.moon VALUES (6, 'Bailly', 6, 301, NULL);
INSERT INTO public.moon VALUES (7, 'Clavius', 6, 231, NULL);
INSERT INTO public.moon VALUES (8, 'Copernicus', 6, 96, NULL);
INSERT INTO public.moon VALUES (9, 'Fra Mauro', 6, 97, NULL);
INSERT INTO public.moon VALUES (10, 'Humboldt', 6, 199, NULL);
INSERT INTO public.moon VALUES (11, 'Janssen', 6, 201, NULL);
INSERT INTO public.moon VALUES (12, 'Langrenus', 6, 132, NULL);
INSERT INTO public.moon VALUES (13, 'Longomontonus', 6, 146, NULL);
INSERT INTO public.moon VALUES (14, 'Maginus', 6, 156, NULL);
INSERT INTO public.moon VALUES (15, 'Metius', 6, 84, NULL);
INSERT INTO public.moon VALUES (16, 'Moretus', 6, 114, NULL);
INSERT INTO public.moon VALUES (17, 'Petavius', 6, 184, NULL);
INSERT INTO public.moon VALUES (18, 'Picard', 6, 22, NULL);
INSERT INTO public.moon VALUES (19, 'Piccolomini', 6, 88, NULL);
INSERT INTO public.moon VALUES (20, 'Pitatus', 6, 101, NULL);
INSERT INTO public.moon VALUES (21, 'Plinius', 6, 41, NULL);
INSERT INTO public.moon VALUES (22, 'Rheita', 6, 71, NULL);
INSERT INTO public.moon VALUES (1, 'moon', NULL, NULL, 384000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'mercury', 4500, 77000000, true, 1);
INSERT INTO public.planet VALUES (5, 'venus', 4500, 61000000, true, 1);
INSERT INTO public.planet VALUES (6, 'earth', 4500, 0, false, 1);
INSERT INTO public.planet VALUES (7, 'mars', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Jupiter', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Saturn', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Uranus', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Neptune', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Pluto', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'Kepler 186-F', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (14, 'PA-99-N2', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (15, 'Dimidium', NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4500, true, 1);
INSERT INTO public.star VALUES (2, 'Vega', 455, true, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 230, true, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Sirius A', NULL, NULL, 1);
INSERT INTO public.star VALUES (7, 'Sirius B', NULL, NULL, 1);
INSERT INTO public.star VALUES (8, 'Tau Cet
i', NULL, NULL, 1);
INSERT INTO public.star VALUES (9, 'YZ Ceti', NULL, NULL, 1);
INSERT INTO public.star VALUES (10, 'AD Leonis', NULL, NULL, 1);


--
-- Name: dark_hole_dark_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dark_hole_dark_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: dark_hole dark_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dark_hole
    ADD CONSTRAINT dark_hole_name_key UNIQUE (name);


--
-- Name: dark_hole dark_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dark_hole
    ADD CONSTRAINT dark_hole_pkey PRIMARY KEY (dark_hole_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

