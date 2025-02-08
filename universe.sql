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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(60) NOT NULL,
    black_types character varying(30),
    distance_from_earth numeric(5,3),
    age_in_millons_of_years integer,
    code_search character varying(6)
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_types character varying(30),
    size numeric(5,3),
    description text,
    code_search character varying(6)
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
    name character varying(60) NOT NULL,
    moon_types character varying(30),
    distance_from_earth numeric(5,3),
    age_in_millons_of_years integer,
    is_spherical boolean,
    planet_id integer,
    code_search character varying(6)
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
    name character varying(60) NOT NULL,
    planet_types character varying(30),
    distance_from_earth numeric(5,3),
    age_in_millons_of_years integer,
    star_id integer,
    code_search character varying(6)
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
    name character varying(60) NOT NULL,
    star_types character varying(30),
    has_life boolean,
    distance_from_earth numeric(5,3),
    grados integer,
    galaxy_id integer,
    code_search character varying(6)
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A*', 'Supermassive', 0.026, 13000, 'BH001');
INSERT INTO public.blackhole VALUES (2, 'Cygnus X-1', 'Stellar', 6.070, 6000, 'BH002');
INSERT INTO public.blackhole VALUES (3, 'M87*', 'Supermassive', 16.400, 13000, 'BH003');
INSERT INTO public.blackhole VALUES (4, 'V404 Cygni', 'Stellar', 7.800, 6000, 'BH004');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 10.570, 'Our home galaxy, containing the Solar System.', 'MW001');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 22.000, 'Nearest spiral galaxy to the Milky Way.', 'AN002');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 6.000, 'Third-largest member of the Local Group.', 'TR003');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 7.690, 'Famous for its well-defined spiral arms.', 'WH004');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral', 5.000, 'Known for its bright nucleus and large central bulge.', 'SO005');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular', 1.400, 'Satellite galaxy of the Milky Way.', 'LMC006');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Natural', 0.384, 4500, true, 3, 'MO001');
INSERT INTO public.moon VALUES (2, 'Phobos', 'Natural', 0.000, 4500, true, 4, 'MO002');
INSERT INTO public.moon VALUES (3, 'Deimos', 'Natural', 0.000, 4500, true, 4, 'MO003');
INSERT INTO public.moon VALUES (4, 'Io', 'Natural', 0.000, 4500, true, 5, 'MO004');
INSERT INTO public.moon VALUES (5, 'Europa', 'Natural', 0.000, 4500, true, 5, 'MO005');
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Natural', 0.000, 4500, true, 5, 'MO006');
INSERT INTO public.moon VALUES (7, 'Callisto', 'Natural', 0.000, 4500, true, 5, 'MO007');
INSERT INTO public.moon VALUES (8, 'Titan', 'Natural', 0.000, 4500, true, 6, 'MO008');
INSERT INTO public.moon VALUES (9, 'Rhea', 'Natural', 0.000, 4500, true, 6, 'MO009');
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Natural', 0.000, 4500, true, 6, 'MO010');
INSERT INTO public.moon VALUES (11, 'Dione', 'Natural', 0.000, 4500, true, 6, 'MO011');
INSERT INTO public.moon VALUES (12, 'Tethys', 'Natural', 0.000, 4500, true, 6, 'MO012');
INSERT INTO public.moon VALUES (13, 'Enceladus', 'Natural', 0.000, 4500, true, 6, 'MO013');
INSERT INTO public.moon VALUES (14, 'Miranda', 'Natural', 0.000, 4500, true, 7, 'MO014');
INSERT INTO public.moon VALUES (15, 'Ariel', 'Natural', 0.000, 4500, true, 7, 'MO015');
INSERT INTO public.moon VALUES (16, 'Umbriel', 'Natural', 0.000, 4500, true, 7, 'MO016');
INSERT INTO public.moon VALUES (17, 'Titania', 'Natural', 0.000, 4500, true, 7, 'MO017');
INSERT INTO public.moon VALUES (18, 'Oberon', 'Natural', 0.000, 4500, true, 7, 'MO018');
INSERT INTO public.moon VALUES (19, 'Triton', 'Natural', 0.000, 4500, true, 8, 'MO019');
INSERT INTO public.moon VALUES (20, 'Charon', 'Natural', 0.000, 4500, true, 8, 'MO020');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 0.387, 4500, 1, 'ME001');
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 0.723, 4500, 1, 'VE002');
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 1.000, 4500, 1, 'EA003');
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 1.524, 4500, 1, 'MA004');
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 5.203, 4500, 1, 'JU005');
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 9.537, 4500, 1, 'SA006');
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 1.919, 4500, 1, 'UR007');
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 3.069, 4500, 1, 'NE008');
INSERT INTO public.planet VALUES (9, 'Proxima b', 'Terrestrial', 4.243, 4500, 2, 'PB009');
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'Super-Earth', 6.000, 4500, 3, 'K22010');
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 'Terrestrial', 3.946, 4500, 4, 'T1E011');
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1f', 'Terrestrial', 3.946, 4500, 4, 'T1F012');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 'Red Dwarf', false, 4.243, 0, 1, 'PC001');
INSERT INTO public.star VALUES (2, 'Sirius', 'Main Sequence', false, 8.611, -16, 1, 'SR002');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red Supergiant', false, 6.425, 7, 2, 'BT003');
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'Main Sequence', false, 4.367, -60, 1, 'AC004');
INSERT INTO public.star VALUES (5, 'Vega', 'Main Sequence', false, 2.504, 38, 3, 'VG005');
INSERT INTO public.star VALUES (6, 'TRAPPIST-1', 'Red Dwarf', true, 3.946, -5, 4, 'TP006');


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_code_search_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_code_search_key UNIQUE (code_search);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_code_search_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_search_key UNIQUE (code_search);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_code_search_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_search_key UNIQUE (code_search);


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
-- Name: planet planet_code_search_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_code_search_key UNIQUE (code_search);


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
-- Name: star star_code_search_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_code_search_key UNIQUE (code_search);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

