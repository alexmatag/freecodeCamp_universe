--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric(15,0),
    solar_mass numeric(15,0),
    description text
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer NOT NULL,
    age_in_million_of_years integer NOT NULL,
    diameter_km numeric(10,0) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL
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
    distance_from_planet integer NOT NULL,
    age_in_million_of_years integer NOT NULL,
    diameter_km numeric(10,0) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
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
    distance_from_earth integer NOT NULL,
    age_in_million_of_years integer NOT NULL,
    diameter_km numeric(10,0) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
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
    distance_from_earth integer NOT NULL,
    age_in_million_of_years integer NOT NULL,
    diameter_km numeric(10,0) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagitario A*', 26000, 4300000, 'Centro de la Vía Láctea, fotografiado por EHT en 2022');
INSERT INTO public.black_hole VALUES (2, 'M87*', 53500000, 6500000000, 'Primer agujero negro fotografiado (2019), galaxia M87');
INSERT INTO public.black_hole VALUES (3, 'Cygnus X-1', 7200, 21, 'Primer agujero negro de masa estelar confirmado, binario de rayos X');
INSERT INTO public.black_hole VALUES (4, 'V404 Cygni', 7800, 12, 'Microcuásar, sistema binario con estrella tipo K');
INSERT INTO public.black_hole VALUES (5, 'Gaia BH1', 1560, 10, 'Agujero negro conocido más cercano a la Tierra (2022)');
INSERT INTO public.black_hole VALUES (6, 'TON 618', 10370000000, 66000000000, 'Uno de los más masivos conocidos, quásar');
INSERT INTO public.black_hole VALUES (7, 'V616 Monocerotis', 3000, 8, 'Binario de rayos X, uno de los más cercanos');
INSERT INTO public.black_hole VALUES (8, 'A0620-00', 3000, 7, 'Uno de los más ligeros conocidos, binario con enana roja');
INSERT INTO public.black_hole VALUES (9, 'GW150914', 1300000000, 65, 'Primera detección de ondas gravitacionales (2015), fusión de dos BH');
INSERT INTO public.black_hole VALUES (10, 'V4640 Sgr', 15000, 13, 'Binario de rayos X en Sagitario, uno de los más estudiados');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 0, 13600, 105700, 'Espiral barrada, 200-400 mil millones de estrellas', true);
INSERT INTO public.galaxy VALUES (2, 'Enana del Can Mayor', 28000, 13000, 5000, 'Galaxia enana irregular, satélite de la Vía Láctea', false);
INSERT INTO public.galaxy VALUES (3, 'Enana Elíptica de Sagitario', 70000, 13000, 10000, 'Galaxia enana elíptica en órbita polar de la Vía Láctea', false);
INSERT INTO public.galaxy VALUES (4, 'Gran Nube de Magallanes', 165000, 13000, 35000, 'Enana irregular, visible a simple vista desde el hemisferio sur', false);
INSERT INTO public.galaxy VALUES (5, 'Pequeña Nube de Magallanes', 200000, 13000, 7000, 'Enana irregular, satélite de la Vía Láctea', false);
INSERT INTO public.galaxy VALUES (6, 'Andrómeda (M31)', 2500000, 10000, 220000, 'Espiral, la galaxia más grande del Grupo Local', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', 421700, 4500, 3643, 'Volcánicamente más activa del sistema solar', false, 5);
INSERT INTO public.moon VALUES (2, 'Europa', 671034, 4500, 3122, 'Océano subsuperficial bajo corteza de hielo', false, 5);
INSERT INTO public.moon VALUES (3, 'Ganímedes', 1070412, 4500, 5268, 'Mayor luna del sistema solar, campo magnético propio', false, 5);
INSERT INTO public.moon VALUES (4, 'Calisto', 1882709, 4500, 4821, 'Superficie muy craterizada, una de las más antiguas', false, 5);
INSERT INTO public.moon VALUES (5, 'Amalthea', 188280, 4500, 168, 'Irregular, rojiza, primer satélite descubierto de Júpiter', false, 5);
INSERT INTO public.moon VALUES (6, 'Titán', 1221870, 4500, 5150, 'Atmósfera densa, lagunas y ríos de metano líquido', false, 6);
INSERT INTO public.moon VALUES (7, 'Rhea', 527108, 4500, 1527, 'Helada, segunda mayor luna de Saturno', false, 6);
INSERT INTO public.moon VALUES (8, 'Iapetus', 3560820, 4500, 1471, 'Dos tonos (claro/oscuro), cráter de 500 km', false, 6);
INSERT INTO public.moon VALUES (9, 'Encélado', 237948, 4500, 504, 'Géiseres de agua, océano subsuperficial', false, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 185539, 4500, 396, 'Cráter Herschel (130 km), "luna de Star Wars"', false, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 377396, 4500, 1123, 'Helada, con bandas brillantes de hielo', false, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', 294619, 4500, 1062, 'Cañón Ithaca Chasma (1,700 km)', false, 6);
INSERT INTO public.moon VALUES (13, 'Jano', 151472, 4500, 178, 'Irregular, coorbital con Epimeteo', false, 6);
INSERT INTO public.moon VALUES (14, 'Fobos', 9377, 4500, 22, 'Irregular, órbita decreciente', false, 4);
INSERT INTO public.moon VALUES (15, 'Deimos', 23463, 4500, 12, 'Irregular, muy pequeña', false, 4);
INSERT INTO public.moon VALUES (16, 'Luna', 384400, 4500, 3474, 'Única luna de la Tierra, estabiliza su eje', false, 3);
INSERT INTO public.moon VALUES (17, 'Titania', 435910, 4500, 1578, 'Mayor luna de Urano, grietas de hielo', false, 7);
INSERT INTO public.moon VALUES (18, 'Oberón', 583520, 4500, 1523, 'Segunda mayor de Urano, muy craterizada', false, 7);
INSERT INTO public.moon VALUES (19, 'Miranda', 129390, 4500, 472, 'Terreno caótico, acantilados de 20 km', false, 7);
INSERT INTO public.moon VALUES (20, 'Tritón', 354759, 4500, 2707, 'Órbita retrógrada, criovolcanes', false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 58, 4500, 4879, 'Rocioso, más pequeño del sistema solar', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 108, 4500, 12104, 'Rocioso, atmósfera densa de CO₂, efecto invernadero extremo', false, 1);
INSERT INTO public.planet VALUES (3, 'Tierra', 0, 4500, 12742, 'Rocioso, único con agua líquida en superficie', true, 1);
INSERT INTO public.planet VALUES (4, 'Marte', 228, 4500, 6779, 'Rocioso, "planeta rojo", posible agua subterránea', false, 1);
INSERT INTO public.planet VALUES (5, 'Júpiter', 779, 4500, 139820, 'Gigante gaseoso, mayor del sistema solar', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', 1434, 4500, 116460, 'Gigante gaseoso, anillos prominentes', false, 1);
INSERT INTO public.planet VALUES (7, 'Urano', 2871, 4500, 50724, 'Gigante de hielo, rotación lateral', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptuno', 4495, 4500, 49244, 'Gigante de hielo, vientos más rápidos del sistema solar', false, 1);
INSERT INTO public.planet VALUES (9, 'Próxima Centauri b', 4, 4850, 13600, 'Rocioso en zona habitable, masa ~1.06 M', false, 1);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1e', 39, 7600, 11736, 'Rocioso en zona habitable, 0.92 R', false, 1);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 620, 4700, 30580, 'Super-Tierra en zona habitable de estrella tipo solar', false, 1);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', 492, 4900, 14144, 'Primer exoplaneta tamaño Tierra en zona habitable', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 149, 4600, 1392000, 'Enana amarilla G2V, centro del sistema solar', true, 1);
INSERT INTO public.star VALUES (2, 'Próxima Centauri', 4, 4850, 278000, 'Enana roja M5.5V, estrella más cercana al Sol', false, 1);
INSERT INTO public.star VALUES (3, 'Alfa Centauri A', 4, 5000, 1670000, 'Enana amarilla G2V, similar al Sol', false, 1);
INSERT INTO public.star VALUES (4, 'Estrella de Barnard', 6, 10000, 225300, 'Enana roja M4V, una de las más antiguas de la Vía Láctea', false, 1);
INSERT INTO public.star VALUES (5, 'Wolf 359', 8, 9000, 300000, 'Enana roja M6V, muy activa con llamaradas', false, 1);
INSERT INTO public.star VALUES (6, 'Sirio', 9, 230, 2376000, 'Sistema binario, estrella más brillante del cielo nocturno', false, 1);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 10, true);


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
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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

