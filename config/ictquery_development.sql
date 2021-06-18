--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Ubuntu 13.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.3

-- Started on 2021-06-18 10:06:12

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
-- TOC entry 202 (class 1259 OID 24576)
-- Name: Adress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Adress" (
    id bigint NOT NULL,
    street character varying,
    city character varying,
    "postalCode" character varying,
    country character varying,
    "houseNumber" character varying,
    "googleMapUrl" character varying
);


ALTER TABLE public."Adress" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 24584)
-- Name: Adress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Adress" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Adress_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 24793)
-- Name: ContractType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ContractType" (
    id bigint NOT NULL,
    name character varying
);


ALTER TABLE public."ContractType" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24791)
-- Name: ContractType_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."ContractType" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ContractType_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 204 (class 1259 OID 24628)
-- Name: Entreprise; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Entreprise" (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    about text,
    "contactMail" character varying(100),
    "contactPhone" character varying(100)
);


ALTER TABLE public."Entreprise" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24681)
-- Name: EntrepriseAdress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EntrepriseAdress" (
    id bigint NOT NULL,
    "idEntreprise" bigint NOT NULL,
    "idAdress" bigint NOT NULL
);


ALTER TABLE public."EntrepriseAdress" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24686)
-- Name: EntrepriseAdress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."EntrepriseAdress" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."EntrepriseAdress_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 205 (class 1259 OID 24637)
-- Name: Entreprise_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Entreprise" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Entreprise_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 24783)
-- Name: Experience; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Experience" (
    id bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public."Experience" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24781)
-- Name: Experience_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Experience" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Experience_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 24751)
-- Name: FavouriteEntreprise; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FavouriteEntreprise" (
    id bigint NOT NULL,
    "dateAjout" date NOT NULL,
    "idEntreprise" bigint NOT NULL,
    "idUser" bigint NOT NULL
);


ALTER TABLE public."FavouriteEntreprise" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24749)
-- Name: FavouriteEntreprise_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."FavouriteEntreprise" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."FavouriteEntreprise_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 24850)
-- Name: FavouriteJob; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FavouriteJob" (
    id bigint NOT NULL,
    "dateAjout" date NOT NULL,
    "idJob" bigint NOT NULL,
    "idUser" bigint NOT NULL
);


ALTER TABLE public."FavouriteJob" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24848)
-- Name: FavouriteJob_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."FavouriteJob" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."FavouriteJob_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 24803)
-- Name: Job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Job" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    "dateCreation" date NOT NULL,
    expectations text NOT NULL,
    description text NOT NULL,
    "idEntreprise" bigint NOT NULL,
    "idAdress" bigint NOT NULL,
    "idContract" bigint NOT NULL,
    "idExperience" bigint NOT NULL
);


ALTER TABLE public."Job" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24833)
-- Name: JobApplied; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."JobApplied" (
    id bigint NOT NULL,
    "dateAjout" date NOT NULL,
    "idJob" bigint NOT NULL,
    "idUser" bigint NOT NULL
);


ALTER TABLE public."JobApplied" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24831)
-- Name: JobApplied_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."JobApplied" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."JobApplied_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 24877)
-- Name: JobSector; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."JobSector" (
    id bigint NOT NULL,
    "idSector" bigint NOT NULL,
    "idJob" bigint NOT NULL
);


ALTER TABLE public."JobSector" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 24875)
-- Name: JobSector_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."JobSector" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."JobSector_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 24801)
-- Name: Job_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Job" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Job_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 24867)
-- Name: Sector; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sector" (
    id bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public."Sector" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24865)
-- Name: Sector_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Sector" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Sector_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 24768)
-- Name: SocialContact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SocialContact" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    "profilLink" character varying NOT NULL,
    "idEntreprise" bigint NOT NULL
);


ALTER TABLE public."SocialContact" OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24766)
-- Name: SocialContact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."SocialContact" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."SocialContact_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 209 (class 1259 OID 24700)
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    username character varying NOT NULL,
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    password character varying NOT NULL,
    mail character varying NOT NULL,
    "idAdress" bigint,
    id bigint NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24698)
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."User" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."User_id_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 201 (class 1259 OID 16395)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: martin
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO martin;

--
-- TOC entry 200 (class 1259 OID 16387)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: martin
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO martin;

