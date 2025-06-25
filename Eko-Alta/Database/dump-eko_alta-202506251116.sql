--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)

-- Started on 2025-06-25 12:16:40 -03

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

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: admin
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO admin;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16393)
-- Name: test; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.test (
    id integer NOT NULL
);


ALTER TABLE public.test OWNER TO admin;

--
-- TOC entry 215 (class 1259 OID 16392)
-- Name: test_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_id_seq OWNER TO admin;

--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 215
-- Name: test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.test_id_seq OWNED BY public.test.id;


--
-- TOC entry 218 (class 1259 OID 16400)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    usuario character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    rol character varying(50) NOT NULL,
    apellido character varying(100) DEFAULT 'Desconocido'::character varying NOT NULL
);


ALTER TABLE public.usuarios OWNER TO admin;

--
-- TOC entry 217 (class 1259 OID 16399)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO admin;

--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 217
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 3330 (class 2604 OID 16396)
-- Name: test id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.test ALTER COLUMN id SET DEFAULT nextval('public.test_id_seq'::regclass);


--
-- TOC entry 3331 (class 2604 OID 16403)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 3481 (class 0 OID 16393)
-- Dependencies: 216
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.test (id) FROM stdin;
\.


--
-- TOC entry 3483 (class 0 OID 16400)
-- Dependencies: 218
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.usuarios (id, nombre, usuario, password, rol, apellido) FROM stdin;
1	Sebastian	escx	$2a$10$Dow1zWkqXqnhNjvZV0nmQOgo7IG6ZbXRYeRgo1x2VVRdUJrI7FoOO	admin	Canete
\.


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 215
-- Name: test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.test_id_seq', 1, false);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 217
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 1, true);


--
-- TOC entry 3334 (class 2606 OID 16398)
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);


--
-- TOC entry 3336 (class 2606 OID 16407)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


-- Completed on 2025-06-25 12:16:40 -03

--
-- PostgreSQL database dump complete
--

