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
-- Name: attendance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attendance (
    id integer NOT NULL,
    employee_id integer,
    date date,
    check_in_time timestamp without time zone,
    check_out_time timestamp without time zone
);


ALTER TABLE public.attendance OWNER TO postgres;

--
-- Name: attendance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attendance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attendance_id_seq OWNER TO postgres;

--
-- Name: attendance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attendance_id_seq OWNED BY public.attendance.id;


--
-- Name: candidate_additional_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_additional_details (
    candidate_id integer NOT NULL,
    first_name character varying(50),
    permanent_address_line1 character varying(150),
    permanent_address_line2 character varying(150),
    permanent_city character varying(50),
    permanent_state character varying(50),
    permanent_country character varying(50),
    permanent_postal_code character varying(20),
    tentative_joining_date date,
    offer_letter character varying(255),
    additional_information text,
    current_salary numeric(12,2),
    experience character varying(50),
    department_name character varying(100),
    location_city character varying(50),
    location_state character varying(50),
    location_country character varying(50),
    highest_qualification character varying(100)
);


ALTER TABLE public.candidate_additional_details OWNER TO postgres;

--
-- Name: candidate_additional_details_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_additional_details_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidate_additional_details_candidate_id_seq OWNER TO postgres;

--
-- Name: candidate_additional_details_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_additional_details_candidate_id_seq OWNED BY public.candidate_additional_details.candidate_id;


--
-- Name: candidate_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_address (
    candidate_id integer NOT NULL,
    city character varying(100),
    address_line_2 character varying(255),
    address_line_1 character varying(255),
    postal_code character varying(20),
    country character varying(100),
    state character varying(100),
    last_name character varying(100)
);


ALTER TABLE public.candidate_address OWNER TO postgres;

--
-- Name: candidate_address_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_address_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidate_address_candidate_id_seq OWNER TO postgres;

--
-- Name: candidate_address_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_address_candidate_id_seq OWNED BY public.candidate_address.candidate_id;


--
-- Name: candidate_address_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_address_details (
    candidate_id integer NOT NULL,
    present_address_city character varying(100),
    present_address_address_line2 character varying(200),
    present_address_address_line1 character varying(200),
    present_address_postal_code character varying(20),
    present_address_country character varying(100),
    present_address_state character varying(100)
);


ALTER TABLE public.candidate_address_details OWNER TO postgres;

--
-- Name: candidate_address_details_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_address_details_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidate_address_details_candidate_id_seq OWNER TO postgres;

--
-- Name: candidate_address_details_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_address_details_candidate_id_seq OWNED BY public.candidate_address_details.candidate_id;


--
-- Name: candidate_custom_view; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_custom_view (
    candidate_id integer NOT NULL,
    present_address_line1 character varying(150),
    present_address_line2 character varying(150),
    present_city character varying(50),
    present_state character varying(50),
    present_country character varying(50),
    present_postal_code character varying(20),
    onboarding_status character varying(50),
    official_email character varying(100),
    photo_url character varying(255),
    phone_number character varying(20),
    email_id character varying(100),
    last_name character varying(50)
);


ALTER TABLE public.candidate_custom_view OWNER TO postgres;

--
-- Name: candidate_custom_view_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_custom_view_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidate_custom_view_candidate_id_seq OWNER TO postgres;

--
-- Name: candidate_custom_view_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_custom_view_candidate_id_seq OWNED BY public.candidate_custom_view.candidate_id;


--
-- Name: candidate_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_details (
    candidate_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email_id character varying(100),
    official_email character varying(100),
    onboarding_status character varying(50),
    department character varying(50),
    source_of_hire character varying(50),
    pan_card_number character varying(20),
    aadhaar_card_number character varying(20),
    uan_number character varying(20),
    location character varying(100),
    highest_qualification character varying(100),
    skill_set text,
    title character varying(50),
    added_by character varying(50),
    modified_by character varying(50),
    modified_time timestamp without time zone,
    added_time timestamp without time zone
);


ALTER TABLE public.candidate_details OWNER TO postgres;

--
-- Name: candidate_details_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_details_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidate_details_candidate_id_seq OWNER TO postgres;

--
-- Name: candidate_details_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_details_candidate_id_seq OWNED BY public.candidate_details.candidate_id;


--
-- Name: candidate_hiring_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_hiring_details (
    candidate_id integer NOT NULL,
    skill_set character varying(255),
    source_of_hire character varying(100),
    title character varying(50),
    added_by character varying(100),
    added_time timestamp without time zone,
    modified_by character varying(100),
    modified_time timestamp without time zone,
    pan_card_number character varying(20),
    aadhaar_card_number character varying(20),
    uan_number character varying(20)
);


