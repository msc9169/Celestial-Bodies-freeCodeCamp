--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
    age_in_million_of_yrs integer NOT NULL,
    description text,
    num_planets integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: lifeform; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeform (
    lifeform_id integer NOT NULL,
    age_in_yrs numeric(3,1) NOT NULL,
    height numeric(4,1) NOT NULL,
    name character varying(30)
);


ALTER TABLE public.lifeform OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    distance_from_planet integer,
    circumference_in_km numeric(6,1)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    circumference_in_km numeric(6,1),
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    is_active boolean,
    age_in_million_yrs integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 13610, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'not milky way', 13611, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'very milky way', 13609, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Newborn', 2, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Oldest', 99999, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Nonexistent', 0, NULL, NULL);


--
-- Data for Name: lifeform; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeform VALUES (1, 23.1, 5.2, NULL);
INSERT INTO public.lifeform VALUES (2, 53.4, 126.0, NULL);
INSERT INTO public.lifeform VALUES (3, 1.2, 0.1, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moonnt', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Deimos', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moonnt', 3, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Phobos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Deimos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Europa', 4, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moonnt', 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Phobos', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Deimos', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Europa', 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moonnt', 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Phobos', 8, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Deimos', 8, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Europa', 8, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'NEarth', 2, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'NMars', 2, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Airth', 3, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Hershey', 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'SAirth', 4, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'SHershey', 4, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'GrandEarth', 5, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'GrandMars', 5, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'NEarthest', 6, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'NMarsest', 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'North Star', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'South Star', 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Dotter', 2, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Grandsun', 3, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Norther Star', 3, NULL, NULL);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lifeform lifeform_lifeform_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_lifeform_id_key UNIQUE (lifeform_id);


--
-- Name: lifeform lifeform_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_pkey PRIMARY KEY (lifeform_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

