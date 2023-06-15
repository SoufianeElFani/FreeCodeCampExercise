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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    dummy_test text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    size integer,
    has_black_hole boolean NOT NULL,
    spiral boolean NOT NULL
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
    name character varying(255) NOT NULL,
    planet_id integer,
    distance_from_planet numeric,
    has_water boolean NOT NULL,
    has_ice boolean NOT NULL,
    is_inhabited boolean NOT NULL
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
    name character varying(255) NOT NULL,
    star_id integer,
    distance_from_star numeric,
    has_atmosphere boolean NOT NULL,
    temperature integer,
    is_habitable boolean NOT NULL
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
    name character varying(255) NOT NULL,
    galaxy_id integer,
    age integer,
    mass numeric,
    has_planets boolean NOT NULL,
    has_life boolean NOT NULL
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', NULL);
INSERT INTO public.constellation VALUES (2, 'Leo', NULL);
INSERT INTO public.constellation VALUES (3, 'Crux', NULL);
INSERT INTO public.constellation VALUES (4, 'Cygnus', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The milky way is OK', 100000, false, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Desc 2', 120000, false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Desc 3', 50000, false, true);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 'Desc 4', 6000, false, true);
INSERT INTO public.galaxy VALUES (5, 'Centurius A', 'Desc 5', 8000, false, false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Desc 6', 7000, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', 1, 0.384, true, false, false);
INSERT INTO public.moon VALUES (3, 'Phobos', 2, 0.0094, false, true, true);
INSERT INTO public.moon VALUES (4, 'Deimos', 2, 0.0235, false, true, false);
INSERT INTO public.moon VALUES (5, 'Ganymede', 7, 1.07, true, true, false);
INSERT INTO public.moon VALUES (6, 'Europa', 7, 0.671, true, true, false);
INSERT INTO public.moon VALUES (7, 'Titan', 8, 1.22, true, true, false);
INSERT INTO public.moon VALUES (8, 'Miranda', 9, 0.129, false, true, false);
INSERT INTO public.moon VALUES (9, 'Triton', 10, 0.354, false, true, false);
INSERT INTO public.moon VALUES (10, 'Charon', 11, 0.195, false, true, false);
INSERT INTO public.moon VALUES (11, 'Dione', 8, 0.377, false, true, false);
INSERT INTO public.moon VALUES (12, 'Enceladis', 8, 0.238, true, true, false);
INSERT INTO public.moon VALUES (13, 'Tethys', 8, 0.294, false, true, false);
INSERT INTO public.moon VALUES (14, 'Oberon', 9, 0.584, false, true, false);
INSERT INTO public.moon VALUES (15, 'Titania', 9, 0.436, false, true, false);
INSERT INTO public.moon VALUES (16, 'Ariel', 9, 0.191, false, true, false);
INSERT INTO public.moon VALUES (17, 'Umbriel', 9, 0.266, false, true, false);
INSERT INTO public.moon VALUES (18, 'Rhea', 8, 0.527, false, true, false);
INSERT INTO public.moon VALUES (19, 'Iapetus', 8, 3.56, false, true, false);
INSERT INTO public.moon VALUES (20, 'Hyperion', 8, 1.481, false, true, false);
INSERT INTO public.moon VALUES (21, 'Phoebe', 8, 13.3, false, true, false);
INSERT INTO public.moon VALUES (22, 'Luna', 3, 0.0025, true, false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 1, true, 25, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 1.52, true, -65, false);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 0.72, true, 462, false);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, 0.39, false, 350, false);
INSERT INTO public.planet VALUES (5, 'Kepler-186f', 3, 0.35, true, 37, true);
INSERT INTO public.planet VALUES (6, 'HD 18745451', 3, 0.031, true, 800, false);
INSERT INTO public.planet VALUES (7, 'Jupiter', 2, 5.2, true, -145, false);
INSERT INTO public.planet VALUES (8, 'Saturn', 2, 9.58, true, -178, false);
INSERT INTO public.planet VALUES (9, 'Uranus', 2, 19.18, true, -224, false);
INSERT INTO public.planet VALUES (10, 'Neptune', 2, 30.07, true, -124, false);
INSERT INTO public.planet VALUES (11, 'Pluto', 2, 39.48, true, -229, false);
INSERT INTO public.planet VALUES (12, 'Kepler5441', 3, 0.718, true, -42, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', 1, 500, 19458, true, false);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 200, 2.2, true, false);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 2, 800, 17.5, false, false);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 1, 600, 1.1, true, false);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 1, 600, 0.907, true, false);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 1, 400, 0.1235, true, false);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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