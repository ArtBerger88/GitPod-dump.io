--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    asteroid_id integer NOT NULL,
    type character varying(30)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    planets text,
    distance_from_milky_way numeric,
    stars text
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    moon character varying(30),
    size integer,
    revolves_around character varying(30)
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    has_moon boolean,
    size_in_miles numeric,
    distance_from_earth_in_mils_of_miles numeric,
    avg_temp_in_f integer,
    star_id integer NOT NULL,
    moon character varying(30),
    revolves_around character varying(30) NOT NULL
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    stars text,
    revolve_around boolean,
    type character varying(30)
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

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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

INSERT INTO public.asteroid VALUES ('ceres', 1, 'planet');
INSERT INTO public.asteroid VALUES ('vesta', 2, 'V-type');
INSERT INTO public.asteroid VALUES ('lutetia', 3, 'M-type');
INSERT INTO public.asteroid VALUES ('ida', 4, 'S-type');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milky way', 1, NULL, 0, 'sol');
INSERT INTO public.galaxy VALUES ('Wolf 359', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Tau Cati', 6, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Alpha Centauri', 2, NULL, NULL, 'Alpha Centauri');
INSERT INTO public.galaxy VALUES ('Alpha Canis Majoris', 4, NULL, NULL, 'Alpha Canis Majoris');
INSERT INTO public.galaxy VALUES ('Alpha Canis Minoris', 5, NULL, NULL, 'Alpha Canis Minoris');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Phobos', 3, NULL, 14, 'Mars');
INSERT INTO public.moon VALUES ('Callisto', 4, NULL, 2983, 'Jupiter');
INSERT INTO public.moon VALUES ('Elara', 5, NULL, 50, 'Jupiter');
INSERT INTO public.moon VALUES ('Europa', 6, NULL, 1942, 'Jupiter');
INSERT INTO public.moon VALUES ('Ganymede', 7, NULL, 3278, 'Jupiter');
INSERT INTO public.moon VALUES ('Io', 8, NULL, 2255, 'Jupiter');
INSERT INTO public.moon VALUES ('Dione', 9, NULL, 696, 'Saturn');
INSERT INTO public.moon VALUES ('Iapetus', 10, NULL, 892, 'Saturn');
INSERT INTO public.moon VALUES ('Rhea', 11, NULL, 949, 'Saturn');
INSERT INTO public.moon VALUES ('Arieal', 12, NULL, 721, 'Uranus');
INSERT INTO public.moon VALUES ('Oberon', 13, NULL, 948, 'Uranus');
INSERT INTO public.moon VALUES ('Titania', 14, NULL, 981, 'Uranus');
INSERT INTO public.moon VALUES ('Umbriel', 15, NULL, 739, 'Uranus');
INSERT INTO public.moon VALUES ('Despina', 16, NULL, 99, 'Neptune');
INSERT INTO public.moon VALUES ('Galatea', 17, NULL, 87, 'Neptune');
INSERT INTO public.moon VALUES ('Proteus', 18, NULL, 261, 'Neptune');
INSERT INTO public.moon VALUES ('Triton', 19, NULL, 1681, 'Neptune');
INSERT INTO public.moon VALUES ('Charon', 20, NULL, 750, 'Pluto');
INSERT INTO public.moon VALUES ('moon', 1, 'moon', 2159, 'Earth');
INSERT INTO public.moon VALUES ('deimos', 2, NULL, 8, 'Mars');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, false, 13400, false, 2439.7, 56.9, -7, 1, NULL, 'Mercury');
INSERT INTO public.planet VALUES ('Venus', 2, false, 13400, false, 7520.8, 41.4, 22, 1, NULL, 'Venus');
INSERT INTO public.planet VALUES ('Earth', 3, true, 13400, true, 3963.0, 0, 57, 1, 'moon', 'Earth');
INSERT INTO public.planet VALUES ('Mars', 4, false, 13400, true, 2106.0, 48.6, -19, 1, NULL, 'Mars');
INSERT INTO public.planet VALUES ('Jupiter', 5, false, 13400, true, 88900, 390.6, 57, 1, NULL, 'Jupiter');
INSERT INTO public.planet VALUES ('Saturn', 6, false, 13400, true, 74897, 792.2, -23, 1, NULL, 'Saturn');
INSERT INTO public.planet VALUES ('Uranus', 7, false, 13400, true, 31763.2, 1692.6, -224, 1, NULL, 'Uranus');
INSERT INTO public.planet VALUES ('Neptune', 8, false, 13400, true, 30775, 2703.9, -214, 1, NULL, 'Neptune');
INSERT INTO public.planet VALUES ('Pluto', 9, false, NULL, true, 1473, 3100, -380, 1, NULL, 'Pluto');
INSERT INTO public.planet VALUES ('Sun', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Sun');
INSERT INTO public.planet VALUES ('PlanetX', 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Space');
INSERT INTO public.planet VALUES ('PlanetWhy', 12, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'MoreSpace');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sol', 1, 'sol', NULL, NULL);
INSERT INTO public.star VALUES ('Proxima Centauri', 2, 'Alpha Centauri', NULL, NULL);
INSERT INTO public.star VALUES ('Rigil', 3, 'Alpha Centauri', NULL, NULL);
INSERT INTO public.star VALUES ('Toliman', 4, 'Alpha Centauri', NULL, NULL);
INSERT INTO public.star VALUES ('Sirius', 5, 'Alpha Canis Majoris', NULL, NULL);
INSERT INTO public.star VALUES ('Tau Ceti', 6, 'Alpha Canis Minoris', NULL, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_stars_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_stars_key UNIQUE (stars);


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
-- Name: planet planet_moon_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_key UNIQUE (moon);


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
-- Name: planet planet_revolves_around_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_revolves_around_key UNIQUE (revolves_around);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_revolve_around_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_revolve_around_key UNIQUE (revolve_around);


--
-- Name: moon moon_revolves_around_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_revolves_around_fkey FOREIGN KEY (revolves_around) REFERENCES public.planet(revolves_around);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_stars_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_stars_fkey FOREIGN KEY (stars) REFERENCES public.galaxy(stars);


--
-- PostgreSQL database dump complete
--