ALTER TABLE public.candidate_hiring_details OWNER TO postgres;

--
-- Name: candidate_hiring_details_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_hiring_details_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidate_hiring_details_candidate_id_seq OWNER TO postgres;

--
-- Name: candidate_hiring_details_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_hiring_details_candidate_id_seq OWNED BY public.candidate_hiring_details.candidate_id;


--
-- Name: candidate_onboarding_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_onboarding_info (
    candidate_id integer NOT NULL,
    present_address text,
    permanent_address text,
    department character varying(100),
    location character varying(100),
    title character varying(100),
    added_by character varying(100),
    modified_by character varying(100),
    onboarding_status character varying(50),
    official_email character varying(150),
    photo bytea,
    phone character varying(20),
    email_id character varying(150),
    last_name character varying(100)
);


ALTER TABLE public.candidate_onboarding_info OWNER TO postgres;

--
-- Name: candidate_onboarding_info_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_onboarding_info_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidate_onboarding_info_candidate_id_seq OWNER TO postgres;

--
-- Name: candidate_onboarding_info_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_onboarding_info_candidate_id_seq OWNED BY public.candidate_onboarding_info.candidate_id;


--
-- Name: candidate_permanent_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_permanent_address (
    candidate_id integer NOT NULL,
    first_name character varying(100),
    permanent_address_line_1 character varying(255),
    permanent_postal_code character varying(20),
    permanent_country character varying(100),
    permanent_state character varying(100),
    permanent_city character varying(100),
    permanent_address_line_2 character varying(255),
    department character varying(100),
    location character varying(100),
    highest_qualification character varying(150)
);


ALTER TABLE public.candidate_permanent_address OWNER TO postgres;

--
-- Name: candidate_permanent_address_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_permanent_address_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidate_permanent_address_candidate_id_seq OWNER TO postgres;

--
-- Name: candidate_permanent_address_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_permanent_address_candidate_id_seq OWNED BY public.candidate_permanent_address.candidate_id;


--
-- Name: candidate_view; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_view (
    candidate_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email_id character varying(100),
    official_email character varying(100),
    onboarding_status character varying(50)
);


ALTER TABLE public.candidate_view OWNER TO postgres;

--
-- Name: candidate_view_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidate_view_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidate_view_candidate_id_seq OWNER TO postgres;

--
-- Name: candidate_view_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidate_view_candidate_id_seq OWNED BY public.candidate_view.candidate_id;


--
-- Name: candidates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidates (
    candidate_id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    email_id character varying(150),
    official_email character varying(150),
    onboarding_status character varying(50),
    present_address text,
    permanent_address text,
    phone character varying(20),
    tentative_joining_date date,
    offer_letter text,
    additional_info text,
    current_salary numeric,
    experience numeric,
    department character varying(100),
    source_of_hire character varying(100),
    pan_card_number character varying(20),
    aadhaar_card_number character varying(20),
    uan_number character varying(20),
    photo text
);


ALTER TABLE public.candidates OWNER TO postgres;

--
-- Name: candidates_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.candidates_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.candidates_candidate_id_seq OWNER TO postgres;

--
-- Name: candidates_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.candidates_candidate_id_seq OWNED BY public.candidates.candidate_id;


--
-- Name: employee_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_details (
    employee_id integer NOT NULL,
    first_name character varying(100),
    permanent_address_line_1 character varying(255),
    permanent_postal_code character varying(20),
    permanent_country character varying(100),
    permanent_state character varying(100),
    permanent_city character varying(100),
    permanent_address_line_2 character varying(255),
    tentative_joining_date date,
    offer_letter text,
    additional_information text,
    current_salary numeric(12,2),
    experience character varying(100),
    department_mail_alias character varying(100),
    department_name character varying(100),
    department_added_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    department_modified_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    skill_set text,
    source_of_hire character varying(100),
    designation_name character varying(100),
    title_mail_alias character varying(100),
    title_added_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    title_modified_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    pan_card_number character varying(20),
    aadhaar_card_number character varying(20),
    uan_number character varying(20)
);


ALTER TABLE public.employee_details OWNER TO postgres;

--
-- Name: employee_details_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_details_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_details_employee_id_seq OWNER TO postgres;

--
-- Name: employee_details_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_details_employee_id_seq OWNED BY public.employee_details.employee_id;


--
-- Name: employee_identification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_identification (
    employee_id integer NOT NULL,
    skill_set text,
    source_of_hire character varying(100),
    title character varying(100),
    added_by character varying(100),
    modified_time timestamp without time zone,
    modified_by character varying(100),
    added_time timestamp without time zone,
    pan_card_number character varying(20),
    aadhaar_card_number character varying(20),
    uan_number character varying(20)
);


