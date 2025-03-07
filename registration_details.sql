--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: registration_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.registration_details (
    user_id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(150) NOT NULL,
    phone_number character varying(20) NOT NULL,
    pin_code character varying(10),
    create_password character varying(100) NOT NULL,
    conform_password character varying(100) NOT NULL,
    country character varying(100),
    time_zone character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.registration_details OWNER TO postgres;

--
-- Name: registration_details_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.registration_details_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.registration_details_user_id_seq OWNER TO postgres;

--
-- Name: registration_details_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.registration_details_user_id_seq OWNED BY public.registration_details.user_id;


--
-- Name: registration_details user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registration_details ALTER COLUMN user_id SET DEFAULT nextval('public.registration_details_user_id_seq'::regclass);


--
-- Data for Name: registration_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.registration_details (user_id, first_name, last_name, email, phone_number, pin_code, create_password, conform_password, country, time_zone, created_at) FROM stdin;
1	Kiran	Sketch	kiran@gmail.com	9876543210	500001	Kiran@123	Kiran@123	India	Asia/Kolkata	2025-03-07 20:18:20.733128
2	John	Doe	john@gmail.com	9876541230	400002	John@123	John@123	USA	America/New_York	2025-03-07 20:18:20.733128
\.


--
-- Name: registration_details_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.registration_details_user_id_seq', 2, true);


--
-- Name: registration_details registration_details_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registration_details
    ADD CONSTRAINT registration_details_email_key UNIQUE (email);


--
-- Name: registration_details registration_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registration_details
    ADD CONSTRAINT registration_details_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

