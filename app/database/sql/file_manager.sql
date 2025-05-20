--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-05-20 10:33:07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16399)
-- Name: file_manager; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA file_manager;


ALTER SCHEMA file_manager OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16400)
-- Name: file; Type: TABLE; Schema: file_manager; Owner: postgres
--

CREATE TABLE file_manager.file (
    file_id integer NOT NULL,
    content bytea NOT NULL,
    descriptor text NOT NULL
);


ALTER TABLE file_manager.file OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16403)
-- Name: file_manager_file_id_seq; Type: SEQUENCE; Schema: file_manager; Owner: postgres
--

ALTER TABLE file_manager.file ALTER COLUMN file_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME file_manager.file_manager_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4843 (class 0 OID 16400)
-- Dependencies: 218
-- Data for Name: file; Type: TABLE DATA; Schema: file_manager; Owner: postgres
--

COPY file_manager.file (file_id, content, descriptor) FROM stdin;
\.


--
-- TOC entry 4850 (class 0 OID 0)
-- Dependencies: 219
-- Name: file_manager_file_id_seq; Type: SEQUENCE SET; Schema: file_manager; Owner: postgres
--

SELECT pg_catalog.setval('file_manager.file_manager_file_id_seq', 1, false);


--
-- TOC entry 4697 (class 2606 OID 16410)
-- Name: file file_manager_pkey; Type: CONSTRAINT; Schema: file_manager; Owner: postgres
--

ALTER TABLE ONLY file_manager.file
    ADD CONSTRAINT file_manager_pkey PRIMARY KEY (file_id);


-- Completed on 2025-05-20 10:33:08

--
-- PostgreSQL database dump complete
--