ALTER TABLE public.employee_identification OWNER TO postgres;

--
-- Name: employee_identification_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_identification_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_identification_employee_id_seq OWNER TO postgres;

--
-- Name: employee_identification_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_identification_employee_id_seq OWNED BY public.employee_identification.employee_id;


--
-- Name: employee_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_master (
    employee_id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    nick_name character varying(100),
    gender character varying(20),
    date_of_birth date,
    age integer,
    photo text,
    personal_email_address character varying(100),
    official_email_address character varying(100),
    personal_mobile_number character varying(20),
    work_phone_number character varying(20),
    permanent_address text,
    permanent_postal_code character varying(20),
    permanent_country character varying(100),
    permanent_state character varying(100),
    permanent_city character varying(100),
    designation character varying(100),
    department character varying(100),
    slate_role character varying(100),
    location character varying(100),
    reporting_manager character varying(100),
    status character varying(50),
    employee_type character varying(50),
    marital_status character varying(50),
    date_of_joining date,
    tentative_joining_date date,
    date_of_exit date,
    current_salary numeric(12,2),
    total_experience character varying(100),
    current_experience character varying(100),
    skill_set text,
    about_me text,
    source_of_hire character varying(100),
    pan_card_number character varying(20),
    aadhaar_card_number character varying(20),
    uan_number character varying(20),
    offer_letter text,
    additional_information text,
    tags text,
    added_by_email character varying(100),
    modified_by_email character varying(100),
    added_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.employee_master OWNER TO postgres;

--
-- Name: employee_master_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_master_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_master_employee_id_seq OWNER TO postgres;

--
-- Name: employee_master_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_master_employee_id_seq OWNED BY public.employee_master.employee_id;


--
-- Name: employee_offer_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_offer_details (
    employee_id integer NOT NULL,
    first_name character varying(100),
    permanent_address text,
    tentative_joining_date date,
    offer_letter bytea,
    additional_information text,
    current_salary numeric(12,2),
    experience integer,
    department character varying(100),
    location character varying(100),
    highest_qualification character varying(150)
);


ALTER TABLE public.employee_offer_details OWNER TO postgres;

--
-- Name: employee_offer_details_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_offer_details_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_offer_details_employee_id_seq OWNER TO postgres;

--
-- Name: employee_offer_details_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_offer_details_employee_id_seq OWNED BY public.employee_offer_details.employee_id;


--
-- Name: employee_onboarding; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_onboarding (
    candidate_id integer NOT NULL,
    first_name character varying(100),
    permanent_address_line_1 character varying(255),
    permanent_postal_code character varying(20),
    permanent_country character varying(100),
    permanent_state character varying(100),
    permanent_city character varying(100),
    permanent_address_line_2 character varying(255),
    tentative_joining_date date,
    offer_letter text,
    additional_information text,
    current_salary numeric(12,2),
    experience character varying(100),
    department_mail_alias character varying(100),
    department_name character varying(100),
    added_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.employee_onboarding OWNER TO postgres;

--
-- Name: employee_onboarding_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_onboarding_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_onboarding_candidate_id_seq OWNER TO postgres;

--
-- Name: employee_onboarding_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_onboarding_candidate_id_seq OWNED BY public.employee_onboarding.candidate_id;


--
-- Name: onboarding_additional_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.onboarding_additional_details (
    id integer NOT NULL,
    first_name character varying(100),
    permanent_address text,
    tentative_joining_date date,
    offer_letter text,
    additional_information text,
    current_salary numeric(12,2),
    experience character varying(50),
    department character varying(100),
    location character varying(100),
    highest_qualification character varying(100),
    added_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.onboarding_additional_details OWNER TO postgres;

--
-- Name: onboarding_additional_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.onboarding_additional_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.onboarding_additional_details_id_seq OWNER TO postgres;

--
-- Name: onboarding_additional_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.onboarding_additional_details_id_seq OWNED BY public.onboarding_additional_details.id;


--
-- Name: onboarding_additional_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.onboarding_additional_info (
    id integer NOT NULL,
    skill_set text,
    source_of_hire character varying(100),
    title character varying(100),
    added_by character varying(100),
    modified_by character varying(100),
    added_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    pan_card_number character varying(20),
    aadhaar_card_number character varying(20),
    uan_number character varying(20)
);


ALTER TABLE public.onboarding_additional_info OWNER TO postgres;

--
-- Name: onboarding_additional_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.onboarding_additional_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.onboarding_additional_info_id_seq OWNER TO postgres;

--
-- Name: onboarding_additional_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.onboarding_additional_info_id_seq OWNED BY public.onboarding_additional_info.id;


--
-- Name: onboarding_candidate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.onboarding_candidate (
    candidate_id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    email_id character varying(100),
    official_email character varying(100),
    phone character varying(20),
    present_address text,
    onboarding_status character varying(50),
    photo text,
    added_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.onboarding_candidate OWNER TO postgres;

--
-- Name: onboarding_candidate_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.onboarding_candidate_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.onboarding_candidate_candidate_id_seq OWNER TO postgres;

--
-- Name: onboarding_candidate_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.onboarding_candidate_candidate_id_seq OWNED BY public.onboarding_candidate.candidate_id;


--
-- Name: onboarding_job_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.onboarding_job_details (
    candidate_id integer NOT NULL,
    first_name character varying(100),
    permanent_address text,
    tentative_joining_date date,
    offer_letter text,
    additional_information text,
    current_salary numeric(12,2),
    experience numeric(5,2),
    department character varying(100),
    location character varying(100),
    highest_qualification character varying(100)
);


ALTER TABLE public.onboarding_job_details OWNER TO postgres;

--
-- Name: onboarding_job_details_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.onboarding_job_details_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.onboarding_job_details_candidate_id_seq OWNER TO postgres;

--
-- Name: onboarding_job_details_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.onboarding_job_details_candidate_id_seq OWNED BY public.onboarding_job_details.candidate_id;


--
-- Name: onboarding_personal_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.onboarding_personal_details (
    candidate_id integer NOT NULL,
    present_address text,
    permanent_address text,
    department character varying(100),
    location character varying(100),
    title character varying(100),
    onboarding_status character varying(50),
    official_email character varying(100),
    photo text,
    phone character varying(15),
    email_id character varying(100),
    last_name character varying(100),
    added_by character varying(100),
    modified_by character varying(100)
);


ALTER TABLE public.onboarding_personal_details OWNER TO postgres;

--
-- Name: onboarding_personal_details_candidate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.onboarding_personal_details_candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.onboarding_personal_details_candidate_id_seq OWNER TO postgres;

--
-- Name: onboarding_personal_details_candidate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.onboarding_personal_details_candidate_id_seq OWNED BY public.onboarding_personal_details.candidate_id;


--
-- Name: attendance id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance ALTER COLUMN id SET DEFAULT nextval('public.attendance_id_seq'::regclass);


--
-- Name: candidate_additional_details candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_additional_details ALTER COLUMN candidate_id SET DEFAULT nextval('public.candidate_additional_details_candidate_id_seq'::regclass);


--
-- Name: candidate_address candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_address ALTER COLUMN candidate_id SET DEFAULT nextval('public.candidate_address_candidate_id_seq'::regclass);


--
-- Name: candidate_address_details candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_address_details ALTER COLUMN candidate_id SET DEFAULT nextval('public.candidate_address_details_candidate_id_seq'::regclass);


--
-- Name: candidate_custom_view candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_custom_view ALTER COLUMN candidate_id SET DEFAULT nextval('public.candidate_custom_view_candidate_id_seq'::regclass);


--
-- Name: candidate_details candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_details ALTER COLUMN candidate_id SET DEFAULT nextval('public.candidate_details_candidate_id_seq'::regclass);


--
-- Name: candidate_hiring_details candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_hiring_details ALTER COLUMN candidate_id SET DEFAULT nextval('public.candidate_hiring_details_candidate_id_seq'::regclass);


--
-- Name: candidate_onboarding_info candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_onboarding_info ALTER COLUMN candidate_id SET DEFAULT nextval('public.candidate_onboarding_info_candidate_id_seq'::regclass);


--
-- Name: candidate_permanent_address candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_permanent_address ALTER COLUMN candidate_id SET DEFAULT nextval('public.candidate_permanent_address_candidate_id_seq'::regclass);


--
-- Name: candidate_view candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_view ALTER COLUMN candidate_id SET DEFAULT nextval('public.candidate_view_candidate_id_seq'::regclass);


--
-- Name: candidates candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidates ALTER COLUMN candidate_id SET DEFAULT nextval('public.candidates_candidate_id_seq'::regclass);


--
-- Name: employee_details employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_details ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_details_employee_id_seq'::regclass);


--
-- Name: employee_identification employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_identification ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_identification_employee_id_seq'::regclass);


--
-- Name: employee_master employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_master ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_master_employee_id_seq'::regclass);


--
-- Name: employee_offer_details employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_offer_details ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_offer_details_employee_id_seq'::regclass);


--
-- Name: employee_onboarding candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_onboarding ALTER COLUMN candidate_id SET DEFAULT nextval('public.employee_onboarding_candidate_id_seq'::regclass);


--
-- Name: onboarding_additional_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onboarding_additional_details ALTER COLUMN id SET DEFAULT nextval('public.onboarding_additional_details_id_seq'::regclass);


--
-- Name: onboarding_additional_info id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onboarding_additional_info ALTER COLUMN id SET DEFAULT nextval('public.onboarding_additional_info_id_seq'::regclass);


--
-- Name: onboarding_candidate candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onboarding_candidate ALTER COLUMN candidate_id SET DEFAULT nextval('public.onboarding_candidate_candidate_id_seq'::regclass);


--
-- Name: onboarding_job_details candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onboarding_job_details ALTER COLUMN candidate_id SET DEFAULT nextval('public.onboarding_job_details_candidate_id_seq'::regclass);


--
-- Name: onboarding_personal_details candidate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onboarding_personal_details ALTER COLUMN candidate_id SET DEFAULT nextval('public.onboarding_personal_details_candidate_id_seq'::regclass);


--
-- Name: attendance attendance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (id);


--
-- Name: candidate_additional_details candidate_additional_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_additional_details
    ADD CONSTRAINT candidate_additional_details_pkey PRIMARY KEY (candidate_id);


--
-- Name: candidate_address_details candidate_address_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_address_details
    ADD CONSTRAINT candidate_address_details_pkey PRIMARY KEY (candidate_id);


--
-- Name: candidate_address candidate_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_address
    ADD CONSTRAINT candidate_address_pkey PRIMARY KEY (candidate_id);


--
-- Name: candidate_custom_view candidate_custom_view_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_custom_view
    ADD CONSTRAINT candidate_custom_view_pkey PRIMARY KEY (candidate_id);


--
-- Name: candidate_details candidate_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_details
    ADD CONSTRAINT candidate_details_pkey PRIMARY KEY (candidate_id);


--
-- Name: candidate_hiring_details candidate_hiring_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_hiring_details
    ADD CONSTRAINT candidate_hiring_details_pkey PRIMARY KEY (candidate_id);


--
-- Name: candidate_onboarding_info candidate_onboarding_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_onboarding_info
    ADD CONSTRAINT candidate_onboarding_info_pkey PRIMARY KEY (candidate_id);


--
-- Name: candidate_permanent_address candidate_permanent_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_permanent_address
    ADD CONSTRAINT candidate_permanent_address_pkey PRIMARY KEY (candidate_id);


--
-- Name: candidate_view candidate_view_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidate_view
    ADD CONSTRAINT candidate_view_pkey PRIMARY KEY (candidate_id);


--
-- Name: candidates candidates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT candidates_pkey PRIMARY KEY (candidate_id);


--
-- Name: employee_details employee_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_details
    ADD CONSTRAINT employee_details_pkey PRIMARY KEY (employee_id);


--
-- Name: employee_identification employee_identification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_identification
    ADD CONSTRAINT employee_identification_pkey PRIMARY KEY (employee_id);


--
-- Name: employee_master employee_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_master
    ADD CONSTRAINT employee_master_pkey PRIMARY KEY (employee_id);


--
-- Name: employee_offer_details employee_offer_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_offer_details
    ADD CONSTRAINT employee_offer_details_pkey PRIMARY KEY (employee_id);


--
-- Name: employee_onboarding employee_onboarding_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_onboarding
    ADD CONSTRAINT employee_onboarding_pkey PRIMARY KEY (candidate_id);


--
-- Name: onboarding_additional_details onboarding_additional_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onboarding_additional_details
    ADD CONSTRAINT onboarding_additional_details_pkey PRIMARY KEY (id);


--
-- Name: onboarding_additional_info onboarding_additional_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onboarding_additional_info
    ADD CONSTRAINT onboarding_additional_info_pkey PRIMARY KEY (id);


--
-- Name: onboarding_candidate onboarding_candidate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onboarding_candidate
    ADD CONSTRAINT onboarding_candidate_pkey PRIMARY KEY (candidate_id);


--
-- Name: onboarding_job_details onboarding_job_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onboarding_job_details
    ADD CONSTRAINT onboarding_job_details_pkey PRIMARY KEY (candidate_id);


--
-- Name: onboarding_personal_details onboarding_personal_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onboarding_personal_details
    ADD CONSTRAINT onboarding_personal_details_pkey PRIMARY KEY (candidate_id);


--
-- PostgreSQL database dump complete
--

