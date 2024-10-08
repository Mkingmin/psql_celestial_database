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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(60) NOT NULL,
    description text,
    examples text
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
-- Name: galaxy_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_planet (
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(100),
    galaxy_planet_id integer NOT NULL
);


ALTER TABLE public.galaxy_planet OWNER TO freecodecamp;

--
-- Name: galaxy_planet_galaxy_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_planet_galaxy_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_planet_galaxy_planet_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_planet_galaxy_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_planet_galaxy_planet_id_seq OWNED BY public.galaxy_planet.galaxy_planet_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_year integer,
    is_spherical boolean NOT NULL,
    diameter integer,
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
    name character varying(30) NOT NULL,
    planet_types character varying(60) NOT NULL,
    distance_from_earth_light_years numeric,
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
    name character varying(30) NOT NULL,
    age_in_millions_of_year integer,
    is_spherical boolean NOT NULL,
    diameter integer,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_planet galaxy_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet ALTER COLUMN galaxy_planet_id SET DEFAULT nextval('public.galaxy_planet_galaxy_planet_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Barred Spiral', 'Spiral', 'Flat disks with spiral arms; active star formation', 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 'Regular Spiral', 'Spiral', 'Flat disks with spiral arms; active star formation', 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'E0 (nearly spherical)', 'Elliptical', 'Oval shapes; mostly older stars; little gas', 'M87');
INSERT INTO public.galaxy VALUES (4, 'E7 (highly elongated)', 'Elliptical', 'Oval shapes; mostly older stars; little gas', 'Centaurus A');
INSERT INTO public.galaxy VALUES (5, 'Irregular Galaxies', 'Irregular', 'No defined shape; rich in gas and young stars', 'Large Magellanic Cloud');
INSERT INTO public.galaxy VALUES (6, 'Peculiar Galaxies', 'Peculiar', 'Unusual shapes due to interactions', 'Arp 220');


--
-- Data for Name: galaxy_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_planet VALUES (5, 1, 'Irregular_Mercury', 1);
INSERT INTO public.galaxy_planet VALUES (5, 5, 'Irregular_Jupiter', 2);
INSERT INTO public.galaxy_planet VALUES (1, 2, 'Spiral_Venus', 3);
INSERT INTO public.galaxy_planet VALUES (3, 2, 'Elliptical_Venus', 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, true, 3474, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4400, false, 22, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4400, false, 12, 4);
INSERT INTO public.moon VALUES (4, 'Io', 4500, true, 3643, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, true, 3121, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, true, 5268, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, true, 4821, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, true, 5151, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 4500, true, 1527, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 4500, true, 1471, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 4500, true, 1123, 6);
INSERT INTO public.moon VALUES (12, 'Enceladus', 4500, true, 504, 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 4500, true, 396, 6);
INSERT INTO public.moon VALUES (14, 'Triton', 4500, true, 2710, 8);
INSERT INTO public.moon VALUES (15, 'Oberon', 4500, true, 1523, 7);
INSERT INTO public.moon VALUES (16, 'Titania', 4500, true, 1578, 7);
INSERT INTO public.moon VALUES (17, 'Miranda', 4500, true, 472, 7);
INSERT INTO public.moon VALUES (18, 'Hyperion', 4500, false, 270, 6);
INSERT INTO public.moon VALUES (19, 'Atlas', 4500, false, 30, 6);
INSERT INTO public.moon VALUES (20, 'Charon', 4500, true, 1212, 17);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (18, 'Osiris', 'Gas Giant', 154, false, 8);
INSERT INTO public.planet VALUES (19, 'Proxima Centauri b', 'Terrestrial', 4.24, false, 9);
INSERT INTO public.planet VALUES (20, 'Gliese 581g', 'Terrestrial', 20.3, false, 10);
INSERT INTO public.planet VALUES (21, 'Kepler-186f', 'Terrestrial', 490, false, 11);
INSERT INTO public.planet VALUES (22, 'TRAPPIST-1h', 'Terrestrial', 40.66, false, 12);
INSERT INTO public.planet VALUES (23, 'Tau Ceti b', 'Terrestrial', 11.9, false, 13);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 0, true, 5);
INSERT INTO public.planet VALUES (16, 'TOI-198 b', 'Ice Giant', 78, false, 10);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 0.000025, false, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 0.000006, false, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 0.000067, false, 6);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 0.000127, false, 9);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 0.000275, false, 11);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 0.000467, false, 12);
INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 0.000016, false, 3);
INSERT INTO public.planet VALUES (13, 'Super-Jupite', 'Gas Giant', 693, false, 11);
INSERT INTO public.planet VALUES (14, 'Hot Jupiter', 'Gas Giant', 261, false, 10);
INSERT INTO public.planet VALUES (15, 'Hot super-Earths', 'Terrestrial', 100, false, 9);
INSERT INTO public.planet VALUES (17, 'Pluto', 'Dwarf planet', 0.000628, false, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'VY Canis Majoris', 20, true, 2000000, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 10, true, 1400000, 1);
INSERT INTO public.star VALUES (3, 'UY Scuti', 20, true, 1900000, 5);
INSERT INTO public.star VALUES (4, 'WOH G64', 10, true, 1800000, 5);
INSERT INTO public.star VALUES (5, 'MY Cephei', 20, true, 1500000, 1);
INSERT INTO public.star VALUES (6, 'V346 Puppis', 20, true, 1400000, 5);
INSERT INTO public.star VALUES (7, 'Stephenson 2 DFK 5', 10, true, 1200000, 1);
INSERT INTO public.star VALUES (8, 'HD 209458', 4000, true, 840000, 1);
INSERT INTO public.star VALUES (9, 'Proxima Centauri', 4240, true, 196000, 1);
INSERT INTO public.star VALUES (10, 'Gliese 581', 7000, true, 216000, 1);
INSERT INTO public.star VALUES (11, 'Kepler-186', 4000, true, 364000, 1);
INSERT INTO public.star VALUES (12, 'TRAPPIST-1', 7600, true, 84180, 1);
INSERT INTO public.star VALUES (13, 'Tau Ceti', 5800, true, 552203, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_planet_galaxy_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_planet_galaxy_planet_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_planet galaxy_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet
    ADD CONSTRAINT galaxy_planet_pkey PRIMARY KEY (galaxy_planet_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon uq_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon_name UNIQUE (name);


--
-- Name: galaxy uq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_name UNIQUE (name);


--
-- Name: galaxy_planet uq_planet_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet
    ADD CONSTRAINT uq_planet_galaxy_id UNIQUE (galaxy_id, planet_id);


--
-- Name: planet uq_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_name UNIQUE (name);


--
-- Name: star uq_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_name UNIQUE (name);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fkey_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fkey_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy_planet planet_in_galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet
    ADD CONSTRAINT planet_in_galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy_planet planet_in_galaxy_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_planet
    ADD CONSTRAINT planet_in_galaxy_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