--
-- TOC entry 3090 (class 0 OID 24576)
-- Dependencies: 202
-- Data for Name: Adress; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3105 (class 0 OID 24793)
-- Dependencies: 217
-- Data for Name: ContractType; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3092 (class 0 OID 24628)
-- Dependencies: 204
-- Data for Name: Entreprise; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3094 (class 0 OID 24681)
-- Dependencies: 206
-- Data for Name: EntrepriseAdress; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3103 (class 0 OID 24783)
-- Dependencies: 215
-- Data for Name: Experience; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3099 (class 0 OID 24751)
-- Dependencies: 211
-- Data for Name: FavouriteEntreprise; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3111 (class 0 OID 24850)
-- Dependencies: 223
-- Data for Name: FavouriteJob; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3107 (class 0 OID 24803)
-- Dependencies: 219
-- Data for Name: Job; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3109 (class 0 OID 24833)
-- Dependencies: 221
-- Data for Name: JobApplied; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3115 (class 0 OID 24877)
-- Dependencies: 227
-- Data for Name: JobSector; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3113 (class 0 OID 24867)
-- Dependencies: 225
-- Data for Name: Sector; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3101 (class 0 OID 24768)
-- Dependencies: 213
-- Data for Name: SocialContact; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3097 (class 0 OID 24700)
-- Dependencies: 209
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3089 (class 0 OID 16395)
-- Dependencies: 201
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: martin
--

INSERT INTO public.ar_internal_metadata (key, value, created_at, updated_at) VALUES ('environment', 'development', '2021-06-16 10:46:37.916834', '2021-06-16 10:46:37.916834');


--
-- TOC entry 3088 (class 0 OID 16387)
-- Dependencies: 200
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: martin
--



--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 203
-- Name: Adress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Adress_id_seq"', 1, true);


--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 216
-- Name: ContractType_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ContractType_id_seq"', 0, false);


--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 207
-- Name: EntrepriseAdress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."EntrepriseAdress_id_seq"', 0, false);


--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 205
-- Name: Entreprise_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Entreprise_id_seq"', 0, false);


--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 214
-- Name: Experience_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Experience_id_seq"', 0, false);


--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 210
-- Name: FavouriteEntreprise_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FavouriteEntreprise_id_seq"', 0, false);


--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 222
-- Name: FavouriteJob_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FavouriteJob_id_seq"', 0, false);


--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 220
-- Name: JobApplied_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobApplied_id_seq"', 0, false);


--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 226
-- Name: JobSector_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."JobSector_id_seq"', 0, false);


--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 218
-- Name: Job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Job_id_seq"', 0, false);


--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 224
-- Name: Sector_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Sector_id_seq"', 0, false);


--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 212
-- Name: SocialContact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SocialContact_id_seq"', 0, false);


--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 208
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_id_seq"', 0, false);


--
-- TOC entry 2917 (class 2606 OID 24580)
-- Name: Adress Adress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Adress"
    ADD CONSTRAINT "Adress_pkey" PRIMARY KEY (id);


--
-- TOC entry 2931 (class 2606 OID 24800)
-- Name: ContractType ContractType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ContractType"
    ADD CONSTRAINT "ContractType_pkey" PRIMARY KEY (id);


--
-- TOC entry 2921 (class 2606 OID 24685)
-- Name: EntrepriseAdress EntrepriseAdress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EntrepriseAdress"
    ADD CONSTRAINT "EntrepriseAdress_pkey" PRIMARY KEY (id);


--
-- TOC entry 2919 (class 2606 OID 24635)
-- Name: Entreprise Entreprise_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Entreprise"
    ADD CONSTRAINT "Entreprise_pkey" PRIMARY KEY (id);


--
-- TOC entry 2929 (class 2606 OID 24790)
-- Name: Experience Experience_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Experience"
    ADD CONSTRAINT "Experience_pkey" PRIMARY KEY (id);


--
-- TOC entry 2925 (class 2606 OID 24755)
-- Name: FavouriteEntreprise FavouriteEntreprise_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FavouriteEntreprise"
    ADD CONSTRAINT "FavouriteEntreprise_pkey" PRIMARY KEY (id);


--
-- TOC entry 2937 (class 2606 OID 24854)
-- Name: FavouriteJob FavouriteJob_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FavouriteJob"
    ADD CONSTRAINT "FavouriteJob_pkey" PRIMARY KEY (id);


--
-- TOC entry 2935 (class 2606 OID 24837)
-- Name: JobApplied JobApplied_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobApplied"
    ADD CONSTRAINT "JobApplied_pkey" PRIMARY KEY (id);


--
-- TOC entry 2941 (class 2606 OID 24881)
-- Name: JobSector JobSector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobSector"
    ADD CONSTRAINT "JobSector_pkey" PRIMARY KEY (id);


--
-- TOC entry 2933 (class 2606 OID 24810)
-- Name: Job Job_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Job"
    ADD CONSTRAINT "Job_pkey" PRIMARY KEY (id);


--
-- TOC entry 2939 (class 2606 OID 24874)
-- Name: Sector Sector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sector"
    ADD CONSTRAINT "Sector_pkey" PRIMARY KEY (id);


--
-- TOC entry 2927 (class 2606 OID 24775)
-- Name: SocialContact SocialContact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SocialContact"
    ADD CONSTRAINT "SocialContact_pkey" PRIMARY KEY (id);


