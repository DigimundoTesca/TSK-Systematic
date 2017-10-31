--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: home_marca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE home_marca (
    id integer NOT NULL,
    "nombreMarca" character varying(50) NOT NULL
);


ALTER TABLE home_marca OWNER TO postgres;

--
-- Name: home_marca_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE home_marca_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE home_marca_id_seq OWNER TO postgres;

--
-- Name: home_marca_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE home_marca_id_seq OWNED BY home_marca.id;


--
-- Name: home_modelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE home_modelo (
    id integer NOT NULL,
    "nombreModelo" character varying(50) NOT NULL,
    tipouber character varying(15) NOT NULL,
    marca_id integer NOT NULL
);


ALTER TABLE home_modelo OWNER TO postgres;

--
-- Name: home_modelo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE home_modelo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE home_modelo_id_seq OWNER TO postgres;

--
-- Name: home_modelo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE home_modelo_id_seq OWNED BY home_modelo.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: home_marca id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_marca ALTER COLUMN id SET DEFAULT nextval('home_marca_id_seq'::regclass);


--
-- Name: home_modelo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_modelo ALTER COLUMN id SET DEFAULT nextval('home_modelo_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add post	1	add_post
2	Can change post	1	change_post
3	Can delete post	1	delete_post
4	Can add marca	2	add_marca
5	Can change marca	2	change_marca
6	Can delete marca	2	delete_marca
7	Can add modelo	3	add_modelo
8	Can change modelo	3	change_modelo
9	Can delete modelo	3	delete_modelo
10	Can add log entry	4	add_logentry
11	Can change log entry	4	change_logentry
12	Can delete log entry	4	delete_logentry
13	Can add permission	5	add_permission
14	Can change permission	5	change_permission
15	Can delete permission	5	delete_permission
16	Can add group	6	add_group
17	Can change group	6	change_group
18	Can delete group	6	delete_group
19	Can add user	7	add_user
20	Can change user	7	change_user
21	Can delete user	7	delete_user
22	Can add content type	8	add_contenttype
23	Can change content type	8	change_contenttype
24	Can delete content type	8	delete_contenttype
25	Can add session	9	add_session
26	Can change session	9	change_session
27	Can delete session	9	delete_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$UBYjQtNUWjtd$z0ZGZ99EFLBqNBInbGniZ5J0pAns5UX7vm/HUspoIDw=	2017-10-30 18:32:16.892017-05	t	Rich			drdr_2@hotmail.com	t	t	2017-10-30 17:10:19.953159-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-10-30 20:59:50.912817-05	182	modelo object	3		3	1
2	2017-10-30 20:59:51.220512-05	181	modelo object	3		3	1
3	2017-10-30 20:59:51.22448-05	180	modelo object	3		3	1
4	2017-10-30 20:59:51.227472-05	179	modelo object	3		3	1
5	2017-10-30 20:59:51.230506-05	178	modelo object	3		3	1
6	2017-10-30 20:59:51.233455-05	177	modelo object	3		3	1
7	2017-10-30 20:59:51.23657-05	176	modelo object	3		3	1
8	2017-10-30 20:59:51.239499-05	175	modelo object	3		3	1
9	2017-10-30 20:59:51.241462-05	174	modelo object	3		3	1
10	2017-10-30 20:59:51.244472-05	173	modelo object	3		3	1
11	2017-10-30 20:59:51.246501-05	172	modelo object	3		3	1
12	2017-10-30 20:59:51.248468-05	171	modelo object	3		3	1
13	2017-10-30 20:59:51.251992-05	170	modelo object	3		3	1
14	2017-10-30 20:59:51.254502-05	169	modelo object	3		3	1
15	2017-10-30 20:59:51.257004-05	168	modelo object	3		3	1
16	2017-10-30 20:59:51.259001-05	167	modelo object	3		3	1
17	2017-10-30 20:59:51.2615-05	166	modelo object	3		3	1
18	2017-10-30 20:59:51.264002-05	165	modelo object	3		3	1
19	2017-10-30 20:59:51.267005-05	164	modelo object	3		3	1
20	2017-10-30 20:59:51.269524-05	163	modelo object	3		3	1
21	2017-10-30 20:59:51.272538-05	162	modelo object	3		3	1
22	2017-10-30 20:59:51.275529-05	161	modelo object	3		3	1
23	2017-10-30 20:59:51.277615-05	160	modelo object	3		3	1
24	2017-10-30 20:59:51.279532-05	159	modelo object	3		3	1
25	2017-10-30 20:59:51.282534-05	158	modelo object	3		3	1
26	2017-10-30 20:59:51.285542-05	157	modelo object	3		3	1
27	2017-10-30 20:59:51.287539-05	156	modelo object	3		3	1
28	2017-10-30 20:59:51.290542-05	155	modelo object	3		3	1
29	2017-10-30 20:59:51.292625-05	154	modelo object	3		3	1
30	2017-10-30 20:59:51.294545-05	153	modelo object	3		3	1
31	2017-10-30 20:59:51.297548-05	152	modelo object	3		3	1
32	2017-10-30 20:59:51.299591-05	151	modelo object	3		3	1
33	2017-10-30 20:59:51.302551-05	150	modelo object	3		3	1
34	2017-10-30 20:59:51.305563-05	149	modelo object	3		3	1
35	2017-10-30 20:59:51.307557-05	148	modelo object	3		3	1
36	2017-10-30 20:59:51.310577-05	147	modelo object	3		3	1
37	2017-10-30 20:59:51.312595-05	146	modelo object	3		3	1
38	2017-10-30 20:59:51.31556-05	145	modelo object	3		3	1
39	2017-10-30 20:59:51.317594-05	144	modelo object	3		3	1
40	2017-10-30 20:59:51.32058-05	143	modelo object	3		3	1
41	2017-10-30 20:59:51.322676-05	142	modelo object	3		3	1
42	2017-10-30 20:59:51.324568-05	141	modelo object	3		3	1
43	2017-10-30 20:59:51.327581-05	140	modelo object	3		3	1
44	2017-10-30 20:59:51.329576-05	139	modelo object	3		3	1
45	2017-10-30 20:59:51.332577-05	138	modelo object	3		3	1
46	2017-10-30 20:59:51.335621-05	137	modelo object	3		3	1
47	2017-10-30 20:59:51.338592-05	136	modelo object	3		3	1
48	2017-10-30 20:59:51.340587-05	135	modelo object	3		3	1
49	2017-10-30 20:59:51.343635-05	134	modelo object	3		3	1
50	2017-10-30 20:59:51.345597-05	133	modelo object	3		3	1
51	2017-10-30 20:59:51.347631-05	132	modelo object	3		3	1
52	2017-10-30 20:59:51.350614-05	131	modelo object	3		3	1
53	2017-10-30 20:59:51.353628-05	130	modelo object	3		3	1
54	2017-10-30 20:59:51.356112-05	129	modelo object	3		3	1
55	2017-10-30 20:59:51.358111-05	128	modelo object	3		3	1
56	2017-10-30 20:59:51.360612-05	127	modelo object	3		3	1
57	2017-10-30 20:59:51.363114-05	126	modelo object	3		3	1
58	2017-10-30 20:59:51.366113-05	125	modelo object	3		3	1
59	2017-10-30 20:59:51.368656-05	124	modelo object	3		3	1
60	2017-10-30 20:59:51.371684-05	123	modelo object	3		3	1
61	2017-10-30 20:59:51.373636-05	122	modelo object	3		3	1
62	2017-10-30 20:59:51.375632-05	121	modelo object	3		3	1
63	2017-10-30 20:59:51.378641-05	120	modelo object	3		3	1
64	2017-10-30 20:59:51.380719-05	119	modelo object	3		3	1
65	2017-10-30 20:59:51.38265-05	118	modelo object	3		3	1
66	2017-10-30 20:59:51.385694-05	117	modelo object	3		3	1
67	2017-10-30 20:59:51.388686-05	116	modelo object	3		3	1
68	2017-10-30 20:59:51.391663-05	115	modelo object	3		3	1
69	2017-10-30 20:59:51.393654-05	114	modelo object	3		3	1
70	2017-10-30 20:59:51.395719-05	113	modelo object	3		3	1
71	2017-10-30 20:59:51.39871-05	112	modelo object	3		3	1
72	2017-10-30 20:59:51.400655-05	111	modelo object	3		3	1
73	2017-10-30 20:59:51.404658-05	110	modelo object	3		3	1
74	2017-10-30 20:59:51.4077-05	109	modelo object	3		3	1
75	2017-10-30 20:59:51.409665-05	108	modelo object	3		3	1
76	2017-10-30 20:59:51.411664-05	107	modelo object	3		3	1
77	2017-10-30 20:59:51.414668-05	106	modelo object	3		3	1
78	2017-10-30 20:59:51.41667-05	105	modelo object	3		3	1
79	2017-10-30 20:59:51.419669-05	104	modelo object	3		3	1
80	2017-10-30 20:59:51.422716-05	103	modelo object	3		3	1
81	2017-10-30 20:59:51.425676-05	102	modelo object	3		3	1
82	2017-10-30 20:59:51.428685-05	101	modelo object	3		3	1
83	2017-10-30 20:59:51.430681-05	100	modelo object	3		3	1
84	2017-10-30 20:59:51.433681-05	99	modelo object	3		3	1
85	2017-10-30 20:59:51.436703-05	98	modelo object	3		3	1
86	2017-10-30 20:59:51.438733-05	97	modelo object	3		3	1
87	2017-10-30 20:59:51.440695-05	96	modelo object	3		3	1
88	2017-10-30 20:59:51.443693-05	95	modelo object	3		3	1
89	2017-10-30 20:59:51.445765-05	94	modelo object	3		3	1
90	2017-10-30 20:59:51.447697-05	93	modelo object	3		3	1
91	2017-10-30 20:59:51.451744-05	92	modelo object	3		3	1
92	2017-10-30 20:59:51.454254-05	91	modelo object	3		3	1
93	2017-10-30 20:59:51.457273-05	90	modelo object	3		3	1
94	2017-10-30 20:59:51.459765-05	89	modelo object	3		3	1
95	2017-10-30 20:59:51.462268-05	88	modelo object	3		3	1
96	2017-10-30 20:59:51.464783-05	87	modelo object	3		3	1
97	2017-10-30 20:59:51.466764-05	86	modelo object	3		3	1
98	2017-10-30 20:59:51.469783-05	85	modelo object	3		3	1
99	2017-10-30 20:59:51.471788-05	84	modelo object	3		3	1
100	2017-10-30 20:59:51.47478-05	83	modelo object	3		3	1
101	2017-10-30 20:59:51.476828-05	82	modelo object	3		3	1
102	2017-10-30 20:59:51.478785-05	81	modelo object	3		3	1
103	2017-10-30 20:59:51.481794-05	80	modelo object	3		3	1
104	2017-10-30 20:59:51.484833-05	79	modelo object	3		3	1
105	2017-10-30 20:59:51.48779-05	78	modelo object	3		3	1
106	2017-10-30 20:59:51.490793-05	77	modelo object	3		3	1
107	2017-10-30 20:59:51.493794-05	76	modelo object	3		3	1
108	2017-10-30 20:59:51.496805-05	75	modelo object	3		3	1
109	2017-10-30 20:59:51.502804-05	74	modelo object	3		3	1
110	2017-10-30 20:59:51.505809-05	73	modelo object	3		3	1
111	2017-10-30 20:59:51.507811-05	72	modelo object	3		3	1
112	2017-10-30 20:59:51.50981-05	71	modelo object	3		3	1
113	2017-10-30 20:59:51.512815-05	70	modelo object	3		3	1
114	2017-10-30 20:59:51.515816-05	69	modelo object	3		3	1
115	2017-10-30 20:59:51.518819-05	68	modelo object	3		3	1
116	2017-10-30 20:59:51.521848-05	67	modelo object	3		3	1
117	2017-10-30 20:59:51.525841-05	66	modelo object	3		3	1
118	2017-10-30 20:59:51.528861-05	65	modelo object	3		3	1
119	2017-10-30 20:59:51.531872-05	64	modelo object	3		3	1
120	2017-10-30 20:59:51.533835-05	63	modelo object	3		3	1
121	2017-10-30 20:59:51.536834-05	62	modelo object	3		3	1
122	2017-10-30 20:59:51.538864-05	61	modelo object	3		3	1
123	2017-10-30 20:59:51.541895-05	60	modelo object	3		3	1
124	2017-10-30 20:59:51.543893-05	59	modelo object	3		3	1
125	2017-10-30 20:59:51.545846-05	58	modelo object	3		3	1
126	2017-10-30 20:59:51.549849-05	57	modelo object	3		3	1
127	2017-10-30 20:59:51.553396-05	56	modelo object	3		3	1
128	2017-10-30 20:59:51.555378-05	55	modelo object	3		3	1
129	2017-10-30 20:59:51.557383-05	54	modelo object	3		3	1
130	2017-10-30 20:59:51.559883-05	53	modelo object	3		3	1
131	2017-10-30 20:59:51.561884-05	52	modelo object	3		3	1
132	2017-10-30 20:59:51.56439-05	51	modelo object	3		3	1
133	2017-10-30 20:59:51.566888-05	50	modelo object	3		3	1
134	2017-10-30 20:59:51.56881-05	49	modelo object	3		3	1
135	2017-10-30 20:59:51.571812-05	48	modelo object	3		3	1
136	2017-10-30 20:59:51.573817-05	47	modelo object	3		3	1
137	2017-10-30 20:59:51.575815-05	46	modelo object	3		3	1
138	2017-10-30 20:59:51.578841-05	45	modelo object	3		3	1
139	2017-10-30 20:59:51.580819-05	44	modelo object	3		3	1
140	2017-10-30 20:59:51.583823-05	43	modelo object	3		3	1
141	2017-10-30 20:59:51.586826-05	42	modelo object	3		3	1
142	2017-10-30 20:59:51.589827-05	41	modelo object	3		3	1
143	2017-10-30 20:59:51.59183-05	40	modelo object	3		3	1
144	2017-10-30 20:59:51.593833-05	39	modelo object	3		3	1
145	2017-10-30 20:59:51.596854-05	38	modelo object	3		3	1
146	2017-10-30 20:59:51.598836-05	37	modelo object	3		3	1
147	2017-10-30 20:59:51.601839-05	36	modelo object	3		3	1
148	2017-10-30 20:59:51.603844-05	35	modelo object	3		3	1
149	2017-10-30 20:59:51.606843-05	34	modelo object	3		3	1
150	2017-10-30 20:59:51.609846-05	33	modelo object	3		3	1
151	2017-10-30 20:59:51.612851-05	32	modelo object	3		3	1
152	2017-10-30 20:59:51.614877-05	31	modelo object	3		3	1
153	2017-10-30 20:59:51.61787-05	30	modelo object	3		3	1
154	2017-10-30 20:59:51.619858-05	29	modelo object	3		3	1
155	2017-10-30 20:59:51.621859-05	28	modelo object	3		3	1
156	2017-10-30 20:59:51.624858-05	27	modelo object	3		3	1
157	2017-10-30 20:59:51.626861-05	26	modelo object	3		3	1
158	2017-10-30 20:59:51.629863-05	25	modelo object	3		3	1
159	2017-10-30 20:59:51.631866-05	24	modelo object	3		3	1
160	2017-10-30 20:59:51.633866-05	23	modelo object	3		3	1
161	2017-10-30 20:59:51.63687-05	22	modelo object	3		3	1
162	2017-10-30 20:59:51.638875-05	21	modelo object	3		3	1
163	2017-10-30 20:59:51.641875-05	20	modelo object	3		3	1
164	2017-10-30 20:59:51.643881-05	19	modelo object	3		3	1
165	2017-10-30 20:59:51.645898-05	18	modelo object	3		3	1
166	2017-10-30 20:59:51.647906-05	17	modelo object	3		3	1
167	2017-10-30 20:59:51.650884-05	16	modelo object	3		3	1
168	2017-10-30 20:59:51.654393-05	15	modelo object	3		3	1
169	2017-10-30 20:59:51.656918-05	14	modelo object	3		3	1
170	2017-10-30 20:59:51.659416-05	13	modelo object	3		3	1
171	2017-10-30 20:59:51.661399-05	12	modelo object	3		3	1
172	2017-10-30 20:59:51.663903-05	11	modelo object	3		3	1
173	2017-10-30 20:59:51.666906-05	10	modelo object	3		3	1
174	2017-10-30 20:59:51.669704-05	9	modelo object	3		3	1
175	2017-10-30 20:59:51.672708-05	8	modelo object	3		3	1
176	2017-10-30 20:59:51.675711-05	7	modelo object	3		3	1
177	2017-10-30 20:59:51.677712-05	6	modelo object	3		3	1
178	2017-10-30 20:59:51.679713-05	5	modelo object	3		3	1
179	2017-10-30 20:59:51.682716-05	4	modelo object	3		3	1
180	2017-10-30 20:59:51.684718-05	3	modelo object	3		3	1
181	2017-10-30 20:59:51.68772-05	2	modelo object	3		3	1
182	2017-10-30 20:59:51.689722-05	1	modelo object	3		3	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	home	post
2	home	marca
3	home	modelo
4	admin	logentry
5	auth	permission
6	auth	group
7	auth	user
8	contenttypes	contenttype
9	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-10-30 16:58:35.555466-05
2	auth	0001_initial	2017-10-30 16:58:37.453062-05
3	admin	0001_initial	2017-10-30 16:58:37.626353-05
4	admin	0002_logentry_remove_auto_add	2017-10-30 16:58:37.663431-05
5	contenttypes	0002_remove_content_type_name	2017-10-30 16:58:37.737485-05
6	auth	0002_alter_permission_name_max_length	2017-10-30 16:58:37.756506-05
7	auth	0003_alter_user_email_max_length	2017-10-30 16:58:37.783552-05
8	auth	0004_alter_user_username_opts	2017-10-30 16:58:37.806584-05
9	auth	0005_alter_user_last_login_null	2017-10-30 16:58:37.833563-05
10	auth	0006_require_contenttypes_0002	2017-10-30 16:58:37.840569-05
11	auth	0007_alter_validators_add_error_messages	2017-10-30 16:58:37.867629-05
12	auth	0008_alter_user_username_max_length	2017-10-30 16:58:37.932685-05
13	home	0001_initial	2017-10-30 16:58:37.994888-05
14	home	0002_auto_20171012_1306	2017-10-30 16:58:38.097099-05
15	home	0003_marca_modelo	2017-10-30 16:58:38.21325-05
16	home	0004_modelo_marca	2017-10-30 16:58:38.343391-05
17	home	0005_auto_20171030_1440	2017-10-30 16:58:38.681142-05
18	sessions	0001_initial	2017-10-30 16:58:39.133284-05
19	home	0006_auto_20171030_2005	2017-10-30 21:05:50.674554-05
20	home	0007_auto_20171031_1411	2017-10-31 15:37:43.077112-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
9tpnkobi3eguipjxbl20y9bvf2cigc0j	Y2YwNmMyMjg5NzM0MTg0MjQzMjZiMzE2OGQ2MTgzYzA0OTkwNzA2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYTdlODI1OGZjMWU0NTRiYjJmN2M4YTMyMTQxODE4NzY2YzhjMmE5In0=	2017-11-13 17:32:16.897027-06
\.


--
-- Data for Name: home_marca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY home_marca (id, "nombreMarca") FROM stdin;
1	Acura
2	AgustaWestland
3	Airbus
4	Alfa Romeo
5	AM General
6	Aprilia
7	Ashok Leyland
8	Aston Martin
9	Atul
10	Audi
11	BAIC
12	Bajaj
13	Baojun
14	BAW
15	Bell
16	Benelli
17	Beneteau
18	Bentley
19	Besturn
20	Big Boy
21	BMW
22	Brilliance
23	Bugatti
24	Buick
25	BYD
26	Cadillac
27	Campagna
28	Can-Am
29	Carlsson
30	Chana
31	Chang'an Ford
32	Chang'an Suzuki
33	Chang'an
34	Changfeng
35	Changhe Suzuki
36	Chery
37	Chevrolet
38	Chrysler
39	Citroen
40	CMC
41	Coda
42	Dacia
43	Daewoo
44	DAF
45	Daihatsu
46	Datsun
47	DeLorean
48	DENZA
49	DFSK
50	Dodge
51	Dongfeng
52	DR
53	DS
54	Ducati
55	Effa
56	Englon
57	Eurocopter
58	FAW Mazda
59	FAW
60	Ferrari
61	Fiat
62	Fisker
63	Foday
64	Force
65	Ford
66	Foton
67	GAC Toyota
68	GAC Trumpchi
69	Geely
70	GEM
71	GM
72	GMC
73	Gonow
74	Govecs
75	Great Wall
76	Guangqi Honda
77	Hafei
78	Haima
79	Happy
80	Harley Davidson
81	Hawtai
82	Hero Honda
83	Hero
84	Holden
85	Honda
86	Hongqi
87	Huanghai
88	Hummer
89	Hyosung
90	Hyundai
91	ICML
92	IKCO
93	Infiniti
94	Innoson
95	Isuzu
96	Italika
97	Iveco
98	JAC Motors
99	Jaguar
100	Jeep
101	Jinbei
102	JMC
103	Jonway
104	Joylong
105	JRD
106	Kandi
107	KAPL
108	Kawasaki
109	Kawei
110	Kenbo
111	Kia
112	Koenigsegg
113	KTM
114	Kymco
115	Lada
116	Lamborghini
117	Lancia
118	Land Rover
119	Landwind
120	LCK
121	LDV
122	Leclerc
123	Lexus
124	Lifan
125	Lincoln
126	Lotus
127	Luxgen
128	Mahindra
129	MAN
130	Maruti Suzuki
131	Maserati
132	Maxus
133	Maybach
134	Mazda
135	MBK
136	McLaren
137	Mercedes-Benz
138	Mercury
139	MG
140	Minerva
141	Mini
142	Mitsubishi
143	Mitsuoka
144	Moto Guzzi
145	MV Agusta
146	Naza
147	Nissan
148	Oldsmobile
149	Opel
150	Orient
151	Pagani
152	Perodua
153	Peugeot
154	Piaggio
155	Plymouth
156	Polaris
157	Pontiac
158	Porsche
159	Proton
160	Qoros
161	Ram Trucks
162	RAM
163	Regal Raptor
164	Renault Samsung
165	Renault
166	Roewe
167	Rolls-Royce
168	Rover
169	Royal Enfield
170	Saab
171	Saipa
172	Saleen
173	Saturn
174	Scion
175	Scomadi
176	Seat
177	Self-Driving
178	Shanghai Maple
179	Shineray
180	Shuanghuan Auto
181	Skoda
182	Smart
183	Sonalika
184	Soueast
185	Speranza
186	Spyker
187	Ssangyong
188	Stallion
189	Subaru
190	Suzuki
191	SYM
192	Tata
193	Taxi
194	Tesla
195	Tobe
196	Toyota
197	Trabant
198	Triumph
199	TVR
200	TVS
201	UAZ
202	Uber
203	Vauxhall
204	Venucia
205	Vespa
206	Viar
207	Victory
208	Viva
209	Volkswagen
210	Volvo
211	Vortex
212	VPG
213	Wajer
214	Weichai
215	Wuling
216	Yamaha
217	Yema Auto
218	ZAP Jonway
219	ZAZ
220	ZD
221	Zero Engineering
222	Zhonghua
223	ZNEN
224	Zongshen
225	Zotye
226	ZXAUTO
\.


--
-- Data for Name: home_modelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY home_modelo (id, "nombreModelo", tipouber, marca_id) FROM stdin;
194	CL	UX	1
195	CSX	UX	1
196	EL	UX	1
197	ILX	UX	1
198	Integra	UX	1
199	MDX	UX	1
200	NSX	UX	1
201	RDX	UX	1
202	RL	UX	1
203	RLX	UX	1
204	RSX	UX	1
205	TL	UX	1
206	TLX	UX	1
207	TSX	UX	1
208	ZDX	UX	1
209	AW109	UX	2
210	H125	UX	3
211	147	UX	4
212	156	UX	4
213	159	UX	4
214	166	UX	4
215	4C Spider	UX	4
216	4C	UX	4
217	939	UX	4
218	Giulia	UX	4
219	Giulietta	UX	4
220	GT	UX	4
221	GTV	UX	4
222	Mito	UX	4
223	Scirocco	UX	4
224	MV-1	UX	5
225	Caponord	UX	6
226	Dorsoduro	UX	6
227	Mana	UX	6
228	RS4	UX	6
229	RX	UX	6
230	Shiver	UX	6
231	SR	UX	6
232	SX	UX	6
233	Tuono V4	UX	6
234	Stile	UX	7
235	DB7	UX	8
236	DB9	UX	8
237	DBS	UX	8
238	One-77	UX	8
239	Rapide	UX	8
240	Vanquish	UX	8
241	Vantage	UX	8
242	Virage	UX	8
243	Gem	UX	9
244	Gemini	UX	9
245	Smart	UX	9
246	A1	UX	10
247	A2	UX	10
248	A3 Cabriolet	UX	10
249	A3 Sportback	UX	10
250	A3	UX	10
251	A4 Avant	UX	10
252	A4 Cabriolet	UX	10
253	A4	UX	10
254	A5 Avant	UX	10
255	A5 Cabriolet	UX	10
256	A5	UX	10
257	A6 Avant	UX	10
258	A6	UX	10
259	A7	UX	10
260	A8 L	UX	10
261	A8	UX	10
262	Allroad	UX	10
263	e-tron	UX	10
264	Q3	UX	10
265	Q5	UX	10
266	Q7	UX	10
267	Q9	UX	10
268	R8	UX	10
269	RS 3	UX	10
270	RS 4 Cabriolet	UX	10
271	RS 4	UX	10
272	RS 5	UX	10
273	RS 6	UX	10
274	RS 7	UX	10
275	RS Q3	UX	10
276	S1	UX	10
277	S3	UX	10
278	S4 Avant	UX	10
279	S4 Cabriolet	UX	10
280	S4	UX	10
281	S5 Cabriolet	UX	10
282	S5	UX	10
283	S6	UX	10
284	S7	UX	10
285	S8	UX	10
286	SQ5	UX	10
287	TT Roadster	UX	10
288	TT	UX	10
289	TTS Roadster	UX	10
290	TTS	UX	10
291	A113	UX	11
292	A115	UX	11
293	B40	UX	11
294	BJ40	UX	11
295	D20	UX	11
296	E150	UX	11
297	ES210	UX	11
298	EU220	UX	11
299	EU260	UX	11
300	EV160	UX	11
301	EV200	UX	11
302	Gladiator	UX	11
303	Kenbo S3	UX	11
304	M20	UX	11
305	M30	UX	11
306	Magic Speed S2	UX	11
307	Magic Speed S3	UX	11
308	Plus	UX	11
309	Senova A1	UX	11
310	Senova CC	UX	11
311	Senova D20	UX	11
312	Senova D50	UX	11
313	Senova D60	UX	11
314	Senova D70	UX	11
315	Senova D80	UX	11
316	Senova X25	UX	11
317	Senova X65	UX	11
318	Up Hatchback	UX	11
319	Up	UX	11
320	X25	UX	11
321	Auto	UX	12
322	Avenger Cruise 220	UX	12
323	Avenger Street 150	UX	12
324	Avenger Street 220	UX	12
325	CT 100	UX	12
326	Discover 100M	UX	12
327	Discover 100T	UX	12
328	Discover 125ST	UX	12
329	Discover 135	UX	12
330	Discover 150	UX	12
331	Kawasaki Ninja 650R	UX	12
332	Kristal	UX	12
333	Platina 100	UX	12
334	Pulsar 135	UX	12
335	Pulsar 150	UX	12
336	Pulsar 180	UX	12
337	Pulsar 200AS	UX	12
338	Pulsar 200NS	UX	12
339	Pulsar 200RS	UX	12
340	Pulsar 220	UX	12
341	RE Compact	UX	12
342	RE Maxima	UX	12
343	RE Optima	UX	12
344	XCD	UX	12
345	560	UX	13
346	610	UX	13
347	630	UX	13
348	730	UX	13
349	Lechi	UX	13
350	Beiqi 007	UX	14
351	BW007	UX	14
352	Lu Pa	UX	14
353	Rui Ling	UX	14
354	Warrior	UX	14
355	407	UX	15
356	BN600j	UX	16
357	Cafe Racer	UX	16
358	Caffenero	UX	16
359	Macis	UX	16
360	Patagonian Eagle	UX	16
361	Python	UX	16
362	Seta	UX	16
363	TNT	UX	16
364	TRE 1130k	UX	16
365	X-150	UX	16
366	Zafferano	UX	16
367	ZenZero	UX	16
368	Antares	UX	17
369	Arnage	UX	18
370	Azure	UX	18
371	Bentayga	UX	18
372	Brooklands	UX	18
373	Continental	UX	18
374	Flying Spur	UX	18
375	Mulsanne	UX	18
384	S1	UX	18
385	T2	UX	18
386	B30	UX	19
387	B50	UX	19
388	B70	UX	19
389	B90	UX	19
390	X80	UX	19
391	F35	UX	20
392	Powerflite	UX	20
393	RCT	UX	20
394	Revival	UX	20
395	Swift	UX	20
396	Yeti	UX	20
397	1-series	UX	21
398	2-series Active Tourer	UX	21
399	2-series Gran Tourer	UX	21
400	2-series	UX	21
401	3-series Gran Turismo	UX	21
402	3-series	UX	21
403	4-series Gran Coupe	UX	21
404	4-series	UX	21
405	5-series Gran Turismo	UX	21
406	5-series	UX	21
407	6-series Gran Coupe	UX	21
408	6-series	UX	21
409	7-series	UX	21
410	ActiveHybrid 5	UX	21
411	Alpina B6	UX	21
412	Alpina B7	UX	21
413	C	UX	21
414	F	UX	21
415	G	UX	21
416	i3	UX	21
417	i8	UX	21
418	K	UX	21
419	M3	UX	21
420	M4	UX	21
421	M5	UX	21
422	M6 Gran Coupe	UX	21
423	M6	UX	21
424	R	UX	21
425	S	UX	21
426	X1	UX	21
427	X3	UX	21
428	X4	UX	21
429	X5	UX	21
430	X6	UX	21
431	Z4 Roadster	UX	21
432	Z4	UX	21
433	Z8	UX	21
434	A3	UX	22
435	BS2	UX	22
436	BS4	UX	22
437	BS6	UX	22
438	Euphoria	UX	22
439	FRV	UX	22
440	FSV	UX	22
441	Grandor	UX	22
442	H220	UX	22
443	H230	UX	22
444	H330	UX	22
445	H530	UX	22
446	Huasong 7	UX	22
447	SY	UX	22
448	V3	UX	22
449	V5	UX	22
450	Veyron	UX	23
451	Allure	UX	24
452	Cascada	UX	24
453	Century	UX	24
454	Enclave	UX	24
455	Encore	UX	24
456	Envision	UX	24
457	Excelle	UX	24
458	GL8	UX	24
459	Hideo	UX	24
460	LaCrosse	UX	24
461	LeSabre	UX	24
462	Lucerne	UX	24
463	Park Avenue	UX	24
464	Rainier	UX	24
465	Regal	UX	24
466	Rendezvous	UX	24
467	Royaum	UX	24
468	Terraza	UX	24
469	Verano	UX	24
470	e5	UX	25
471	e6	UX	25
472	F0	UX	25
473	F3	UX	25
474	F3R	UX	25
475	F5 Suri	UX	25
476	F6	UX	25
477	F7	UX	25
478	Flyer	UX	25
479	G3	UX	25
480	G3R	UX	25
481	G5	UX	25
482	G6	UX	25
483	K9	UX	25
484	L3	UX	25
485	M6	UX	25
486	Qin	UX	25
487	S6	UX	25
488	S7	UX	25
489	S8	UX	25
490	Sirui	UX	25
491	Song	UX	25
492	Speed Sharp	UX	25
493	Tang	UX	25
494	ATS	UX	26
495	ATS-V	UX	26
496	BLS	UX	26
497	Catera	UX	26
498	CT6	UX	26
499	CTS	UX	26
500	CTS-V	UX	26
501	DeVille	UX	26
502	DTS	UX	26
503	Eldorado	UX	26
504	ELR	UX	26
505	Escalade EXT	UX	26
506	Escalade	UX	26
507	Fleetwood	UX	26
508	Miller-Meteor	UX	26
509	Seville	UX	26
510	SRX	UX	26
511	Stretch Limo	UX	26
512	STS	UX	26
513	XLR	UX	26
514	XT5	UX	26
515	XTS	UX	26
516	T-Rex	UX	27
517	Spyder	UX	28
518	C25	UX	29
519	Benni	UX	30
520	CX20	UX	30
521	Mini Benni	UX	30
522	Mondeo	UX	31
523	Alivio	UX	32
524	S-Cross	UX	32
525	Alsvin	UX	33
526	BenBen	UX	33
527	CS35	UX	33
528	CS75	UX	33
529	CV1	UX	33
530	CV6	UX	33
531	CX20	UX	33
532	CX30	UX	33
533	Eado	UX	33
534	Eulove	UX	33
535	Honor	UX	33
536	Jiexun	UX	33
537	Raeton	UX	33
538	Supervan	UX	33
539	Yidong	UX	33
540	Yuexiang	UX	33
541	Zhishang	UX	33
542	Zhixiang	UX	33
543	Feiteng C5	UX	34
544	Feiteng	UX	34
545	Heijinggang	UX	34
546	Leopard 6481	UX	34
547	Leopard CS10	UX	34
548	Leopard CS6	UX	34
549	Leopard CS7	UX	34
550	Leopard Q6	UX	34
551	Big Dipper	UX	35
552	Tico	UX	35
553	A1	UX	36
554	A13	UX	36
555	A15	UX	36
556	A3	UX	36
557	A5	UX	36
558	A6	UX	36
559	Apola	UX	36
560	Arrizo 3	UX	36
561	Arrizo 5	UX	36
562	Arrizo 7	UX	36
563	Arrizo M7	UX	36
564	Beat	UX	36
565	Bonus	UX	36
566	Celer	UX	36
567	Cielo	UX	36
568	Cowin	UX	36
569	Destiny	UX	36
570	E3	UX	36
571	E5	UX	36
572	Eastar	UX	36
573	Elara	UX	36
574	Envy	UX	36
575	eQ	UX	36
576	Face	UX	36
577	Fulwin	UX	36
578	Grand Tiggo	UX	36
579	IndiS	UX	36
580	IQ	UX	36
581	J1	UX	36
582	J11	UX	36
583	J3	UX	36
584	Kimo	UX	36
585	New QQ	UX	36
586	Nice	UX	36
587	Q22	UX	36
588	QQ3	UX	36
589	QQ6	UX	36
590	Rely X5	UX	36
591	Riich G3	UX	36
592	Riich G5	UX	36
593	Riich G6	UX	36
594	Riich M1	UX	36
595	Riich X1	UX	36
596	S18	UX	36
597	S21	UX	36
598	S22L	UX	36
599	Skin	UX	36
600	T11	UX	36
601	Tiggo 3	UX	36
602	Tiggo 5	UX	36
603	Tiggo	UX	36
604	V5	UX	36
605	VanPass	UX	36
606	X-Cross	UX	36
607	Xcross	UX	36
608	Yoyo	UX	36
609	Agile	UX	37
610	Astra	UX	37
611	Astro	UX	37
612	Avalanche	UX	37
613	Aveo	UX	37
614	Aveo5	UX	37
615	Beat	UX	37
616	Blazer	UX	37
617	Camaro	UX	37
618	Caprice	UX	37
619	Captiva	UX	37
620	Cavalier	UX	37
621	Celta	UX	37
622	Chevy	UX	37
623	City Express	UX	37
624	Classic	UX	37
625	Cobalt	UX	37
626	Colorado	UX	37
627	Corsa	UX	37
628	Corvette	UX	37
629	Cruze Sport6	UX	37
630	Cruze	UX	37
631	Dmax	UX	37
632	Enjoy	UX	37
633	Epica	UX	37
634	Equinox	UX	37
635	Evanda	UX	37
636	Express 1500	UX	37
637	Express 2500	UX	37
638	Express 3500	UX	37
639	Grand Vitara	UX	37
640	HHR	UX	37
641	Impala	UX	37
642	Kalos	UX	37
643	Lacetti	UX	37
644	Lanos	UX	37
645	Lova	UX	37
646	LTZ	UX	37
647	Lumina	UX	37
648	Malibu	UX	37
649	Matiz	UX	37
650	Meriva	UX	37
651	Metro	UX	37
652	Monte Carlo	UX	37
653	Monza	UX	37
654	N200	UX	37
655	N300	UX	37
656	Nabira	UX	37
657	Niva	UX	37
658	Nubira	UX	37
659	Omega	UX	37
660	Onix	UX	37
661	Optra	UX	37
662	Orlando	UX	37
663	Prisma	UX	37
664	Prizm	UX	37
665	Rezzo	UX	37
666	S-10	UX	37
667	Sail U-VA	UX	37
668	Sail	UX	37
669	Silverado 1500	UX	37
670	Silverado 2500	UX	37
671	Silverado 3500	UX	37
672	Sonic	UX	37
673	Spark GT	UX	37
674	Spark Life	UX	37
675	Spark	UX	37
676	Spin	UX	37
677	SS	UX	37
678	SSR	UX	37
679	Suburban	UX	37
680	Tacuma	UX	37
681	Tahoe	UX	37
682	Tavera	UX	37
683	Tornado	UX	37
684	Tracker	UX	37
685	Trailblazer EXT	UX	37
686	Trailblazer	UX	37
687	Trans Sport	UX	37
688	Traverse	UX	37
689	Trax	UX	37
690	Uplander	UX	37
691	Vectra	UX	37
692	Venture	UX	37
693	Vivant	UX	37
694	Volt	UX	37
695	Zafira	UX	37
696	200	UX	38
697	300	UX	38
698	Aspen	UX	38
699	Brilliant	UX	38
700	Cirrus	UX	38
701	Concorde	UX	38
702	Crossfire	UX	38
703	Delta	UX	38
704	Grand Voyager	UX	38
705	Intrepid	UX	38
706	LHS	UX	38
707	Neon	UX	38
708	Pacifica	UX	38
709	PT Cruiser	UX	38
710	Sebring	UX	38
711	Stretch Limo	UX	38
712	Sundance	UX	38
713	Town and Country	UX	38
714	Viper	UX	38
715	Voyager	UX	38
716	Ypsilon	UX	38
717	Berlingo	UX	39
718	C-Crosser	UX	39
719	C-Elysee	UX	39
720	C-Quatre	UX	39
721	C-Triomphe	UX	39
722	C-Zero	UX	39
723	C1	UX	39
724	C2	UX	39
725	C3 Aircross	UX	39
726	C3 Picasso	UX	39
727	C3	UX	39
728	C3-XR	UX	39
729	C4 Aircross	UX	39
730	C4 Cactus	UX	39
731	C4 Lounge	UX	39
732	C4 Pallas	UX	39
733	C4 Picasso	UX	39
734	C4	UX	39
735	C4L	UX	39
736	C5	UX	39
737	C6	UX	39
738	C8	UX	39
739	Dispatch Combi	UX	39
740	DS3	UX	39
741	DS4	UX	39
742	DS5	UX	39
743	DS5LS	UX	39
744	DS6	UX	39
745	E-Mehari	UX	39
746	Elysee	UX	39
747	Grand Picasso	UX	39
748	H Van	UX	39
749	Jumper	UX	39
750	Jumpy	UX	39
751	Nemo	UX	39
752	Saxo	UX	39
753	Traction	UX	39
754	Xantia	UX	39
755	Xsara Picasso	UX	39
756	Xsara	UX	39
757	Z7	UX	40
758	All-Electric	UX	41
759	Dokker	UX	42
760	Duster	UX	42
761	Lodgy	UX	42
762	Logan	UX	42
763	Sandero	UX	42
764	Cielo	UX	43
765	Espero	UX	43
766	Gentra	UX	43
767	Kalos	UX	43
768	Lacetti	UX	43
769	Lanos	UX	43
770	Leganza	UX	43
771	Matiz	UX	43
772	Nexia	UX	43
773	Nubira	UX	43
774	Tacuma	UX	43
775	Tosca	UX	43
776	Winstorm	UX	43
777	55	UX	44
778	Atrai	UX	45
779	Ayla	UX	45
780	Cuore	UX	45
781	Esse	UX	45
782	Fellow Max	UX	45
783	Gran Max	UX	45
784	Hijet	UX	45
785	Luxio	UX	45
786	Materia	UX	45
787	Mira	UX	45
788	Move	UX	45
789	Sigra	UX	45
790	Sirion	UX	45
791	Sonica	UX	45
792	Tanto	UX	45
793	Taruna	UX	45
794	Terios	UX	45
795	Trevis	UX	45
796	Wake	UX	45
797	Xenia	UX	45
798	YRV	UX	45
799	Go+	UX	46
800	Go	UX	46
801	On-Do	UX	46
802	redi-GO	UX	46
803	DMC-12	UX	47
804	DENZA	UX	48
805	C37	UX	49
806	Cargo Van	UX	49
807	Glory	UX	49
808	V27	UX	49
809	Attitude	UX	50
810	Avenger	UX	50
811	Caliber	UX	50
812	Caravan	UX	50
813	Challenger	UX	50
814	Charger	UX	50
815	Dakota	UX	50
816	Dart	UX	50
817	Durango	UX	50
818	Grand Caravan	UX	50
819	i10	UX	50
820	Intrepid	UX	50
821	JCUV	UX	50
822	Journey	UX	50
823	Magnum	UX	50
824	Neon	UX	50
825	Nitro	UX	50
826	Ram 1500	UX	50
827	Ram 2500	UX	50
828	Ram 3500	UX	50
829	Ram 4500	UX	50
830	Ram Van	UX	50
831	Sprinter	UX	50
832	Stratus	UX	50
833	Stretch Limo	UX	50
834	Viper	UX	50
835	Vision	UX	50
836	A30	UX	51
837	A60	UX	51
838	Aeolus	UX	51
839	AX7	UX	51
840	D50	UX	51
841	DF-9	UX	51
842	E30	UX	51
843	Fengdu MX6	UX	51
844	H30	UX	51
845	Joyear	UX	51
846	King Plaza	UX	51
847	L60	UX	51
848	Lingzhi	UX	51
849	LZGO	UX	51
850	Oting	UX	51
851	Rich	UX	51
852	S30	UX	51
853	Succe	UX	51
854	X30	UX	51
855	Yumsun	UX	51
856	DR1	UX	52
857	DR5	UX	52
858	3	UX	53
859	4	UX	53
860	4S	UX	53
861	5	UX	53
862	5LS	UX	53
863	6	UX	53
864	1199 Panigale S Tricolore	UX	54
865	1299 Panigale	UX	54
866	848 EVO Corse	UX	54
867	848 EVO	UX	54
868	959 Panigale	UX	54
869	Diavel	UX	54
870	GT 1000	UX	54
871	Hypermotard 939	UX	54
872	Hyperstrada 939	UX	54
873	Monster 1200	UX	54
874	Monster 821	UX	54
875	Multistrada 1200	UX	54
876	Panigale R	UX	54
877	PaulSmart 1000 LE	UX	54
878	Streetfighter 848	UX	54
879	Ideal	UX	55
880	Landscape	UX	55
881	M100	UX	55
882	S715	UX	56
883	EC120 Colibri	UX	57
884	EC130	UX	57
885	Ruiyi	UX	58
886	Besturn B50	UX	59
887	Besturn B70	UX	59
888	Besturn X80	UX	59
889	Junpai D60	UX	59
890	N5	UX	59
891	Oley	UX	59
892	Senya M80	UX	59
893	Senya S80	UX	59
894	V2	UX	59
895	V5	UX	59
896	V70	UX	59
897	Vita	UX	59
898	X-PV	UX	59
899	360	UX	60
900	458	UX	60
901	575 M	UX	60
902	599 GTB Fiorano	UX	60
903	612 Scaglietti	UX	60
904	California	UX	60
905	F12berlinetta	UX	60
906	F430	UX	60
907	FF	UX	60
908	124 Spider	UX	61
909	500	UX	61
910	500C	UX	61
911	500E	UX	61
912	500L	UX	61
913	500X	UX	61
914	Albea	UX	61
915	Avventura	UX	61
916	Bravo	UX	61
917	Croma	UX	61
918	Doblo	UX	61
919	Ducato	UX	61
920	Fiorino	UX	61
921	Freemont	UX	61
922	Grand Siena	UX	61
923	Grande Punto	UX	61
924	Idea	UX	61
925	Linea	UX	61
926	Marea	UX	61
927	Mobi	UX	61
928	Multipla	UX	61
929	New Uno	UX	61
930	Ottimo	UX	61
931	Palio Weekend	UX	61
932	Palio	UX	61
933	Panda	UX	61
934	Perla	UX	61
935	Punto	UX	61
936	Qubo	UX	61
937	Ritmo	UX	61
938	Scudo	UX	61
939	Sedici	UX	61
940	Siena	UX	61
941	Stilo	UX	61
942	Strada	UX	61
943	Tipo	UX	61
944	Ulysse	UX	61
945	Uno	UX	61
946	Viaggio	UX	61
947	Karma	UX	62
948	Explorer III	UX	63
949	Landfort	UX	63
950	One	UX	64
951	Activa	UX	65
952	Aspire	UX	65
953	B-Max	UX	65
954	C-Max Hybrid	UX	65
955	C-Max	UX	65
956	Classic	UX	65
957	Contour	UX	65
958	Courier	UX	65
959	Crown Victoria	UX	65
960	E-150	UX	65
961	E-250	UX	65
962	E-350	UX	65
963	E-450	UX	65
964	E-Series	UX	65
965	EcoSport	UX	65
966	Edge	UX	65
967	Endeavour	UX	65
968	Escape	UX	65
969	Escort	UX	65
970	Everest	UX	65
971	Excursion	UX	65
972	Expedition	UX	65
973	Explorer Sport Trac	UX	65
974	Explorer	UX	65
975	F-150	UX	65
976	F-250	UX	65
977	F-350	UX	65
978	F-450	UX	65
979	F-650	UX	65
980	F6 Typhoon	UX	65
981	Fairlane	UX	65
982	Fairmont	UX	65
983	Falcon	UX	65
984	Fiesta	UX	65
985	Figo Aspire	UX	65
986	Figo	UX	65
987	Five Hundred	UX	65
988	Flex	UX	65
989	Focus	UX	65
990	Freestar	UX	65
991	Freestyle	UX	65
992	Fusion	UX	65
993	Galaxy	UX	65
994	Grand C-Max	UX	65
995	GT	UX	65
996	i-MAX	UX	65
997	Ikon	UX	65
998	Ka+	UX	65
999	Ka	UX	65
1000	Kuga	UX	65
1001	Laser	UX	65
1002	Lobo	UX	65
1003	LTD	UX	65
1004	MAV	UX	65
1005	Maverick	UX	65
1006	Minibus	UX	65
1007	Mondeo	UX	65
1008	Mustang	UX	65
1009	Ranger	UX	65
1010	S-Max	UX	65
1011	Shelby	UX	65
1012	Stretch Limo	UX	65
1013	Taurus X	UX	65
1014	Taurus	UX	65
1015	Territory	UX	65
1016	Think	UX	65
1017	Thunderbird	UX	65
1018	Tierra	UX	65
1019	Tourneo	UX	65
1020	Transit Connect	UX	65
1021	Transit Custom	UX	65
1022	Transit Van	UX	65
1023	Transit Wagon	UX	65
1024	Vignale	UX	65
1025	Windstar	UX	65
1026	ZhiSheng	UX	65
1027	Gratour	UX	66
1028	Midi	UX	66
1029	Ollin	UX	66
1030	Sauvana	UX	66
1031	Toplander	UX	66
1032	Tunland	UX	66
1033	View Traveller	UX	66
1034	Levin	UX	67
1035	GA3	UX	68
1036	GA4	UX	68
1037	GA5	UX	68
1038	GA6	UX	68
1039	GA8	UX	68
1040	GS4	UX	68
1041	GS5	UX	68
1042	Weizhi	UX	68
1043	515	UX	69
1044	Borui	UX	69
1045	CK	UX	69
1046	Dorsett	UX	69
1047	EC8	UX	69
1048	Emgrand 7	UX	69
1049	Emgrand 8	UX	69
1050	Emgrand EC7	UX	69
1051	Emgrand EC8	UX	69
1052	Emgrand X7	UX	69
1053	GC2	UX	69
1054	GC5	UX	69
1055	GC7	UX	69
1056	GC9	UX	69
1057	Gleagle	UX	69
1058	GX2	UX	69
1059	GX7	UX	69
1060	GX9	UX	69
1061	Haijing	UX	69
1062	Haoqing	UX	69
1063	Jingang	UX	69
1064	K17	UX	69
1065	LC Cross	UX	69
1066	LC	UX	69
1067	Meiri	UX	69
1068	MK Cross	UX	69
1069	MK	UX	69
1070	Panda	UX	69
1071	SC3	UX	69
1072	SC5	UX	69
1073	SC7	UX	69
1074	SL	UX	69
1075	SX7	UX	69
1076	TX4	UX	69
1077	Yuanjin	UX	69
1078	Ziyoujian	UX	69
1079	eL	UX	70
1080	Alpheon	UX	71
1081	EV1	UX	71
1082	Acadia Denali	UX	72
1083	Acadia	UX	72
1084	Canyon	UX	72
1085	Envoy Denali	UX	72
1086	Envoy	UX	72
1087	Jimmy	UX	72
1088	MV1	UX	72
1089	Safari	UX	72
1090	Savana 1500	UX	72
1091	Savana 2500	UX	72
1092	Savana 3500	UX	72
1093	Sierra 1500	UX	72
1094	Sierra 2500	UX	72
1095	Sierra 3500	UX	72
1096	Sonoma	UX	72
1097	Terrain	UX	72
1098	Yukon Denali	UX	72
1099	Yukon XL	UX	72
1100	Yukon	UX	72
1101	Aoosed	UX	73
1102	GS50	UX	73
1103	GX6	UX	73
1104	Shuaijian	UX	73
1105	Way CL	UX	73
1106	Xingwang	UX	73
1107	Xinlang	UX	73
1108	T Series	UX	74
1109	C20R	UX	75
1110	C30	UX	75
1111	C50	UX	75
1112	Coolbear	UX	75
1113	Cowry	UX	75
1114	Deer	UX	75
1115	Florid	UX	75
1116	Haval H1	UX	75
1117	Haval H2	UX	75
1118	Haval H3	UX	75
1119	Haval H5	UX	75
1120	Haval H6	UX	75
1121	Haval H7	UX	75
1122	Haval H8	UX	75
1123	Haval H9	UX	75
1124	Haval M2	UX	75
1125	Haval M4	UX	75
1126	Hover 5	UX	75
1127	Hover	UX	75
1128	Ling Ao	UX	75
1129	M2	UX	75
1130	M4	UX	75
1131	Pegasus	UX	75
1132	Peri	UX	75
1133	Safe	UX	75
1134	SaiFu	UX	75
1135	SingRUV	UX	75
1136	V200	UX	75
1137	V240	UX	75
1138	V80	UX	75
1139	Voleex	UX	75
1140	Wingle	UX	75
1141	X200	UX	75
1142	X240	UX	75
1143	Li Nian S1	UX	76
1144	Junyi Plus	UX	77
1145	Minyi	UX	77
1146	Saibao	UX	77
1147	Saima	UX	77
1148	1	UX	78
1149	2	UX	78
1150	3 Hatchback	UX	78
1151	3 Sedan	UX	78
1152	7	UX	78
1153	Cavalier	UX	78
1154	Cupid	UX	78
1155	Family M5	UX	78
1156	Family	UX	78
1157	FamilyVS	UX	78
1158	Freema	UX	78
1159	Happin	UX	78
1160	M3	UX	78
1161	M5	UX	78
1162	M6	UX	78
1163	M8	UX	78
1164	Pulima	UX	78
1165	Qiubite	UX	78
1166	S3	UX	78
1167	S5	UX	78
1168	S7	UX	78
1169	CS 200	UX	79
1170	Faster R	UX	79
1171	Faster X	UX	79
1172	Jet ZR	UX	79
1173	Jet ZX	UX	79
1174	MX 200	UX	79
1175	Nexium	UX	79
1176	Perkasa 200	UX	79
1177	Sporty RR	UX	79
1178	Swing R	UX	79
1179	1200 Custom	UX	80
1180	CVO	UX	80
1181	Dyna	UX	80
1182	Electra Glide	UX	80
1183	Fat Boy	UX	80
1184	Iron 883	UX	80
1185	Road Glide	UX	80
1186	Road King	UX	80
1187	Softail	UX	80
1188	Sportster Iron 883	UX	80
1189	Sportster	UX	80
1190	Street 750	UX	80
1191	Touring	UX	80
1192	Trike	UX	80
1193	Ultra Limited	UX	80
1194	V-Rod	UX	80
1195	B11	UX	81
1196	Boliger	UX	81
1197	E70	UX	81
1198	New Santa Fe	UX	81
1199	Santa Fe	UX	81
1200	Terracan	UX	81
1201	CD Deluxe	UX	82
1202	Achiever	UX	83
1203	Duet	UX	83
1204	Glamour	UX	83
1205	HF Dawn	UX	83
1206	HF Deluxe	UX	83
1207	Hunk	UX	83
1208	Ignitor	UX	83
1209	Impulse	UX	83
1210	Karizma R	UX	83
1211	Karizma ZMR	UX	83
1212	Maestro Edge	UX	83
1213	Maestro	UX	83
1214	Passion Plus	UX	83
1215	Passion Pro	UX	83
1216	Passion Xpro	UX	83
1217	Pleasure	UX	83
1218	Splendor Ismart	UX	83
1219	Splendor NXG	UX	83
1220	Splendor Pro Classic	UX	83
1221	Splendor Pro	UX	83
1222	Splendor+	UX	83
1223	Super Splendor	UX	83
1224	Xtreme Sports	UX	83
1225	Xtreme	UX	83
1226	Adventra	UX	84
1227	Astra	UX	84
1228	Barina Spark	UX	84
1229	Barina	UX	84
1230	Berlina	UX	84
1231	Calais	UX	84
1232	Caprice	UX	84
1233	Captiva	UX	84
1234	Clubsport	UX	84
1235	Colorado 7	UX	84
1236	Colorado	UX	84
1237	Commodore	UX	84
1238	Cruze	UX	84
1239	Epica	UX	84
1240	Grange	UX	84
1241	GTS	UX	84
1242	Malibu	UX	84
1243	Rodeo	UX	84
1244	Statesman	UX	84
1245	Stretch Limo	UX	84
1246	SV6	UX	84
1247	Trax	UX	84
1248	Vectra	UX	84
1249	Viva	UX	84
1250	Volt	UX	84
1251	Zafira	UX	84
1252	Accord Crosstour	UX	85
1253	Accord	UX	85
1254	Activa 125	UX	85
1255	Activa	UX	85
1256	Air Blade	UX	85
1257	Airwave	UX	85
1258	Amaze	UX	85
1259	Avancier	UX	85
1260	Aviator	UX	85
1261	Ballade	UX	85
1262	BeAT POP	UX	85
1263	BeAT	UX	85
1264	Blade	UX	85
1265	BR-V	UX	85
1266	Brio	UX	85
1267	C70	UX	85
1268	C80	UX	85
1269	Capa	UX	85
1270	CB 500F	UX	85
1271	CB 500X	UX	85
1272	CB 650F	UX	85
1273	CB Hornet 160R	UX	85
1274	CB Shine	UX	85
1275	CB Trigger	UX	85
1276	CB Twister	UX	85
1277	CB Unicorn 160	UX	85
1278	CB Unicorn Dazzler	UX	85
1279	CB Unicorn	UX	85
1280	CB	UX	85
1281	CBR 1000RR	UX	85
1282	CBR 150R	UX	85
1283	CBR 250R	UX	85
1284	CBR 500R	UX	85
1285	CBR 650F	UX	85
1286	CBR	UX	85
1287	CD 100 Dream	UX	85
1288	Ciimo	UX	85
1289	City	UX	85
1290	Civic	UX	85
1291	Click i	UX	85
1292	CR-V	UX	85
1293	CR-Z	UX	85
1294	CRF	UX	85
1295	Crider	UX	85
1296	Crossroad	UX	85
1297	Crosstour	UX	85
1298	CS1	UX	85
1299	CTX	UX	85
1300	CZ-i 110	UX	85
1301	Dio 110	UX	85
1302	Domani	UX	85
1303	Dream	UX	85
1304	e-Storm	UX	85
1305	Edix	UX	85
1306	Element	UX	85
1307	Elysion	UX	85
1308	FCX Clarity	UX	85
1309	Fit	UX	85
1310	Forza 300	UX	85
1311	FR-V	UX	85
1312	Freed	UX	85
1313	Future	UX	85
1314	Geshitu	UX	85
1315	GL Max	UX	85
1316	GL Pro	UX	85
1317	GL	UX	85
1318	Gold Wing Valkyrie	UX	85
1319	Gold Wing	UX	85
1320	Goldwin	UX	85
1321	Grace	UX	85
1322	Greiz	UX	85
1323	HR-V	UX	85
1324	Idea	UX	85
1325	Insight	UX	85
1326	Inspire	UX	85
1327	Integra	UX	85
1328	Jade	UX	85
1329	Jazz	UX	85
1330	Karisma	UX	85
1331	Kirana	UX	85
1332	LEAD	UX	85
1333	Legend	UX	85
1334	Life	UX	85
1335	Livo	UX	85
1336	MDX	UX	85
1337	MegaPro	UX	85
1338	Mobilio	UX	85
1339	Moove	UX	85
1340	MSX125	UX	85
1341	N-Box	UX	85
1342	N-One	UX	85
1343	N-WGN	UX	85
1344	NC	UX	85
1345	Nighthawk	UX	85
1346	NM4 Vultus	UX	85
1347	NM4	UX	85
1348	Nova Sonic RS	UX	85
1349	NSR	UX	85
1350	Odyssey	UX	85
1351	Orthia	UX	85
1352	Pantheon	UX	85
1353	Partner	UX	85
1354	Passport	UX	85
1355	PCX	UX	85
1356	Philosophy S1	UX	85
1357	Pilot	UX	85
1358	Prelude	UX	85
1359	Revo	UX	85
1360	Ridgeline	UX	85
1361	S2000	UX	85
1362	S90	UX	85
1363	Saber	UX	85
1364	Scoopy i	UX	85
1365	SH125	UX	85
1366	SH150i	UX	85
1367	Shadow RS	UX	85
1368	SHmode	UX	85
1369	Shuttle	UX	85
1370	Sonic	UX	85
1371	Spacy i	UX	85
1372	Spike	UX	85
1373	Spirior	UX	85
1374	Stepwgn	UX	85
1375	Stream	UX	85
1376	Stunner CBF	UX	85
1377	Super Cub	UX	85
1378	Super Dream	UX	85
1379	Supra X	UX	85
1380	That's	UX	85
1381	Tiger	UX	85
1382	Torneo	UX	85
1383	Vamos	UX	85
1384	Vario	UX	85
1385	Verza	UX	85
1386	Vezel	UX	85
1387	VFR	UX	85
1388	VISION	UX	85
1389	Wave Alpha	UX	85
1390	Wave RSX	UX	85
1391	Wave	UX	85
1392	Win	UX	85
1393	Winner 150	UX	85
1394	XR-V	UX	85
1395	Zest	UX	85
1396	Zoomer X	UX	85
1397	H7	UX	86
1398	HQ3	UX	86
1399	Shengshi	UX	86
1400	Aolong	UX	87
1401	Pronto	UX	87
1402	Qisheng	UX	87
1403	H1	UX	88
1404	H2 SUT	UX	88
1405	H2	UX	88
1406	H3	UX	88
1407	H3T	UX	88
1408	MV-1	UX	88
1409	Stretch Limo	UX	88
1410	GT250R	UX	89
1411	GV250 Aquila	UX	89
1412	Accent	UX	90
1413	Atos	UX	90
1414	Avante	UX	90
1415	Azera	UX	90
1416	Cantus	UX	90
1417	Centennial	UX	90
1418	Coupe	UX	90
1419	Creta	UX	90
1420	Elantra GT	UX	90
1421	Elantra	UX	90
1422	Entourage	UX	90
1423	Eon	UX	90
1424	EQ900	UX	90
1425	Equus	UX	90
1426	Excel	UX	90
1427	Genesis	UX	90
1428	Getz	UX	90
1429	Grand Avega	UX	90
1430	Grand i10	UX	90
1431	Grand Santa Fe	UX	90
1432	Grand Starex	UX	90
1433	Grandeur	UX	90
1434	H-1	UX	90
1435	H100	UX	90
1436	HB20	UX	90
1437	HB20S	UX	90
1438	HD78	UX	90
1439	i10	UX	90
1440	i20	UX	90
1441	i25	UX	90
1442	i30	UX	90
1443	i35	UX	90
1444	i40 Sport Wagon	UX	90
1445	i40	UX	90
1446	i45	UX	90
1447	i800	UX	90
1448	iLoad	UX	90
1449	iMax	UX	90
1450	Ioniq	UX	90
1451	ix20	UX	90
1452	ix25	UX	90
1453	ix35	UX	90
1454	ix55	UX	90
1455	Langdong	UX	90
1456	Matrix	UX	90
1457	Maxcruz	UX	90
1458	Mistra	UX	90
1459	Moinca	UX	90
1460	Montana	UX	90
1461	Rohens	UX	90
1462	Santa Fe Sport	UX	90
1463	Santa Fe	UX	90
1464	Santro Xing	UX	90
1465	Santro	UX	90
1466	Solaris	UX	90
1467	Sonata	UX	90
1468	Sonica	UX	90
1469	Starex	UX	90
1470	Terracan	UX	90
1471	Tiburon	UX	90
1472	Trajet	UX	90
1473	Tucson	UX	90
1474	Veloster	UX	90
1475	Veracruz	UX	90
1476	Verna	UX	90
1477	Xcent	UX	90
1478	XG250	UX	90
1479	XG300	UX	90
1480	XG350	UX	90
1481	Extreme	UX	91
1482	Runna	UX	92
1483	Samand LX	UX	92
1484	Samand SE	UX	92
1485	Soren	UX	92
1486	ESQ	UX	93
1487	EX	UX	93
1488	FX	UX	93
1489	G Coupe	UX	93
1490	G Sedan	UX	93
1491	I	UX	93
1492	JX	UX	93
1493	M	UX	93
1494	Q40	UX	93
1495	Q45	UX	93
1496	Q50	UX	93
1497	Q50L	UX	93
1498	Q60	UX	93
1499	Q70	UX	93
1500	QX4	UX	93
1501	QX50	UX	93
1502	QX56	UX	93
1503	QX60	UX	93
1504	QX70	UX	93
1505	QX80	UX	93
1506	IVM-UMU	UX	94
1507	Adventure	UX	95
1508	Alterra	UX	95
1509	Amigo	UX	95
1510	Ascender	UX	95
1511	Axiom	UX	95
1512	Crosswind	UX	95
1513	D-Max	UX	95
1514	Elf	UX	95
1515	Hombre	UX	95
1516	i280	UX	95
1517	i350	UX	95
1518	i370	UX	95
1519	Mu-7	UX	95
1520	MU-X	UX	95
1521	N-Series	UX	95
1522	Panther	UX	95
1523	Rodeo	UX	95
1524	Trooper	UX	95
1525	VehiCross	UX	95
1526	125Z	UX	96
1527	150SZ	UX	96
1528	D125	UX	96
1529	DM150	UX	96
1530	WS150	UX	96
1531	XT110RT	UX	96
1532	Daily	UX	97
1533	A-Class	UX	98
1534	A0	UX	98
1535	B-Cross	UX	98
1536	Binyue	UX	98
1537	Heyue	UX	98
1538	HFC	UX	98
1539	iEV4	UX	98
1540	iEV5	UX	98
1541	iEV6S	UX	98
1542	J2	UX	98
1543	J3 Turin	UX	98
1544	J3	UX	98
1545	J4	UX	98
1546	J5	UX	98
1547	J6	UX	98
1548	Refine M3	UX	98
1549	Refine	UX	98
1550	Rein	UX	98
1551	Ruiying	UX	98
1552	S2	UX	98
1553	S3	UX	98
1554	S5	UX	98
1555	Spazio	UX	98
1556	Sunray	UX	98
1557	T5	UX	98
1558	T6	UX	98
1559	T8	UX	98
1560	Tagaz C190	UX	98
1561	Tongyue	UX	98
1562	Veloce	UX	98
1563	XuebaoX50	UX	98
1564	XuebaoX80	UX	98
1565	E-Type	UX	99
1566	F-PACE	UX	99
1567	F-Type	UX	99
1568	Mark 2	UX	99
1569	S-Type	UX	99
1570	X-Type	UX	99
1571	XE	UX	99
1572	XF	UX	99
1573	XJ	UX	99
1574	XJR	UX	99
1575	XK	UX	99
1576	2500	UX	100
1577	Cherokee	UX	100
1578	Commander	UX	100
1579	Compass	UX	100
1580	Grand Cherokee	UX	100
1581	Liberty	UX	100
1582	Patriot	UX	100
1583	Renegade	UX	100
1584	Wrangler	UX	100
1585	Grace	UX	101
1586	H2	UX	101
1587	S50	UX	101
1588	Baodian	UX	102
1589	Baowei	UX	102
1590	N350	UX	102
1591	Yuhu	UX	102
1592	Yusheng	UX	102
1593	Falcon	UX	103
1594	A6	UX	104
1595	Travel	UX	105
1596	K11	UX	106
1597	Kranti	UX	107
1598	REO	UX	107
1599	Athlete	UX	108
1600	Blitz R	UX	108
1601	D-Tracker	UX	108
1602	Edge	UX	108
1603	ER-6n	UX	108
1604	Estrella	UX	108
1605	Kaze	UX	108
1606	KLX	UX	108
1607	KSR	UX	108
1608	KX	UX	108
1609	Merzy	UX	108
1610	Ninja 250	UX	108
1611	Ninja 300	UX	108
1612	Ninja 650	UX	108
1613	Ninja R	UX	108
1614	Ninja RR	UX	108
1615	Ninja SS	UX	108
1616	Ninja ZX	UX	108
1617	Ninja ZX-10R	UX	108
1618	Ninja ZX-14R	UX	108
1619	Ninja ZX-6R	UX	108
1620	Pulsar	UX	108
1621	Versys 1000	UX	108
1622	Versys 650	UX	108
1623	Vulcan S	UX	108
1624	Z1000	UX	108
1625	Z125	UX	108
1626	Z250	UX	108
1627	Z800	UX	108
1628	ZR-7	UX	108
1629	W1	UX	109
1630	S3	UX	110
1631	Amanti	UX	111
1632	Borrego	UX	111
1633	Cadenza	UX	111
1634	Carens	UX	111
1635	Carnival	UX	111
1636	Cee'd Sportswagon	UX	111
1637	Cee'd	UX	111
1638	Cerato	UX	111
1639	Forte	UX	111
1640	K2	UX	111
1641	K3	UX	111
1642	K4	UX	111
1643	K5	UX	111
1644	K7	UX	111
1645	K9	UX	111
1646	K900	UX	111
1647	KX3	UX	111
1648	Lotze	UX	111
1649	Magentis	UX	111
1650	Mohave	UX	111
1651	Morning	UX	111
1652	Niro	UX	111
1653	Opirus	UX	111
1654	Optima	UX	111
1655	Picanto	UX	111
1656	Pride	UX	111
1657	Quoris	UX	111
1658	Ray	UX	111
1659	Rio 4	UX	111
1660	Rio	UX	111
1661	Rondo	UX	111
1662	Sedona	UX	111
1663	Sephia	UX	111
1664	Shuma	UX	111
1665	Sorento	UX	111
1666	Soul	UX	111
1667	Spectra	UX	111
1668	Sportage R	UX	111
1669	Sportage	UX	111
1670	Stylus	UX	111
1671	Venga	UX	111
1672	VQ	UX	111
1673	Agera	UX	112
1674	CCR	UX	112
1675	CCX	UX	112
1676	CCXR	UX	112
1677	200 Duke	UX	113
1678	250 EXC	UX	113
1679	250 SX	UX	113
1680	390 Duke	UX	113
1681	525 XC	UX	113
1682	85 SX	UX	113
1683	RC 200	UX	113
1684	Active	UX	114
1685	Agility	UX	114
1686	Candy 4U	UX	114
1687	Candy Hi	UX	114
1688	DJS	UX	114
1689	Downtown	UX	114
1690	G-Dink	UX	114
1691	Jetix	UX	114
1692	Jockey	UX	114
1693	K-Pipe	UX	114
1694	K-XCT	UX	114
1695	Like	UX	114
1696	MyRoad	UX	114
1697	New Sento	UX	114
1698	People One	UX	114
1699	Quannon	UX	114
1700	Queen	UX	114
1701	Racing King	UX	114
1702	Super 8	UX	114
1703	Venox	UX	114
1704	VisaR	UX	114
1705	Xciting	UX	114
1706	112	UX	115
1707	Granta	UX	115
1708	Kalina	UX	115
1709	Largus	UX	115
1710	Priora	UX	115
1711	Samara	UX	115
1712	Vesta	UX	115
1713	Xray	UX	115
1714	Aventador	UX	116
1715	Gallardo	UX	116
1716	Huracan	UX	116
1717	Murcielago	UX	116
1718	Reventon	UX	116
1719	Delta	UX	117
1720	Epsilon	UX	117
1721	Kappa	UX	117
1722	Lybra	UX	117
1723	Musa	UX	117
1724	Phedra	UX	117
1725	Thema	UX	117
1726	Thesis	UX	117
1727	Voyager	UX	117
1728	Ypsilon	UX	117
1729	Defender	UX	118
1730	Discovery	UX	118
1731	Freelander	UX	118
1732	LR2	UX	118
1733	LR3	UX	118
1734	LR4	UX	118
1735	Range Rover Evoque	UX	118
1736	Range Rover Sport	UX	118
1737	Range Rover	UX	118
1738	Fashion	UX	119
1739	X5	UX	119
1740	X6	UX	119
1741	X7	UX	119
1742	X8	UX	119
1743	X9	UX	119
1744	6609EV	UX	120
1745	G10	UX	121
1746	Char AMX	UX	122
1747	CT	UX	123
1748	ES	UX	123
1749	GS	UX	123
1750	GX	UX	123
1751	HS	UX	123
1752	IS	UX	123
1753	LFA	UX	123
1754	LS	UX	123
1755	LX	UX	123
1756	NX	UX	123
1757	RC	UX	123
1758	RX	UX	123
1759	SC	UX	123
1760	320	UX	124
1761	520	UX	124
1762	530	UX	124
1763	620	UX	124
1764	630	UX	124
1765	720	UX	124
1766	820	UX	124
1767	Cebrium	UX	124
1768	Foison	UX	124
1769	Smily	UX	124
1770	Solano	UX	124
1771	X50	UX	124
1772	X60	UX	124
1773	Aviator	UX	125
1774	Blackwood	UX	125
1775	Continental	UX	125
1776	LS	UX	125
1777	Mark LT	UX	125
1778	Mark	UX	125
1779	MKC	UX	125
1780	MKS	UX	125
1781	MKT	UX	125
1782	MKX	UX	125
1783	MKZ	UX	125
1784	Navigator	UX	125
1785	Stretch Limo	UX	125
1786	Town Car	UX	125
1787	Zephyr	UX	125
1788	Elise	UX	126
1789	Esprit	UX	126
1790	Evora	UX	126
1791	Exige	UX	126
1792	Jingsu	UX	126
1793	Jingyue	UX	126
1794	L3	UX	126
1795	L5	UX	126
1796	RCR	UX	126
1797	CEO	UX	127
1798	Luxgen5	UX	127
1799	Luxgen7	UX	127
1800	M7	UX	127
1801	S3	UX	127
1802	s5	UX	127
1803	U6 Turbo	UX	127
1804	U7 Turbo	UX	127
1805	U7	UX	127
1806	V7	UX	127
1807	ALFA Champ	UX	128
1808	ALFA Comfy	UX	128
1809	ALFA DX	UX	128
1810	Bolero	UX	128
1811	Centuro	UX	128
1812	Duro DZ	UX	128
1813	e2o	UX	128
1814	Flyte Sym	UX	128
1815	Genio DC	UX	128
1816	Goa	UX	128
1817	Gusto	UX	128
1818	Kine	UX	128
1819	KUV100	UX	128
1820	Logan	UX	128
1821	Mojo	UX	128
1822	Pantero	UX	128
1823	Pik-Up	UX	128
1824	Quanto	UX	128
1825	Rodeo RZ	UX	128
1826	Scorpio	UX	128
1827	Thar	UX	128
1828	TUV300	UX	128
1829	Verito Vibe	UX	128
1830	Verito	UX	128
1831	XUV500	UX	128
1832	Xylo	UX	128
1833	TGX	UX	129
1834	A-Star	UX	130
1835	Alto	UX	130
1836	Baleno	UX	130
1837	Celerio	UX	130
1838	Ciaz	UX	130
1839	Dzire	UX	130
1840	Eeco	UX	130
1841	Ertiga	UX	130
1842	Esteem	UX	130
1843	Estilo	UX	130
1844	Grand Vitara	UX	130
1845	Kizashi	UX	130
1846	Maruti 800	UX	130
1847	Ritz	UX	130
1848	S-Cross	UX	130
1849	Swift Dzire	UX	130
1850	Swift	UX	130
1851	SX4	UX	130
1852	Vitara Brezza	UX	130
1853	Wagon R	UX	130
1854	Zen	UX	130
1855	Coupe	UX	131
1856	Ghibli	UX	131
1857	Gran Turismo	UX	131
1858	GranCabrio	UX	131
1859	GranSport	UX	131
1860	Levante	UX	131
1861	MC12	UX	131
1862	Quattroporte	UX	131
1863	Spyder	UX	131
1864	G10	UX	132
1865	57	UX	133
1866	62	UX	133
1867	323	UX	134
1868	626	UX	134
1869	929	UX	134
1870	Allegro	UX	134
1871	Astina	UX	134
1872	Atenza	UX	134
1873	Axela	UX	134
1874	AZ-Offroad	UX	134
1875	AZ-Wagon	UX	134
1876	B-Series	UX	134
1877	Biante	UX	134
1878	Bongo	UX	134
1879	BT-50	UX	134
1880	Capella	UX	134
1881	Carol	UX	134
1882	CX-3	UX	134
1883	CX-5	UX	134
1884	CX-7	UX	134
1885	CX-9	UX	134
1886	Demio	UX	134
1887	Familia	UX	134
1888	Flair	UX	134
1889	Lantis	UX	134
1890	MAZDA2	UX	134
1891	MAZDA3	UX	134
1892	MAZDA5	UX	134
1893	MAZDA6	UX	134
1894	MAZDA8	UX	134
1895	MAZDASPEED3	UX	134
1896	MAZDASPEED6	UX	134
1897	Millenia	UX	134
1898	MPV	UX	134
1899	MX-5 Miata	UX	134
1900	Premacy	UX	134
1901	Protege	UX	134
1902	RX-8	UX	134
1903	Scrum	UX	134
1904	SP23	UX	134
1905	SP25	UX	134
1906	Spiano	UX	134
1907	Tribute	UX	134
1908	Verisa	UX	134
1909	VX-1	UX	134
1910	Ovetto	UX	135
1911	12C	UX	136
1912	570S	UX	136
1913	650S	UX	136
1914	P1	UX	136
1915	190	UX	137
1916	220	UX	137
1917	A-Class	UX	137
1918	AMG GT	UX	137
1919	B-Class	UX	137
1920	B200	UX	137
1921	C-Class	UX	137
1922	Citan	UX	137
1923	CL-Class	UX	137
1924	CLA-Class	UX	137
1925	CLK-Class	UX	137
1926	CLS-Class	UX	137
1927	E-Class Wagon	UX	137
1928	E-Class	UX	137
1929	G-Class	UX	137
1930	GL-Class	UX	137
1931	GLA-Class	UX	137
1932	GLC-Class	UX	137
1933	GLE-Class	UX	137
1934	GLK-Class	UX	137
1935	GLS-Class	UX	137
1936	M-Class	UX	137
1937	Metris	UX	137
1938	ML Class	UX	137
1939	R-Class	UX	137
1940	S-Class	UX	137
1941	SL-Class	UX	137
1942	SLK-Class	UX	137
1943	SLR McLaren	UX	137
1944	SLS AMG	UX	137
1945	Sprinter	UX	137
1946	Stretch Limo	UX	137
1947	V-Class	UX	137
1948	Valente	UX	137
1949	Vaneo	UX	137
1950	Viano	UX	137
1951	Vito	UX	137
1952	Cougar	UX	138
1953	Grand Marquis	UX	138
1954	Marauder	UX	138
1955	Mariner	UX	138
1956	Milan	UX	138
1957	Montego	UX	138
1958	Monterey	UX	138
1959	Mountaineer	UX	138
1960	Mystique	UX	138
1961	Sable	UX	138
1962	Villager	UX	138
1963	350	UX	139
1964	3SW	UX	139
1965	550	UX	139
1966	GS	UX	139
1967	MG 3	UX	139
1968	MG 5	UX	139
1969	MG 6	UX	139
1970	MG 7	UX	139
1971	MG GT	UX	139
1972	TF	UX	139
1973	GTR	UX	140
1974	MadAss	UX	140
1975	Megelli	UX	140
1976	R 150	UX	140
1977	RX 150	UX	140
1978	X-ROAD	UX	140
1979	5-Door	UX	141
1980	Cabrio	UX	141
1981	Clubman	UX	141
1982	Convertible	UX	141
1983	Cooper	UX	141
1984	Countryman	UX	141
1985	Hardtop	UX	141
1986	Paceman	UX	141
1987	380	UX	142
1988	Adventure	UX	142
1989	Airtrek	UX	142
1990	ASX	UX	142
1991	Attrage	UX	142
1992	Carisma	UX	142
1993	Challenger	UX	142
1994	Colt	UX	142
1995	Delica	UX	142
1996	Diamante	UX	142
1997	Dion	UX	142
1998	Eclipse	UX	142
1999	eK	UX	142
2000	Endeavor	UX	142
2001	Express	UX	142
2002	Fuzion	UX	142
2003	Galant Fortis	UX	142
2004	Galant	UX	142
2005	Grandis	UX	142
2006	Grunder	UX	142
2007	i-Miev	UX	142
2008	L200	UX	142
2009	L300	UX	142
2010	Lancer Fortis	UX	142
2011	Lancer	UX	142
2012	Magna	UX	142
2013	Maven	UX	142
2014	Minicab	UX	142
2015	Mirage	UX	142
2016	Montero Sport	UX	142
2017	Montero	UX	142
2018	Nativa	UX	142
2019	Outlander Sport	UX	142
2020	Outlander	UX	142
2021	Pajero Full	UX	142
2022	Pajero TR4	UX	142
2023	Pajero	UX	142
2024	Raider	UX	142
2025	RVR	UX	142
2026	Savrin	UX	142
2027	Space Star	UX	142
2028	Space Wagon	UX	142
2029	Sportero	UX	142
2030	Strada	UX	142
2031	Town Box	UX	142
2032	Triton	UX	142
2033	Zinger	UX	142
2034	Galue	UX	143
2035	Himiko	UX	143
2036	Orochi	UX	143
2037	Audace	UX	144
2038	California 1400 Touring	UX	144
2039	V7 II Racer	UX	144
2040	V7 II Special	UX	144
2041	V7 II Stone	UX	144
2042	V7 II Stornello	UX	144
2043	Brutale	UX	145
2044	F3	UX	145
2045	Rivale	UX	145
2046	Citra	UX	146
2047	Forza	UX	146
2048	Ria	UX	146
2049	Suria	UX	146
2050	Sutera	UX	146
2051	350Z Roadster	UX	147
2052	350Z	UX	147
2053	370Z Roadster	UX	147
2054	370Z	UX	147
2055	AD	UX	147
2056	Almera Tino	UX	147
2057	Almera	UX	147
2058	Altima	UX	147
2059	Aprio	UX	147
2060	Armada	UX	147
2061	Bluebird	UX	147
2062	Caravan	UX	147
2063	Cedric	UX	147
2064	Cefiro	UX	147
2065	Clipper	UX	147
2066	Cube	UX	147
2067	D21	UX	147
2068	DAYZ ROOX	UX	147
2069	DAYZ	UX	147
2070	Dualis	UX	147
2071	e-NV200	UX	147
2072	Elgrand	UX	147
2073	Evalia	UX	147
2074	Expert	UX	147
2075	Frontier	UX	147
2076	Fuga	UX	147
2077	Grand Livina	UX	147
2078	GT-R	UX	147
2079	Infiniti	UX	147
2080	Juke	UX	147
2081	Kicks	UX	147
2082	KIX	UX	147
2083	Lafesta	UX	147
2084	Lannia	UX	147
2085	Latio	UX	147
2086	Laurel	UX	147
2087	LEAF	UX	147
2088	Liberty	UX	147
2089	Livina Geniss	UX	147
2090	Livina	UX	147
2091	March	UX	147
2092	Maxima	UX	147
2093	Micra	UX	147
2094	Moco	UX	147
2095	Murano	UX	147
2096	Navara	UX	147
2097	Note	UX	147
2098	NP300 Frontier	UX	147
2099	NT100 Clipper	UX	147
2100	NV Passenger	UX	147
2101	NV	UX	147
2102	NV100	UX	147
2103	NV1500	UX	147
2104	NV200	UX	147
2105	NV2500	UX	147
2106	NV3500	UX	147
2107	NV400	UX	147
2108	Otti	UX	147
2109	Paladin	UX	147
2110	Pathfinder	UX	147
2111	Patrol	UX	147
2112	Pino	UX	147
2113	Pixo	UX	147
2114	Platina	UX	147
2115	Prairie	UX	147
2116	Presage	UX	147
2117	Presea	UX	147
2118	Primastar	UX	147
2119	Primera	UX	147
2120	Pulsar	UX	147
2121	Qashqai+2	UX	147
2122	Qashqai	UX	147
2123	Quest	UX	147
2124	R'nessa	UX	147
2125	Rogue	UX	147
2126	Sentra B13	UX	147
2127	Sentra B17	UX	147
2128	Sentra	UX	147
2129	Serena	UX	147
2130	Skyline	UX	147
2131	Stagea	UX	147
2132	Sunny	UX	147
2133	Sylphy	UX	147
2134	Teana	UX	147
2135	Terrano	UX	147
2136	Tida	UX	147
2137	Tiida	UX	147
2138	Tino	UX	147
2139	Titan	UX	147
2140	Tsuru	UX	147
2141	Urvan	UX	147
2142	V16	UX	147
2143	Versa Note	UX	147
2144	Versa	UX	147
2145	Wingroad	UX	147
2146	X-Trail	UX	147
2147	Xterra	UX	147
2148	Yumsun	UX	147
2149	Z Roadster	UX	147
2150	19	UX	148
2151	Alero	UX	148
2152	Aurora	UX	148
2153	Bravada	UX	148
2154	Silhouette	UX	148
2155	Adam	UX	149
2156	Agila	UX	149
2157	Ampera	UX	149
2158	Antara	UX	149
2159	Astra Sports Tourer	UX	149
2160	Astra	UX	149
2161	Combo C	UX	149
2162	Combo D	UX	149
2163	Corsa	UX	149
2164	Insignia Sports Tourer	UX	149
2165	Insignia	UX	149
2166	Karl	UX	149
2167	Meriva	UX	149
2168	Mokka	UX	149
2169	Movano	UX	149
2170	Omega	UX	149
2171	Signum	UX	149
2172	Sintra	UX	149
2173	Vectra	UX	149
2174	Vivaro	UX	149
2175	Zafira Tourer	UX	149
2176	Zafira	UX	149
2177	Ruda	UX	150
2178	Zonda	UX	151
2179	Alza	UX	152
2180	Axia	UX	152
2181	Bezza	UX	152
2182	Kancil	UX	152
2183	Kelisa	UX	152
2184	Kembara	UX	152
2185	Kenari	UX	152
2186	Myvi	UX	152
2187	Nautica	UX	152
2188	Rusa	UX	152
2189	Viva	UX	152
2190	1007	UX	153
2191	107	UX	153
2192	108	UX	153
2193	2008	UX	153
2194	206	UX	153
2195	207 Passion	UX	153
2196	207 SW	UX	153
2197	207	UX	153
2198	208	UX	153
2199	300	UX	153
2200	3008	UX	153
2201	301	UX	153
2202	306	UX	153
2203	307	UX	153
2204	308 SW	UX	153
2205	308	UX	153
2206	4007	UX	153
2207	4008	UX	153
2208	406	UX	153
2209	407	UX	153
2210	408	UX	153
2211	5007	UX	153
2212	5008	UX	153
2213	508 SW	UX	153
2214	508	UX	153
2215	607	UX	153
2216	807	UX	153
2217	Bipper	UX	153
2218	Boxer	UX	153
2219	Elystar	UX	153
2220	Eurobus	UX	153
2221	Expert Tepee	UX	153
2222	Expert	UX	153
2223	Grand Raid Tepee	UX	153
2224	Horizon	UX	153
2225	iOn	UX	153
2226	Ludix	UX	153
2227	Manager	UX	153
2228	Pars	UX	153
2229	Partner	UX	153
2230	RCZ	UX	153
2231	Tweet	UX	153
2232	Vivacity	UX	153
2233	Ape	UX	154
2234	Beverly	UX	154
2235	Fly	UX	154
2236	Liberty 125	UX	154
2237	Liberty ABS	UX	154
2238	Medley	UX	154
2239	MP3	UX	154
2240	Vespa LX 125	UX	154
2241	X10	UX	154
2242	Zip	UX	154
2243	Breeze	UX	155
2244	Neon	UX	155
2245	Prowler	UX	155
2246	Voyager	UX	155
2247	Slingshot	UX	156
2248	Aztek	UX	157
2249	Bonneville	UX	157
2250	Firebird	UX	157
2251	G3	UX	157
2252	G5	UX	157
2253	G6	UX	157
2254	G8	UX	157
2255	Grand Am	UX	157
2256	Grand Prix	UX	157
2257	GTO	UX	157
2258	Montana	UX	157
2259	Pursuit	UX	157
2260	Solstice	UX	157
2261	Sunfire	UX	157
2262	Torrent	UX	157
2263	Vibe	UX	157
2264	Wave	UX	157
2265	718	UX	158
2266	911	UX	158
2267	912	UX	158
2268	918	UX	158
2269	Boxster	UX	158
2270	Cayenne	UX	158
2271	Cayman	UX	158
2272	Macan Turbo	UX	158
2273	Macan	UX	158
2274	P	UX	158
2275	Targa	UX	158
2276	Arena	UX	159
2277	Exora	UX	159
2278	Gen-2	UX	159
2279	Impian	UX	159
2280	Inspira	UX	159
2281	Iriz	UX	159
2282	Juara	UX	159
2283	Perdana	UX	159
2284	Persona	UX	159
2285	Preve	UX	159
2286	Putra	UX	159
2287	S16	UX	159
2288	Saga	UX	159
2289	Satria	UX	159
2290	Savvy	UX	159
2291	Suprima	UX	159
2292	Tiara	UX	159
2293	Waja	UX	159
2294	Wira	UX	159
2295	3	UX	160
2296	5	UX	160
2297	CV	UX	161
2298	1500	UX	162
2299	2500	UX	162
2300	3500	UX	162
2301	ProMaster	UX	162
2302	Bobber	UX	163
2303	Daytona	UX	163
2304	NAC25	UX	163
2305	QM3	UX	164
2306	QM5	UX	164
2307	SM3	UX	164
2308	SM5	UX	164
2309	SM7	UX	164
2310	Captur	UX	165
2311	Clio Break	UX	165
2312	Clio	UX	165
2313	Dokker	UX	165
2314	Duster Oroch	UX	165
2315	Duster	UX	165
2316	Espace	UX	165
2317	Fluence	UX	165
2318	Grand Scenic	UX	165
2319	Kadjar	UX	165
2320	Kangoo	UX	165
2321	Koleos	UX	165
2322	Kwid	UX	165
2323	Laguna	UX	165
2324	Latitude	UX	165
2325	Lodgy	UX	165
2326	Logan	UX	165
2327	Master	UX	165
2328	Megane Estate	UX	165
2329	Megane	UX	165
2330	Modus	UX	165
2331	New Logan	UX	165
2332	Pulse	UX	165
2333	Safrane	UX	165
2334	Sandero	UX	165
2335	Scala	UX	165
2336	Scenic	UX	165
2337	Stepway	UX	165
2338	Symbol	UX	165
2339	Talisman	UX	165
2340	Thalia	UX	165
2341	Tondar	UX	165
2342	Trafic	UX	165
2343	Twingo	UX	165
2344	Vel Satis	UX	165
2345	Zoe	UX	165
2346	350	UX	166
2347	360	UX	166
2348	550	UX	166
2349	750	UX	166
2350	950	UX	166
2351	E50	UX	166
2352	W5	UX	166
2353	Flying Spur	UX	167
2354	Ghost	UX	167
2355	Phantom	UX	167
2356	Silver Cloud	UX	167
2357	Silver Shadow	UX	167
2358	Wraith	UX	167
2359	400	UX	168
2360	45	UX	168
2361	620	UX	168
2362	75	UX	168
2363	Bullet 350	UX	169
2364	Bullet 500	UX	169
2365	Bullet Electra	UX	169
2366	Classic 350	UX	169
2367	Classic 500	UX	169
2368	Classic Battle Green	UX	169
2369	Classic Chrome	UX	169
2370	Classic Desert Storm	UX	169
2371	Classic Squadron Blue	UX	169
2372	Continental GT	UX	169
2373	Rumbler 350	UX	169
2374	Rumbler 500	UX	169
2375	Thunderbird 350	UX	169
2376	Thunderbird 500	UX	169
2377	9-2	UX	170
2378	9-2X	UX	170
2379	9-3	UX	170
2380	9-3X	UX	170
2381	9-4X	UX	170
2382	9-5	UX	170
2383	9-7X	UX	170
2384	Sport	UX	170
2385	Vector	UX	170
2386	Tiba	UX	171
2387	S281	UX	172
2388	S302	UX	172
2389	S331	UX	172
2390	S570	UX	172
2391	S620	UX	172
2392	S7	UX	172
2393	Astra	UX	173
2394	Aura	UX	173
2395	Ion	UX	173
2396	L100	UX	173
2397	L200	UX	173
2398	L300	UX	173
2399	LW200	UX	173
2400	LW300	UX	173
2401	Outlook	UX	173
2402	Relay	UX	173
2403	SC1	UX	173
2404	Sky	UX	173
2405	SL1	UX	173
2406	SL2	UX	173
2407	SW2	UX	173
2408	VUE	UX	173
2409	FR-S	UX	174
2410	iA	UX	174
2411	iM	UX	174
2412	iQ	UX	174
2413	tC	UX	174
2414	xA	UX	174
2415	xB	UX	174
2416	xD	UX	174
2417	Turismo Leggera 125	UX	175
2418	Alhambra	UX	176
2419	Altea	UX	176
2420	Ateca	UX	176
2421	Cordoba	UX	176
2422	Exeo	UX	176
2423	Ibiza	UX	176
2424	Leon	UX	176
2425	MII	UX	176
2426	Toledo	UX	176
2427	X-Perience	UX	176
2428	Uber	UX	177
2429	C53	UX	178
2430	C81	UX	178
2431	Haiyue	UX	178
2432	Langfeng	UX	178
2433	X30	UX	179
2434	SCEO	UX	180
2435	Citigo	UX	181
2436	Fabia	UX	181
2437	Laura	UX	181
2438	Octavia Combi	UX	181
2439	Octavia	UX	181
2440	Rapid Spaceback	UX	181
2441	Rapid	UX	181
2442	Roomster	UX	181
2443	Superb Combi	UX	181
2444	Superb Derivative	UX	181
2445	Superb	UX	181
2446	Yeti	UX	181
2447	Forfour	UX	182
2448	Fortwo	UX	182
2449	Extreme	UX	183
2450	Rhino	UX	183
2451	Delica	UX	184
2452	DX7	UX	184
2453	Lioncel	UX	184
2454	V3	UX	184
2455	V5	UX	184
2456	V6Lingshi	UX	184
2457	Veryca	UX	184
2458	Xiwang	UX	184
2459	A113	UX	185
2460	A516	UX	185
2461	A620	UX	185
2462	Envy	UX	185
2463	M11	UX	185
2464	Tiggo	UX	185
2465	C8	UX	186
2466	Actyon Sports	UX	187
2467	Actyon	UX	187
2468	Chairman	UX	187
2469	Istana	UX	187
2470	Korando	UX	187
2471	Kyron	UX	187
2472	Musso	UX	187
2473	Rexton	UX	187
2474	Rodius	UX	187
2475	Stavic	UX	187
2476	Tivoli	UX	187
2477	Turismo	UX	187
2478	Baja 125	UX	188
2479	Buddy	UX	188
2480	Carino	UX	188
2481	Centaur	UX	188
2482	Dax 125	UX	188
2483	Iron One	UX	188
2484	JR Extreme	UX	188
2485	Mini GiO	UX	188
2486	Mini MOMO	UX	188
2487	Mini SOLO	UX	188
2488	Solo	UX	188
2489	B3	UX	189
2490	B4	UX	189
2491	B9 Tribeca	UX	189
2492	Baja	UX	189
2493	BRZ	UX	189
2494	Crosstrek Hybrid	UX	189
2495	Crosstrek	UX	189
2496	Dias Wagon	UX	189
2497	Exiga	UX	189
2498	Forester	UX	189
2499	G3X Justy	UX	189
2500	Impreza	UX	189
2501	Justy	UX	189
2502	Legacy	UX	189
2503	Levorg	UX	189
2504	Libero	UX	189
2505	Liberty	UX	189
2506	Lucra	UX	189
2507	Outback	UX	189
2508	Pleo	UX	189
2509	R1	UX	189
2510	R2	UX	189
2511	Stella	UX	189
2512	Traviq	UX	189
2513	Trezia	UX	189
2514	Tribeca	UX	189
2515	WRX	UX	189
2516	XV Crosstrek	UX	189
2517	A100	UX	190
2518	Access 125	UX	190
2519	Address	UX	190
2520	Aerio	UX	190
2521	Alivio	UX	190
2522	Alto	UX	190
2523	APV	UX	190
2524	Arashi	UX	190
2525	Axelo	UX	190
2526	Baleno	UX	190
2527	Bandit	UX	190
2528	Boulevard	UX	190
2529	Bravo	UX	190
2530	Burgman	UX	190
2531	Celerio	UX	190
2532	Cervo	UX	190
2533	Ciaz	UX	190
2534	Cultus	UX	190
2535	Equator	UX	190
2536	Ertiga	UX	190
2537	Escudo	UX	190
2538	Esteem	UX	190
2539	Every	UX	190
2540	Forenza	UX	190
2541	Fun	UX	190
2542	FXR	UX	190
2543	GD110HU	UX	190
2544	Gixxer SF	UX	190
2545	Gixxer	UX	190
2546	Gladius	UX	190
2547	Grand Nomade	UX	190
2548	Grand Vitara	UX	190
2549	GS150R	UX	190
2550	GSR	UX	190
2551	GSX-R1000	UX	190
2552	GSX-S	UX	190
2553	GSX1300R	UX	190
2554	GZ150	UX	190
2555	Hayabusa	UX	190
2556	Hayate 125	UX	190
2557	Hustler	UX	190
2558	Ignis	UX	190
2559	Impulse	UX	190
2560	Inazuma R	UX	190
2561	Jimny	UX	190
2562	Karimun	UX	190
2563	Katana	UX	190
2564	Kizashi	UX	190
2565	Let's	UX	190
2566	Liana	UX	190
2567	Mehran	UX	190
2568	MR Wagon	UX	190
2569	Nex	UX	190
2570	Palette	UX	190
2571	Raider 150	UX	190
2572	RC	UX	190
2573	Reno	UX	190
2574	Revo	UX	190
2575	RG	UX	190
2576	RGR	UX	190
2577	S-Cross	UX	190
2578	Satria	UX	190
2579	Shogun Axelo	UX	190
2580	Shogun	UX	190
2581	Shooter 115 FI	UX	190
2582	Skydrive 125	UX	190
2583	Skywave	UX	190
2584	Slingshot Pluss	UX	190
2585	Smash	UX	190
2586	Solio	UX	190
2587	Spacia	UX	190
2588	Spin	UX	190
2589	Splash	UX	190
2590	Swift Dzire	UX	190
2591	Swift Sport	UX	190
2592	Swift	UX	190
2593	Swish 125	UX	190
2594	SX4	UX	190
2595	Thunder	UX	190
2596	Tianyu	UX	190
2597	Tornado	UX	190
2598	TS	UX	190
2599	UA 125T	UX	190
2600	V-Strom	UX	190
2601	VanVan 125	UX	190
2602	Verona	UX	190
2603	Vitara	UX	190
2604	Viva	UX	190
2605	Wagon R	UX	190
2606	XL7	UX	190
2607	Angela 110	UX	191
2608	Angela 50	UX	191
2609	Attila Elizabeth	UX	191
2610	Attila V	UX	191
2611	Bonus	UX	191
2612	Fiddle II	UX	191
2613	Galaxy	UX	191
2614	GTS 300i evo	UX	191
2615	Italijet Formula 125	UX	191
2616	Jet 4 125	UX	191
2617	Joymax 300i	UX	191
2618	Joyride EVO	UX	191
2619	Maxsym 400i ABS	UX	191
2620	Orbit II	UX	191
2621	Shark	UX	191
2622	Symba	UX	191
2623	Tini 110	UX	191
2624	Venus	UX	191
2625	Wolf	UX	191
2626	Ace	UX	192
2627	Aria	UX	192
2628	Bolt	UX	192
2629	Grande	UX	192
2630	Indica	UX	192
2631	Indigo XL	UX	192
2632	Indigo	UX	192
2633	Magic Iris	UX	192
2634	Manza	UX	192
2635	Movus	UX	192
2636	Nano	UX	192
2637	Safari	UX	192
2638	Sumo	UX	192
2639	Tiago	UX	192
2640	Venture	UX	192
2641	Vista	UX	192
2642	Xenon	UX	192
2643	Zest	UX	192
2644	MV-1	UX	193
2645	Taxi	UX	193
2646	Model S	UX	194
2647	Model X	UX	194
2648	Roadster	UX	194
2649	M'Car	UX	195
2650	M'Way	UX	195
2651	4Runner	UX	196
2652	86	UX	196
2653	Agya	UX	196
2654	Allex	UX	196
2655	Allion	UX	196
2656	Alphard	UX	196
2657	Altezza	UX	196
2658	Altis	UX	196
2659	Aqua	UX	196
2660	Aristo	UX	196
2661	Aurion	UX	196
2662	Auris Touring Sports	UX	196
2663	Auris	UX	196
2664	Avalon	UX	196
2665	Avanza	UX	196
2666	Avensis	UX	196
2667	Aygo	UX	196
2668	bB	UX	196
2669	Belta	UX	196
2670	Caldina	UX	196
2671	Calya	UX	196
2672	Camry Solara	UX	196
2673	Camry	UX	196
2674	Carina	UX	196
2675	Celica	UX	196
2676	Celsior	UX	196
2677	Century	UX	196
2678	Chaser	UX	196
2679	Comfort	UX	196
2680	Commuter	UX	196
2681	Condor	UX	196
2682	Corolla Altis	UX	196
2683	Corolla Axio	UX	196
2684	Corolla EX	UX	196
2685	Corolla Fielder	UX	196
2686	Corolla Levin	UX	196
2687	Corolla Rumion	UX	196
2688	Corolla Spacio	UX	196
2689	Corolla	UX	196
2690	Corona Premio	UX	196
2691	Corona	UX	196
2692	Crown Athlete	UX	196
2693	Crown Comfort	UX	196
2694	Crown Majesta	UX	196
2695	Crown Royal	UX	196
2696	Crown Sedan	UX	196
2697	Crown	UX	196
2698	E'Z	UX	196
2699	Echo	UX	196
2700	Esquire	UX	196
2701	Estima	UX	196
2702	Etios Cross	UX	196
2703	Etios Liva	UX	196
2704	Etios	UX	196
2705	FJ Cruiser	UX	196
2706	Fortuner	UX	196
2707	Fun Cargo	UX	196
2708	Grandia	UX	196
2709	Granvia	UX	196
2710	Harrier	UX	196
2711	HiAce	UX	196
2712	Highlander	UX	196
2713	Hilux Surf	UX	196
2714	Hilux SW4	UX	196
2715	Hilux Vigo	UX	196
2716	Hilux	UX	196
2717	Innova	UX	196
2718	Ipsum	UX	196
2719	iQ	UX	196
2720	Isis	UX	196
2721	ist	UX	196
2722	Kluger	UX	196
2723	Land Cruiser	UX	196
2724	Mark II	UX	196
2725	Mark X	UX	196
2726	Matrix	UX	196
2727	Mirai	UX	196
2728	MR2 Spyder	UX	196
2729	Nadia	UX	196
2730	NAV1	UX	196
2731	Noah	UX	196
2732	Opa	UX	196
2733	Passo	UX	196
2734	Picnic	UX	196
2735	Pixis	UX	196
2736	Platz	UX	196
2737	Porte	UX	196
2738	Prado	UX	196
2739	Premio	UX	196
2740	Previa	UX	196
2741	Prius C	UX	196
2742	Prius V	UX	196
2743	Prius+	UX	196
2744	Prius	UX	196
2745	Probox	UX	196
2746	Quantum	UX	196
2747	Ractis	UX	196
2748	Raum	UX	196
2749	RAV4	UX	196
2750	Reiz	UX	196
2751	Revo	UX	196
2752	Rukus	UX	196
2753	Rush	UX	196
2754	Sai	UX	196
2755	Sequoia	UX	196
2756	Sienna	UX	196
2757	Sienta	UX	196
2758	Silver Cloud	UX	196
2759	Spade	UX	196
2760	Sprinter Carib	UX	196
2761	Sprinter	UX	196
2762	Starlet	UX	196
2763	Stretch Limo	UX	196
2764	Succeed	UX	196
2765	SW4	UX	196
2766	Tacoma	UX	196
2767	Tarago	UX	196
2768	Tercel	UX	196
2769	Terios	UX	196
2770	TownAce	UX	196
2771	Tundra	UX	196
2772	Ultima	UX	196
2773	Urban Cruiser	UX	196
2774	Vanguard	UX	196
2775	Vellfire	UX	196
2776	Ventury	UX	196
2777	Venza	UX	196
2778	Verossa	UX	196
2779	Verso	UX	196
2780	Vios	UX	196
2781	Vista	UX	196
2782	Vitz	UX	196
2783	Voltz	UX	196
2784	Voxy	UX	196
2785	Wigo	UX	196
2786	WiLL VS	UX	196
2787	WISH	UX	196
2788	Yaris R	UX	196
2789	Yaris	UX	196
2790	Zace	UX	196
2791	Zelas	UX	196
2792	600	UX	197
2793	Bonneville	UX	198
2794	Daytona	UX	198
2795	Rocket III Roadster	UX	198
2796	Speed Triple	UX	198
2797	Speed Twin	UX	198
2798	Spitfire	UX	198
2799	Street Triple	UX	198
2800	Thruxton	UX	198
2801	Thunderbird Commander	UX	198
2802	Thunderbird Family	UX	198
2803	Thunderbird LT	UX	198
2804	Thunderbird Storm	UX	198
2805	Tiger Explorer	UX	198
2806	Tiger	UX	198
2807	Speed 12	UX	199
2808	Apache RTR 160	UX	200
2809	Apache RTR 180 ABS	UX	200
2810	Apache RTR 180	UX	200
2811	Apache RTR 200	UX	200
2812	Auto	UX	200
2813	Dazz	UX	200
2814	Flame SR 125	UX	200
2815	Jupiter	UX	200
2816	King	UX	200
2817	Max	UX	200
2818	Neo	UX	200
2819	Phoenix 125	UX	200
2820	Rockz	UX	200
2821	Scooty Pep Plus	UX	200
2822	Scooty Streak	UX	200
2823	Scooty Zest	UX	200
2824	Sport	UX	200
2825	Star City Plus	UX	200
2826	Wego 110	UX	200
2827	Patriot	UX	201
2828	Bicycle	UX	202
2829	Delivery	UX	202
2830	Motorbike	UX	202
2831	Pedicab	UX	202
2832	Pickup	UX	202
2833	Scooter	UX	202
2834	Walker	UX	202
2835	Antara	UX	203
2836	Astra	UX	203
2837	Insignia	UX	203
2838	Meriva	UX	203
2839	Signum	UX	203
2840	Vectra	UX	203
2841	Vivaro	UX	203
2842	Zafira	UX	203
2843	ChenFeng	UX	204
2844	D50	UX	204
2845	E30	UX	204
2846	R30	UX	204
2847	R50	UX	204
2848	T70	UX	204
2849	946	UX	205
2850	GTS	UX	205
2851	GTX	UX	205
2852	LT	UX	205
2853	LX	UX	205
2854	LXV GTV	UX	205
2855	Primavera	UX	205
2856	S	UX	205
2857	Sprint	UX	205
2858	V Cross	UX	206
2859	V1	UX	206
2860	V1X R	UX	206
2861	VSR	UX	206
2862	Arlen Ness Victory Vision	UX	207
2863	Boardwalk	UX	207
2864	Cory Ness Cross Country Tour	UX	207
2865	Cross Country Tour	UX	207
2866	Cross Country	UX	207
2867	Cross Road Classic	UX	207
2868	Hammer 8-Ball	UX	207
2869	Hard-Ball	UX	207
2870	High-Ball	UX	207
2871	Jackpot	UX	207
2872	Judge	UX	207
2873	Vegas 8-Ball	UX	207
2874	Vision Tour	UX	207
2875	Zach Ness Cross Country	UX	207
2876	Comet	UX	208
2877	Dragon	UX	208
2878	New Nexus	UX	208
2879	Rama	UX	208
2880	Viva Matic	UX	208
2881	Winner	UX	208
2882	Amarok	UX	209
2883	Beetle	UX	209
2884	Bora	UX	209
2885	Cabrio	UX	209
2886	Caddy	UX	209
2887	Caravelle	UX	209
2888	CC	UX	209
2889	Coccinelle	UX	209
2890	Crafter	UX	209
2891	Cross Lavida	UX	209
2892	CrossFox	UX	209
2893	Derby	UX	209
2894	e-Golf	UX	209
2895	e-up!	UX	209
2896	Eos	UX	209
2897	EuroVan	UX	209
2898	Fox	UX	209
2899	GLI	UX	209
2900	Gol Trend	UX	209
2901	Gol	UX	209
2902	Golf Estate	UX	209
2903	Golf Plus	UX	209
2904	Golf SportWagen	UX	209
2905	Golf Variant	UX	209
2906	Golf	UX	209
2907	Gran Lavida	UX	209
2908	GTI	UX	209
2909	Jetta SportWagen	UX	209
2910	Jetta	UX	209
2911	Kombi	UX	209
2912	Lamando	UX	209
2913	Lavida	UX	209
2914	Lupo	UX	209
2915	Magotan	UX	209
2916	Multivan	UX	209
2917	Parati	UX	209
2918	Passat	UX	209
2919	Phaeton	UX	209
2920	Pointer	UX	209
2921	Polo	UX	209
2922	R32	UX	209
2923	Rabbit	UX	209
2924	Routan	UX	209
2925	Sagitar	UX	209
2926	Santana	UX	209
2927	Saveiro	UX	209
2928	Scirocco	UX	209
2929	Sedan	UX	209
2930	Sharan	UX	209
2931	Space Cross	UX	209
2932	Spacefox	UX	209
2933	Sportsvan	UX	209
2934	Stretch Limo	UX	209
2935	Suran	UX	209
2936	Tiguan	UX	209
2937	Touareg	UX	209
2938	Touran	UX	209
2939	Transporter	UX	209
2940	TSi	UX	209
2941	Up	UX	209
2942	Vento	UX	209
2943	Voyage	UX	209
2944	850	UX	210
2945	C30	UX	210
2946	C70	UX	210
2947	S40	UX	210
2948	S60	UX	210
2949	S70	UX	210
2950	S80	UX	210
2951	S90	UX	210
2952	Stretch Limo	UX	210
2953	V40	UX	210
2954	V50	UX	210
2955	V60	UX	210
2956	V70	UX	210
2957	V90	UX	210
2958	XC60	UX	210
2959	XC70	UX	210
2960	XC90	UX	210
2961	Estina	UX	211
2962	Tingo	UX	211
2963	MV-1	UX	212
2964	Wajer 38	UX	213
2965	Enranger	UX	214
2966	Hongguang	UX	215
2967	Hongtu	UX	215
2968	Acruzo	UX	216
2969	Aerox	UX	216
2970	Alpha	UX	216
2971	Bolt	UX	216
2972	Byson	UX	216
2973	Crux	UX	216
2974	Crypton	UX	216
2975	Cuxi	UX	216
2976	Eagle Eye	UX	216
2977	Exciter 150	UX	216
2978	F1ZR	UX	216
2979	Fascino	UX	216
2980	Fazer 150	UX	216
2981	Fazer-FI	UX	216
2982	Filano	UX	216
2983	Fino	UX	216
2984	FJ-09	UX	216
2985	FJR1300A	UX	216
2986	Force	UX	216
2987	FZ-09	UX	216
2988	FZ-16	UX	216
2989	FZ-FI	UX	216
2990	FZ150i	UX	216
2991	FZ8-N	UX	216
2992	FZS	UX	216
2993	FZS-FI	UX	216
2994	Gladiator	UX	216
2995	Grand Filano	UX	216
2996	Grande	UX	216
2997	GT125	UX	216
2998	Jupiter	UX	216
2999	Lexam	UX	216
3000	Luvias	UX	216
3001	M-Slaz	UX	216
3002	Mio	UX	216
3003	MT-03	UX	216
3004	MT-07	UX	216
3005	MT-09	UX	216
3006	MT-25	UX	216
3007	MX King	UX	216
3008	NMAX	UX	216
3009	Nouvo Elegance	UX	216
3010	Nouvo SX	UX	216
3011	R15	UX	216
3012	R25	UX	216
3013	Ray	UX	216
3014	RX 135	UX	216
3015	RX	UX	216
3016	Saluto	UX	216
3017	Scorpio	UX	216
3018	Sirius	UX	216
3019	Soul	UX	216
3020	Spark 115i	UX	216
3021	Spark	UX	216
3022	SR400	UX	216
3023	Super Tenere	UX	216
3024	SZ-X	UX	216
3025	TMAX	UX	216
3026	Tricity	UX	216
3027	TTX	UX	216
3028	Vega Force	UX	216
3029	Vino	UX	216
3030	Vixion Advance	UX	216
3031	WR250R	UX	216
3032	X-MAX	UX	216
3033	X-Ride	UX	216
3034	Xabre	UX	216
3035	Xeon	UX	216
3036	YZ	UX	216
3037	YZF-R1	UX	216
3038	YZF-R15	UX	216
3039	YZF-R3	UX	216
3040	YZR	UX	216
3041	F10	UX	217
3042	F12	UX	217
3043	T70	UX	217
3044	A380	UX	218
3045	Chance	UX	219
3046	Forza	UX	219
3047	Vida	UX	219
3048	D2	UX	220
3049	DS	UX	221
3050	FX	UX	221
3051	S	UX	221
3052	SR	UX	221
3053	Type 5	UX	221
3054	Type 9	UX	221
3055	H220	UX	222
3056	H230	UX	222
3057	H330	UX	222
3058	H530	UX	222
3059	Junjie	UX	222
3060	Kubao	UX	222
3061	V3	UX	222
3062	V5	UX	222
3063	Zunchi	UX	222
3064	Koala	UX	223
3065	Cruiser RK 125	UX	224
3066	Ryuka Classic RK110	UX	224
3067	Ryuka Fly 150	UX	224
3068	Ryuka Gorila 125	UX	224
3069	Ryuka Monkey 125	UX	224
3070	Sport RK100	UX	224
3071	Z-One	UX	224
3072	ZSR125GY	UX	224
3073	5008	UX	225
3074	Cloud 100	UX	225
3075	Damai X5	UX	225
3076	E20	UX	225
3077	Hunter	UX	225
3078	M300	UX	225
3079	Nomada	UX	225
3080	T200	UX	225
3081	T600	UX	225
3082	XS	UX	225
3083	Yun 100	UX	225
3084	Z100	UX	225
3085	Z200	UX	225
3086	Z300	UX	225
3087	Z500	UX	225
3088	Grand Tiger	UX	226
3089	Urban Ark C3	UX	226
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 27, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 182, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);


--
-- Name: home_marca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('home_marca_id_seq', 226, true);


--
-- Name: home_modelo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('home_modelo_id_seq', 3089, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_marca home_marca_nombreMarca_fc395197_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_marca
    ADD CONSTRAINT "home_marca_nombreMarca_fc395197_uniq" UNIQUE ("nombreMarca");


--
-- Name: home_marca home_marca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_marca
    ADD CONSTRAINT home_marca_pkey PRIMARY KEY (id);


--
-- Name: home_modelo home_modelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_modelo
    ADD CONSTRAINT home_modelo_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: home_marca_nombreMarca_fc395197_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "home_marca_nombreMarca_fc395197_like" ON home_marca USING btree ("nombreMarca" varchar_pattern_ops);


--
-- Name: home_modelo_marca_id_e560a71a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_modelo_marca_id_e560a71a ON home_modelo USING btree (marca_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_modelo home_modelo_marca_id_e560a71a_fk_home_marca_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_modelo
    ADD CONSTRAINT home_modelo_marca_id_e560a71a_fk_home_marca_id FOREIGN KEY (marca_id) REFERENCES home_marca(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

