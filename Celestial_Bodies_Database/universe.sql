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
-- Name: five; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.five (
    five_id integer NOT NULL,
    two integer NOT NULL,
    three integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.five OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    earth_distance_in_km integer,
    age_in_millions integer,
    weight_in_ton numeric(18,4),
    description text,
    is_planet boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
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
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    earth_distance_in_km integer,
    age_in_millions integer,
    weight_in_ton numeric(18,4),
    description text,
    is_planet boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    earth_distance_in_km integer,
    age_in_millions integer,
    weight_in_ton numeric(18,4),
    description text,
    is_planet boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    earth_distance_in_km integer,
    age_in_millions integer,
    weight_in_ton numeric(18,4),
    description text,
    is_planet boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: five; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.five VALUES (1, 2, 3, NULL);
INSERT INTO public.five VALUES (2, 2, 3, NULL);
INSERT INTO public.five VALUES (3, 2, 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (3, 'Centaurus', NULL, NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (4, 'Spider', NULL, NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', NULL, NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (6, 'Tadpole', NULL, NULL, NULL, NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL, false, 1);
INSERT INTO public.moon VALUES (2, 'Europa', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (3, 'Io', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (6, 'Amalthea', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (7, 'Jupyter LXI', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (8, 'Kallichore', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (9, 'Cyllene', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (10, 'Philophrosyne', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (11, 'Adrastea', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (12, 'Eirene', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (13, 'Pasiphae', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (14, 'Himalia', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (15, 'aitne', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (16, 'Carme', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (17, 'Euporie', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (18, 'Kalyke', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (19, 'Elara', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (20, 'Thyone', NULL, NULL, NULL, NULL, false, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (2, 'Jupiter', NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (3, 'Mercury', NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (4, 'Saturn', NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (5, 'Uranus', NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (6, 'Mars', NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (7, 'Venus', NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (9, 'Vegeta', NULL, NULL, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (10, 'Namekusei', NULL, NULL, NULL, NULL, true, 3);
INSERT INTO public.planet VALUES (11, 'Krypton', NULL, NULL, NULL, NULL, true, 4);
INSERT INTO public.planet VALUES (12, 'Predator', NULL, NULL, NULL, NULL, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'UBU', NULL, NULL, NULL, NULL, false, 1);
INSERT INTO public.star VALUES (2, 'SUN', NULL, NULL, NULL, NULL, false, 2);
INSERT INTO public.star VALUES (3, 'FLECHA', NULL, NULL, NULL, NULL, false, 3);
INSERT INTO public.star VALUES (4, 'ORO', NULL, NULL, NULL, NULL, false, 4);
INSERT INTO public.star VALUES (5, 'SOMEN', NULL, NULL, NULL, NULL, false, 5);
INSERT INTO public.star VALUES (6, 'YAKITORI', NULL, NULL, NULL, NULL, false, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: five five_one_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT five_one_key UNIQUE (five_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: five pk_five; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT pk_five PRIMARY KEY (five_id);


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
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