--
-- TOC entry 2923 (class 2606 OID 24707)
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- TOC entry 2915 (class 2606 OID 16402)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: martin
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 2913 (class 2606 OID 16394)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: martin
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 2945 (class 2606 OID 24756)
-- Name: FavouriteEntreprise FavouriteEntreprise_idEntreprise_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FavouriteEntreprise"
    ADD CONSTRAINT "FavouriteEntreprise_idEntreprise_fkey" FOREIGN KEY ("idEntreprise") REFERENCES public."Entreprise"(id);


--
-- TOC entry 2946 (class 2606 OID 24761)
-- Name: FavouriteEntreprise FavouriteEntreprise_idUser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FavouriteEntreprise"
    ADD CONSTRAINT "FavouriteEntreprise_idUser_fkey" FOREIGN KEY ("idUser") REFERENCES public."User"(id);


--
-- TOC entry 2954 (class 2606 OID 24855)
-- Name: FavouriteJob FavouriteJob_idJob_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FavouriteJob"
    ADD CONSTRAINT "FavouriteJob_idJob_fkey" FOREIGN KEY ("idJob") REFERENCES public."Job"(id);


--
-- TOC entry 2955 (class 2606 OID 24860)
-- Name: FavouriteJob FavouriteJob_idUser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FavouriteJob"
    ADD CONSTRAINT "FavouriteJob_idUser_fkey" FOREIGN KEY ("idUser") REFERENCES public."User"(id);


--
-- TOC entry 2952 (class 2606 OID 24838)
-- Name: JobApplied JobApplied_idJob_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobApplied"
    ADD CONSTRAINT "JobApplied_idJob_fkey" FOREIGN KEY ("idJob") REFERENCES public."Job"(id);


--
-- TOC entry 2953 (class 2606 OID 24843)
-- Name: JobApplied JobApplied_idUser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobApplied"
    ADD CONSTRAINT "JobApplied_idUser_fkey" FOREIGN KEY ("idUser") REFERENCES public."User"(id);


--
-- TOC entry 2957 (class 2606 OID 24887)
-- Name: JobSector JobSector_idJob_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobSector"
    ADD CONSTRAINT "JobSector_idJob_fkey" FOREIGN KEY ("idJob") REFERENCES public."Job"(id);


--
-- TOC entry 2956 (class 2606 OID 24882)
-- Name: JobSector JobSector_idSector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobSector"
    ADD CONSTRAINT "JobSector_idSector_fkey" FOREIGN KEY ("idSector") REFERENCES public."Sector"(id);


--
-- TOC entry 2949 (class 2606 OID 24816)
-- Name: Job Job_idAdress_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Job"
    ADD CONSTRAINT "Job_idAdress_fkey" FOREIGN KEY ("idAdress") REFERENCES public."Adress"(id);


--
-- TOC entry 2950 (class 2606 OID 24821)
-- Name: Job Job_idContract_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Job"
    ADD CONSTRAINT "Job_idContract_fkey" FOREIGN KEY ("idContract") REFERENCES public."ContractType"(id);


--
-- TOC entry 2948 (class 2606 OID 24811)
-- Name: Job Job_idEntreprise_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Job"
    ADD CONSTRAINT "Job_idEntreprise_fkey" FOREIGN KEY ("idEntreprise") REFERENCES public."Entreprise"(id);


--
-- TOC entry 2951 (class 2606 OID 24826)
-- Name: Job Job_idExperience_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Job"
    ADD CONSTRAINT "Job_idExperience_fkey" FOREIGN KEY ("idExperience") REFERENCES public."Experience"(id);


--
-- TOC entry 2947 (class 2606 OID 24776)
-- Name: SocialContact SocialContact_idEntreprise_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SocialContact"
    ADD CONSTRAINT "SocialContact_idEntreprise_fkey" FOREIGN KEY ("idEntreprise") REFERENCES public."Entreprise"(id);


--
-- TOC entry 2943 (class 2606 OID 24693)
-- Name: EntrepriseAdress idAdress; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EntrepriseAdress"
    ADD CONSTRAINT "idAdress" FOREIGN KEY ("idAdress") REFERENCES public."Adress"(id) NOT VALID;


--
-- TOC entry 2944 (class 2606 OID 24708)
-- Name: User idAdress; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "idAdress" FOREIGN KEY ("idAdress") REFERENCES public."Adress"(id);


--
-- TOC entry 2942 (class 2606 OID 24688)
-- Name: EntrepriseAdress idEntreprise; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EntrepriseAdress"
    ADD CONSTRAINT "idEntreprise" FOREIGN KEY ("idEntreprise") REFERENCES public."Entreprise"(id) NOT VALID;


-- Completed on 2021-06-18 10:06:13

--
-- PostgreSQL database dump complete
--

