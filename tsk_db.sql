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
    name character varying(50) NOT NULL
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
    name character varying(50) NOT NULL,
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
1	pbkdf2_sha256$36000$UBYjQtNUWjtd$z0ZGZ99EFLBqNBInbGniZ5J0pAns5UX7vm/HUspoIDw=	2017-11-01 14:59:11.23252-05	t	Rich			drdr_2@hotmail.com	t	t	2017-10-30 17:10:19.953159-05
2	pbkdf2_sha256$36000$OY7ho9qzuw74$bJ+GtWM+ETolX/Tpd+7D/3Io17rJJrUY2kyP/amcmRY=	2017-11-28 13:16:12.543835-06	t	alfredo.t			a.g.tornell@outlook.com	t	t	2017-11-28 13:15:51.025477-06
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
183	2017-11-01 15:05:51.331887-05	2418	Alhambra	2	[{"changed": {"fields": ["tipouber"]}}]	3	1
184	2017-11-01 15:07:06.889141-05	2665	Avanza	2	[{"changed": {"fields": ["tipouber"]}}]	3	1
185	2017-11-01 15:09:39.063866-05	1578	Commander	2	[{"changed": {"fields": ["tipouber"]}}]	3	1
186	2017-11-01 15:10:22.93645-05	2890	Crafter	2	[{"changed": {"fields": ["tipouber"]}}]	3	1
187	2017-11-01 15:11:08.428491-05	1885	CX-9	2	[{"changed": {"fields": ["tipouber"]}}]	3	1
188	2017-11-01 15:12:03.301101-05	817	Durango	2	[{"changed": {"fields": ["tipouber"]}}]	3	1
189	2017-11-02 15:41:38.413789-05	6012	300	3		3	1
190	2017-11-02 15:41:38.506911-05	6013	A4	3		3	1
191	2017-11-02 15:41:38.510958-05	6014	A5	3		3	1
192	2017-11-02 15:41:38.513433-05	6015	A6	3		3	1
193	2017-11-02 15:41:38.515421-05	6016	A7	3		3	1
194	2017-11-02 15:41:38.519496-05	6017	A8	3		3	1
195	2017-11-02 15:41:38.5225-05	6018	Acadia	3		3	1
196	2017-11-02 15:41:38.525517-05	6020	Alhambra	3		3	1
197	2017-11-02 15:41:38.528518-05	6019	Alhambra	3		3	1
198	2017-11-02 15:41:38.531526-05	6021	Armada	3		3	1
199	2017-11-02 15:41:38.533575-05	6022	ATS	3		3	1
200	2017-11-02 15:41:38.53651-05	6023	Avanza	3		3	1
201	2017-11-02 15:41:38.539514-05	6024	C	3		3	1
202	2017-11-02 15:41:38.541518-05	6025	Cayenne	3		3	1
203	2017-11-02 15:41:38.54459-05	6026	CLS	3		3	1
204	2017-11-02 15:41:38.546524-05	6027	Commander	3		3	1
205	2017-11-02 15:41:38.549545-05	6028	Crafter	3		3	1
206	2017-11-02 15:41:38.551526-05	6029	CTS	3		3	1
207	2017-11-02 15:41:38.554527-05	6030	CX9	3		3	1
208	2017-11-02 15:41:38.557695-05	6031	Disvovery	3		3	1
209	2017-11-02 15:41:38.56054-05	6032	Durango	3		3	1
210	2017-11-02 15:41:38.562533-05	6033	Eclass	3		3	1
211	2017-11-02 15:41:38.564538-05	6034	Enclave	3		3	1
212	2017-11-02 15:41:38.56754-05	6035	Escale	3		3	1
213	2017-11-02 15:41:38.570568-05	6036	Expedition	3		3	1
214	2017-11-02 15:41:38.573591-05	6037	Explorer	3		3	1
215	2017-11-02 15:41:38.576555-05	6038	Express	3		3	1
216	2017-11-02 15:41:38.579549-05	6039	G	3		3	1
217	2017-11-02 15:41:38.583598-05	6040	G11	3		3	1
218	2017-11-02 15:41:38.585574-05	6041	GL	3		3	1
219	2017-11-02 15:41:38.58856-05	6042	GLK	3		3	1
220	2017-11-02 15:41:38.591566-05	6043	Grand	3		3	1
221	2017-11-02 15:41:38.593579-05	6044	GX	3		3	1
222	2017-11-02 15:41:38.596568-05	6045	Hiace	3		3	1
223	2017-11-02 15:41:38.598632-05	6046	Highlander	3		3	1
224	2017-11-02 15:41:38.601634-05	6047	Journey	3		3	1
225	2017-11-02 15:41:38.604091-05	6048	JX	3		3	1
226	2017-11-02 15:41:38.606593-05	6049	Lacrosse	3		3	1
227	2017-11-02 15:41:38.609593-05	6050	Land	3		3	1
228	2017-11-02 15:41:38.612596-05	6051	LR2	3		3	1
229	2017-11-02 15:41:38.615101-05	6052	LR3	3		3	1
230	2017-11-02 15:41:38.616679-05	6053	LR4	3		3	1
231	2017-11-02 15:41:38.6207-05	6054	LX	3		3	1
232	2017-11-02 15:41:38.622707-05	6056	M	3		3	1
233	2017-11-02 15:41:38.625707-05	6055	M	3		3	1
234	2017-11-02 15:41:38.627691-05	6057	Macan	3		3	1
235	2017-11-02 15:41:38.629695-05	6058	Manager	3		3	1
236	2017-11-02 15:41:38.632702-05	6059	MDX	3		3	1
237	2017-11-02 15:41:38.634726-05	6060	MKC	3		3	1
238	2017-11-02 15:41:38.636701-05	6061	MKS	3		3	1
239	2017-11-02 15:41:38.640703-05	6062	MKX	3		3	1
240	2017-11-02 15:41:38.643707-05	6063	MKZ	3		3	1
241	2017-11-02 15:41:38.646747-05	6064	Montero	3		3	1
242	2017-11-02 15:41:38.648713-05	6065	Navigator	3		3	1
243	2017-11-02 15:41:38.650731-05	6066	Odyssey	3		3	1
244	2017-11-02 15:41:38.654734-05	6067	Outlander	3		3	1
245	2017-11-02 15:41:38.656719-05	6068	Pacifica	3		3	1
246	2017-11-02 15:41:38.659727-05	6069	Pathfinder	3		3	1
247	2017-11-02 15:41:38.661803-05	6070	Pilot	3		3	1
248	2017-11-02 15:41:38.663749-05	6071	Promaster	3		3	1
249	2017-11-02 15:41:38.666735-05	6072	Q5	3		3	1
250	2017-11-02 15:41:38.669777-05	6073	Q50	3		3	1
251	2017-11-02 15:41:38.67273-05	6074	Q7	3		3	1
252	2017-11-02 15:41:38.676737-05	6075	Q70	3		3	1
253	2017-11-02 15:41:38.67874-05	6076	QX60	3		3	1
254	2017-11-02 15:41:38.681746-05	6077	QX70	3		3	1
255	2017-11-02 15:41:38.683745-05	6078	QX80	3		3	1
256	2017-11-02 15:41:38.686746-05	6079	Range Over	3		3	1
257	2017-11-02 15:41:38.689746-05	6080	Range Rover Spot	3		3	1
258	2017-11-02 15:41:38.692768-05	6081	RDX	3		3	1
259	2017-11-02 15:41:38.694779-05	6082	Regal	3		3	1
260	2017-11-02 15:41:38.696755-05	6083	RLX	3		3	1
261	2017-11-02 15:41:38.699774-05	6084	Routan	3		3	1
262	2017-11-02 15:41:38.702286-05	6085	S60	3		3	1
263	2017-11-02 15:41:38.705288-05	6086	S80	3		3	1
264	2017-11-02 15:41:38.708299-05	6087	Sclass	3		3	1
265	2017-11-02 15:41:38.710815-05	6088	Sequoia	3		3	1
266	2017-11-02 15:41:38.713309-05	6089	Sharan	3		3	1
267	2017-11-02 15:41:38.715803-05	6090	Sienna	3		3	1
268	2017-11-02 15:41:38.718086-05	6091	Sprinter	3		3	1
269	2017-11-02 15:41:38.72109-05	6092	SRX	3		3	1
270	2017-11-02 15:41:38.72411-05	6093	Suburban	3		3	1
271	2017-11-02 15:41:38.726133-05	6094	Tahoe	3		3	1
272	2017-11-02 15:41:38.728096-05	6095	Terrain	3		3	1
273	2017-11-02 15:41:38.731105-05	6096	TL	3		3	1
274	2017-11-02 15:41:38.733103-05	6097	Touareg	3		3	1
275	2017-11-02 15:41:38.73618-05	6098	Town&Counter	3		3	1
276	2017-11-02 15:41:38.739109-05	6099	Trafic	3		3	1
277	2017-11-02 15:41:38.742125-05	6100	Transit	3		3	1
278	2017-11-02 15:41:38.744219-05	6101	Traverse	3		3	1
279	2017-11-02 15:41:38.746115-05	6102	Uplender	3		3	1
280	2017-11-02 15:41:38.749193-05	6103	Urban	3		3	1
281	2017-11-02 15:41:38.751159-05	6104	Viano	3		3	1
282	2017-11-02 15:41:38.754164-05	6105	Voyager	3		3	1
283	2017-11-02 15:41:38.757227-05	6106	XC60	3		3	1
284	2017-11-02 15:41:38.760172-05	6107	XC90	3		3	1
285	2017-11-02 15:41:38.762128-05	6108	XF	3		3	1
286	2017-11-02 15:41:38.765136-05	6109	XJ	3		3	1
287	2017-11-02 15:41:38.767204-05	6110	Yukon	3		3	1
288	2017-11-02 15:44:00.840067-05	6124	C	2	[{"changed": {"fields": ["tipouber"]}}]	3	1
289	2017-11-02 15:44:16.887148-05	6141	GL	2	[{"changed": {"fields": ["tipouber"]}}]	3	1
290	2017-11-02 15:44:49.965026-05	6141	GL	2	[{"changed": {"fields": ["tipouber"]}}]	3	1
291	2017-11-02 15:45:55.065802-05	6143	Grand Cherokee	2	[{"changed": {"fields": ["name", "tipouber"]}}]	3	1
292	2017-11-02 15:46:21.744419-05	6179	Range Over	2	[{"changed": {"fields": ["tipouber"]}}]	3	1
293	2017-11-02 15:47:02.200165-05	6156	M Class	2	[{"changed": {"fields": ["name", "tipouber"]}}]	3	1
294	2017-11-02 15:47:40.44629-05	6150	Land Cruiser	2	[{"changed": {"fields": ["name", "tipouber"]}}]	3	1
295	2017-11-02 15:48:07.533676-05	6197	Touareg	2	[{"changed": {"fields": ["tipouber"]}}]	3	1
296	2017-11-28 13:40:01.211977-06	6118	Acadia	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
297	2017-11-28 13:40:14.385238-06	6121	Armada	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
298	2017-11-28 13:41:07.344222-06	6134	Enclave	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
299	2017-11-28 13:41:25.240088-06	6135	Escale	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
300	2017-11-28 13:41:42.007875-06	6503	Escalade	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
301	2017-11-28 13:42:12.05059-06	6136	Expedition	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
302	2017-11-28 13:42:27.200936-06	6137	Explorer	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
303	2017-11-28 13:43:10.129527-06	6141	GL	3		3	2
304	2017-11-28 13:43:20.227746-06	7890	GL-Class	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
305	2017-11-28 13:44:03.625573-06	6144	GX	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
306	2017-11-28 13:44:26.366788-06	6148	JX	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
307	2017-11-28 13:44:55.330121-06	6150	Land Cruiser	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
308	2017-11-28 13:45:15.50169-06	6152	LR3	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
309	2017-11-28 13:45:28.188276-06	6154	LX	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
310	2017-11-28 13:45:29.776185-06	6154	LX	2	[]	3	2
311	2017-11-28 13:45:47.604669-06	6165	Navigator	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
312	2017-11-28 13:46:03.934327-06	6159	MDX	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
313	2017-11-28 13:46:44.928121-06	6174	Q7	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
314	2017-11-28 13:46:52.967029-06	6176	QX60	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
315	2017-11-28 13:47:02.447968-06	6177	QX70	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
316	2017-11-28 13:47:12.112324-06	6178	QX80	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
317	2017-11-28 13:48:40.62436-06	6188	Sequoia	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
318	2017-11-28 13:49:07.004465-06	6193	Suburban	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
319	2017-11-28 13:49:18.749364-06	6194	Tahoe	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
320	2017-11-28 13:49:36.549808-06	6210	Yukon	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
321	2017-11-28 13:58:45.834513-06	6683	Uplander	3		3	2
322	2017-11-28 13:58:54.501975-06	6202	Uplander	2	[{"changed": {"fields": ["name"]}}]	3	2
323	2017-11-28 13:59:02.908615-06	6202	Uplander	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
324	2017-11-28 14:30:48.53643-06	8661	HiAce	3		3	2
325	2017-11-28 14:47:29.174154-06	7881	C-Class	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
326	2017-11-28 15:09:42.485571-06	7886	CLS-Class	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
327	2017-11-28 15:10:57.955905-06	6131	Disvovery	3		3	2
328	2017-11-28 15:11:05.215142-06	7700	Discovery	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
329	2017-11-28 15:11:24.749455-06	7888	E-Class	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
330	2017-11-28 15:12:17.66624-06	7469	FX	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
331	2017-11-28 15:12:45.621559-06	7894	GLK-Class	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
332	2017-11-28 15:14:09.826042-06	6460	LaCrosse	3		3	2
333	2017-11-28 15:14:40.196638-06	7896	M-Class	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
334	2017-11-28 15:17:00.689018-06	7704	Range Rover	3		3	2
335	2017-11-28 15:17:00.736599-06	7703	Range Rover Sport	3		3	2
336	2017-11-28 15:18:54.070816-06	7900	S-Class	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
337	2017-11-28 15:22:31.770613-06	6427	X1	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
338	2017-11-28 15:22:43.723133-06	6428	X3	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
339	2017-11-28 15:22:57.929768-06	6430	X5	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
340	2017-11-28 15:23:10.722199-06	6431	X6	2	[{"changed": {"fields": ["tipouber"]}}]	3	2
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
20	home	0007_auto_20171031_1411	2017-11-01 17:22:57.064225-05
21	home	0008_auto_20171101_1649	2017-11-01 18:09:52.117363-05
22	home	0009_auto_20171101_1709	2017-11-01 18:09:52.167487-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
9tpnkobi3eguipjxbl20y9bvf2cigc0j	Y2YwNmMyMjg5NzM0MTg0MjQzMjZiMzE2OGQ2MTgzYzA0OTkwNzA2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYTdlODI1OGZjMWU0NTRiYjJmN2M4YTMyMTQxODE4NzY2YzhjMmE5In0=	2017-11-13 17:32:16.897027-06
urgfc8rm2nutygoepjzdsk1nbustrh50	Y2YwNmMyMjg5NzM0MTg0MjQzMjZiMzE2OGQ2MTgzYzA0OTkwNzA2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYTdlODI1OGZjMWU0NTRiYjJmN2M4YTMyMTQxODE4NzY2YzhjMmE5In0=	2017-11-15 13:59:11.436745-06
te9l8voqkvscn01nrwq1539y4f9w251q	ZDI4OGRlOTU2N2VmNmI1ZDExYzVmM2VlZGFlMzNiZmExNmYwMTI1Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NjZlNGNlNmI5NjMwYmI3NGE4MDE4NDU5MzA2OWEyMjlhMTJlYTQzIn0=	2017-12-12 13:16:12.591858-06
\.


--
-- Data for Name: home_marca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY home_marca (id, name) FROM stdin;
2	AgustaWestland
3	Airbus
4	Alfa Romeo
5	AM General
6	Aprilia
7	Ashok Leyland
9	Atul
8	Aston Martin
93	Infiniti
13	Baojun
11	BAIC
12	Bajaj
14	BAW
15	Bell
17	Beneteau
16	Benelli
18	Bentley
19	Besturn
21	BMW
20	Big Boy
23	Bugatti
22	Brilliance
123	Lexus
27	Campagna
25	BYD
38	Chrysler
28	Can-Am
29	Carlsson
30	Chana
31	Chang'an Ford
50	Dodge
32	Chang'an Suzuki
33	Chang'an
34	Changfeng
35	Changhe Suzuki
36	Chery
1	Acura
40	CMC
39	Citroen
41	Coda
42	Dacia
43	Daewoo
44	DAF
45	Daihatsu
47	DeLorean
46	Datsun
48	DENZA
100	Jeep
49	DFSK
54	Ducati
51	Dongfeng
52	DR
53	DS
55	Effa
56	Englon
58	FAW Mazda
57	Eurocopter
59	FAW
60	Ferrari
61	Fiat
62	Fisker
64	Force
63	Foday
66	Foton
10	Audi
67	GAC Toyota
70	GEM
68	GAC Trumpchi
69	Geely
71	GM
73	Gonow
74	Govecs
76	Guangqi Honda
75	Great Wall
78	Haima
77	Hafei
82	Hero Honda
79	Happy
80	Harley Davidson
81	Hawtai
85	Honda
83	Hero
84	Holden
86	Hongqi
87	Huanghai
88	Hummer
90	Hyundai
89	Hyosung
91	ICML
94	Innoson
92	IKCO
65	Ford
95	Isuzu
97	Iveco
96	Italika
99	Jaguar
98	JAC Motors
118	Land Rover
101	Jinbei
102	JMC
103	Jonway
104	Joylong
105	JRD
106	Kandi
109	Kawei
107	KAPL
108	Kawasaki
110	Kenbo
113	KTM
111	Kia
112	Koenigsegg
116	Lamborghini
114	Kymco
115	Lada
134	Mazda
117	Lancia
120	LCK
119	Landwind
121	LDV
122	Leclerc
37	Chevrolet
124	Lifan
125	Lincoln
126	Lotus
129	MAN
127	Luxgen
128	Mahindra
130	Maruti Suzuki
131	Maserati
132	Maxus
24	Buick
133	Maybach
135	MBK
137	Mercedes-Benz
136	McLaren
138	Mercury
142	Mitsubishi
139	MG
140	Minerva
141	Mini
143	Mitsuoka
145	MV Agusta
144	Moto Guzzi
72	GMC
147	Nissan
168	Rover
189	Subaru
228	Mercedez
203	Vauxhall
210	Volvo
159	Proton
181	Skoda
204	Venucia
182	Smart
169	Royal Enfield
183	Sonalika
190	Suzuki
225	Zotye
226	ZXAUTO
184	Soueast
205	Vespa
185	Speranza
186	Spyker
206	Viar
209	Volkswagen
191	SYM
197	Trabant
207	Victory
208	Viva
216	Yamaha
217	Yema Auto
218	ZAP Jonway
176	Seat
160	Qoros
161	Ram Trucks
211	Vortex
146	Naza
212	VPG
170	Saab
171	Saipa
163	Regal Raptor
213	Wajer
214	Weichai
215	Wuling
164	Renault Samsung
219	ZAZ
172	Saleen
220	ZD
187	Ssangyong
198	Triumph
199	TVR
192	Tata
148	Oldsmobile
193	Taxi
221	Zero Engineering
188	Stallion
154	Piaggio
194	Tesla
173	Saturn
155	Plymouth
156	Polaris
195	Tobe
158	Porsche
153	Peugeot
174	Scion
175	Scomadi
222	Zhonghua
223	ZNEN
149	Opel
150	Orient
151	Pagani
162	RAM
157	Pontiac
200	TVS
177	Self-Driving
152	Perodua
201	UAZ
166	Roewe
178	Shanghai Maple
179	Shineray
180	Shuanghuan Auto
224	Zongshen
167	Rolls-Royce
196	Toyota
202	Uber
26	Cadillac
227	VW
165	Renault
\.


--
-- Data for Name: home_modelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY home_modelo (id, name, tipouber, marca_id) FROM stdin;
6124	C	UB	228
6120	Alhambra	UXL	227
6371	Seta	UX	16
6143	Grand Cherokee	UB	100
6179	Range Over	UB	118
6122	ATS	UB	26
6156	M Class	UB	228
6123	Avanza	UXL	196
6197	Touareg	UB	227
6211	CL	UX	1
6125	Cayenne	UB	158
6212	CSX	UX	1
6126	CLS	UB	228
6213	EL	UX	1
6127	Commander	UXL	100
6214	ILX	UX	1
6128	Crafter	UXL	227
6215	Integra	UX	1
6129	CTS	UB	26
6360	BW007	UX	14
6130	CX9	UXL	134
6361	Lu Pa	UX	14
6362	Rui Ling	UX	14
6132	Durango	UXL	50
6363	Warrior	UX	14
6133	Eclass	UB	228
6364	407	UX	15
6365	BN600j	UX	16
6366	Cafe Racer	UX	16
6367	Caffenero	UX	16
6368	Macis	UX	16
6138	Express	UXL	37
6369	Patagonian Eagle	UX	16
6139	G	UB	93
6370	Python	UX	16
6140	G11	UB	93
6372	TNT	UX	16
6373	TRE 1130k	UX	16
6142	GLK	UB	228
6374	X-150	UX	16
6375	Zafferano	UX	16
6376	ZenZero	UX	16
6377	Antares	UX	17
6145	Hiace	UXL	196
6378	Arnage	UX	18
6146	Highlander	UXL	196
6379	Azure	UX	18
6147	Journey	UXL	50
6380	Bentayga	UX	18
6381	Brooklands	UX	18
6149	Lacrosse	UB	24
6382	Continental	UX	18
6383	Flying Spur	UX	18
6151	LR2	UB	118
6384	Mulsanne	UX	18
6385	S1	UX	18
6153	LR4	UB	118
6386	T2	UX	18
6387	B30	UX	19
6155	M	UB	93
6388	B50	UX	19
6389	B70	UX	19
6390	B90	UX	19
6157	Macan	UB	158
6391	X80	UX	19
6158	Manager	UXL	153
6392	F35	UX	20
6393	Powerflite	UX	20
6160	MKC	UB	125
6394	RCT	UX	20
6161	MKS	UB	125
6395	Revival	UX	20
6162	MKX	UB	125
6396	Swift	UX	20
6163	MKZ	UB	125
6397	Yeti	UX	20
6164	Montero	UXL	142
6398	1-series	UX	21
6399	2-series Active Tourer	UX	21
6166	Odyssey	UXL	85
6400	2-series Gran Tourer	UX	21
6167	Outlander	UXL	142
6401	2-series	UX	21
6168	Pacifica	UXL	38
6402	3-series Gran Turismo	UX	21
6169	Pathfinder	UXL	147
6170	Pilot	UXL	85
6171	Promaster	UXL	162
6172	Q5	UB	10
6112	300	UB	38
6113	A4	UB	10
6114	A5	UB	10
6115	A6	UB	10
6116	A7	UB	10
6117	A8	UB	10
6119	Alhambra	UXL	176
6173	Q50	UB	93
6175	Q70	UB	93
6403	3-series	UX	21
6180	Range Rover Spot	UB	118
6181	RDX	UB	1
6182	Regal	UB	24
6183	RLX	UB	1
6184	Routan	UXL	227
6185	S60	UB	210
6186	S80	UB	210
6187	Sclass	UB	228
6189	Sharan	UXL	227
6190	Sienna	UXL	196
6191	Sprinter	UXL	228
6192	SRX	UB	26
6195	Terrain	UXL	72
6196	TL	UB	1
6198	Town&Counter	UXL	38
6199	Trafic	UXL	165
6200	Transit	UXL	65
6201	Traverse	UXL	37
6203	Urban	UXL	147
6204	Viano	UXL	228
6205	Voyager	UXL	38
6206	XC60	UB	210
6404	4-series Gran Coupe	UX	21
6207	XC90	UB	210
6208	XF	UB	99
6209	XJ	UB	99
6219	NSX	UX	1
6220	RL	UX	1
6221	RSX	UX	1
6222	TLX	UX	1
6223	TSX	UX	1
6224	ZDX	UX	1
6225	AW109	UX	2
6226	H125	UX	3
6227	147	UX	4
6228	156	UX	4
6229	159	UX	4
6230	166	UX	4
6231	4C Spider	UX	4
6232	4C	UX	4
6233	939	UX	4
6234	Giulia	UX	4
6235	Giulietta	UX	4
6121	Armada	US	147
6134	Enclave	US	24
6135	Escale	UX	26
6136	Expedition	US	65
6144	GX	US	123
6148	JX	US	93
6150	Land Cruiser	US	196
6152	LR3	US	118
6165	Navigator	US	125
6154	LX	US	123
6159	MDX	US	1
6174	Q7	US	10
6176	QX60	US	93
6177	QX70	US	93
6178	QX80	US	93
6188	Sequoia	US	196
6193	Suburban	US	37
6194	Tahoe	US	37
6210	Yukon	US	72
6202	Uplander	US	37
6236	GT	UX	4
6237	GTV	UX	4
6238	Mito	UX	4
6239	Scirocco	UX	4
6240	MV-1	UX	5
6241	Caponord	UX	6
6242	Dorsoduro	UX	6
6243	Mana	UX	6
6244	RS4	UX	6
6245	RX	UX	6
6246	Shiver	UX	6
6247	SR	UX	6
6248	SX	UX	6
6249	Tuono V4	UX	6
6250	Stile	UX	7
6251	DB7	UX	8
6252	DB9	UX	8
6253	DBS	UX	8
6254	One-77	UX	8
6255	Rapide	UX	8
6256	Vanquish	UX	8
6257	Vantage	UX	8
6258	Virage	UX	8
6259	Gem	UX	9
6260	Gemini	UX	9
6261	Smart	UX	9
6262	A1	UX	10
6263	A2	UX	10
6264	A3 Cabriolet	UX	10
6265	A3 Sportback	UX	10
6266	A3	UX	10
6267	A4 Avant	UX	10
6268	A4 Cabriolet	UX	10
6269	A5 Avant	UX	10
6270	A5 Cabriolet	UX	10
6271	A6 Avant	UX	10
6272	A8 L	UX	10
6273	Allroad	UX	10
6274	e-tron	UX	10
6275	Q3	UX	10
6276	Q9	UX	10
6277	R8	UX	10
6278	RS 3	UX	10
6279	RS 4 Cabriolet	UX	10
6280	RS 4	UX	10
6281	RS 5	UX	10
6282	RS 6	UX	10
6283	RS 7	UX	10
6284	RS Q3	UX	10
6285	S1	UX	10
6286	S3	UX	10
6287	S4 Avant	UX	10
6288	S4 Cabriolet	UX	10
6289	S4	UX	10
6290	S5 Cabriolet	UX	10
6291	S5	UX	10
6292	S6	UX	10
6293	S7	UX	10
6294	S8	UX	10
6295	SQ5	UX	10
6296	TT Roadster	UX	10
6297	TT	UX	10
6298	TTS Roadster	UX	10
6299	TTS	UX	10
6300	A113	UX	11
6301	A115	UX	11
6302	B40	UX	11
6303	BJ40	UX	11
6304	D20	UX	11
6305	E150	UX	11
6306	ES210	UX	11
6307	EU220	UX	11
6308	EU260	UX	11
6309	EV160	UX	11
6310	EV200	UX	11
6311	Gladiator	UX	11
6312	Kenbo S3	UX	11
6313	M20	UX	11
6314	M30	UX	11
6315	Magic Speed S2	UX	11
6316	Magic Speed S3	UX	11
6317	Plus	UX	11
6318	Senova A1	UX	11
6319	Senova CC	UX	11
6320	Senova D20	UX	11
6321	Senova D50	UX	11
6322	Senova D60	UX	11
6323	Senova D70	UX	11
6324	Senova D80	UX	11
6325	Senova X25	UX	11
6326	Senova X65	UX	11
6327	Up Hatchback	UX	11
6328	Up	UX	11
6329	X25	UX	11
6330	Auto	UX	12
6331	Avenger Cruise 220	UX	12
6332	Avenger Street 150	UX	12
6333	Avenger Street 220	UX	12
6334	CT 100	UX	12
6335	Discover 100M	UX	12
6336	Discover 100T	UX	12
6337	Discover 125ST	UX	12
6338	Discover 135	UX	12
6339	Discover 150	UX	12
6340	Kawasaki Ninja 650R	UX	12
6341	Kristal	UX	12
6342	Platina 100	UX	12
6343	Pulsar 135	UX	12
6344	Pulsar 150	UX	12
6345	Pulsar 180	UX	12
6346	Pulsar 200AS	UX	12
6347	Pulsar 200NS	UX	12
6348	Pulsar 200RS	UX	12
6349	Pulsar 220	UX	12
6350	RE Compact	UX	12
6351	RE Maxima	UX	12
6352	RE Optima	UX	12
6353	XCD	UX	12
6354	560	UX	13
6355	610	UX	13
6356	630	UX	13
6357	730	UX	13
6358	Lechi	UX	13
6359	Beiqi 007	UX	14
6405	4-series	UX	21
6406	5-series Gran Turismo	UX	21
6407	5-series	UX	21
6408	6-series Gran Coupe	UX	21
6409	6-series	UX	21
6410	7-series	UX	21
6411	ActiveHybrid 5	UX	21
6412	Alpina B6	UX	21
6413	Alpina B7	UX	21
6414	C	UX	21
6415	F	UX	21
6416	G	UX	21
6417	i3	UX	21
6418	i8	UX	21
6419	K	UX	21
6420	M3	UX	21
6421	M4	UX	21
6422	M5	UX	21
6423	M6 Gran Coupe	UX	21
6424	M6	UX	21
6425	R	UX	21
6426	S	UX	21
6429	X4	UX	21
6432	Z4 Roadster	UX	21
6433	Z4	UX	21
6434	Z8	UX	21
6435	A3	UX	22
6436	BS2	UX	22
6437	BS4	UX	22
6438	BS6	UX	22
6439	Euphoria	UX	22
6440	FRV	UX	22
6441	FSV	UX	22
6442	Grandor	UX	22
6443	H220	UX	22
6444	H230	UX	22
6445	H330	UX	22
6446	H530	UX	22
6447	Huasong 7	UX	22
6428	X3	UB	21
6430	X5	UB	21
6431	X6	UB	21
6448	SY	UX	22
6449	V3	UX	22
6450	V5	UX	22
6451	Veyron	UX	23
6452	Allure	UX	24
6453	Cascada	UX	24
6454	Century	UX	24
6455	Encore	UX	24
6456	Envision	UX	24
6457	Excelle	UX	24
6458	GL8	UX	24
6459	Hideo	UX	24
6461	LeSabre	UX	24
6462	Lucerne	UX	24
6463	Park Avenue	UX	24
6464	Rainier	UX	24
6465	Rendezvous	UX	24
6466	Royaum	UX	24
6467	Terraza	UX	24
6468	Verano	UX	24
6469	e5	UX	25
6470	e6	UX	25
6471	F0	UX	25
6472	F3	UX	25
6473	F3R	UX	25
6474	F5 Suri	UX	25
6475	F6	UX	25
6476	F7	UX	25
6477	Flyer	UX	25
6478	G3	UX	25
6479	G3R	UX	25
6480	G5	UX	25
6481	G6	UX	25
6482	K9	UX	25
6483	L3	UX	25
6484	M6	UX	25
6485	Qin	UX	25
6486	S6	UX	25
6487	S7	UX	25
6488	S8	UX	25
6489	Sirui	UX	25
6490	Song	UX	25
6491	Speed Sharp	UX	25
6492	Tang	UX	25
6493	ATS-V	UX	26
6494	BLS	UX	26
6495	Catera	UX	26
6496	CT6	UX	26
6497	CTS-V	UX	26
6498	DeVille	UX	26
6499	DTS	UX	26
6500	Eldorado	UX	26
6501	ELR	UX	26
6502	Escalade EXT	UX	26
6504	Fleetwood	UX	26
6505	Miller-Meteor	UX	26
6506	Seville	UX	26
6507	Stretch Limo	UX	26
6508	STS	UX	26
6509	XLR	UX	26
6510	XT5	UX	26
6511	XTS	UX	26
6512	T-Rex	UX	27
6513	Spyder	UX	28
6514	C25	UX	29
6515	Benni	UX	30
6516	CX20	UX	30
6517	Mini Benni	UX	30
6518	Mondeo	UX	31
6519	Alivio	UX	32
6520	S-Cross	UX	32
6521	Alsvin	UX	33
6522	BenBen	UX	33
6523	CS35	UX	33
6524	CS75	UX	33
6525	CV1	UX	33
6526	CV6	UX	33
6527	CX20	UX	33
6528	CX30	UX	33
6529	Eado	UX	33
6530	Eulove	UX	33
6531	Honor	UX	33
6532	Jiexun	UX	33
6533	Raeton	UX	33
6534	Supervan	UX	33
6535	Yidong	UX	33
6536	Yuexiang	UX	33
6537	Zhishang	UX	33
6538	Zhixiang	UX	33
6539	Feiteng C5	UX	34
6540	Feiteng	UX	34
6541	Heijinggang	UX	34
6542	Leopard 6481	UX	34
6543	Leopard CS10	UX	34
6544	Leopard CS6	UX	34
6545	Leopard CS7	UX	34
6546	Leopard Q6	UX	34
6547	Big Dipper	UX	35
6548	Tico	UX	35
6549	A1	UX	36
6550	A13	UX	36
6551	A15	UX	36
6552	A3	UX	36
6553	A5	UX	36
6554	A6	UX	36
6555	Apola	UX	36
6556	Arrizo 3	UX	36
6557	Arrizo 5	UX	36
6558	Arrizo 7	UX	36
6559	Arrizo M7	UX	36
6560	Beat	UX	36
6561	Bonus	UX	36
6562	Celer	UX	36
6563	Cielo	UX	36
6564	Cowin	UX	36
6565	Destiny	UX	36
6566	E3	UX	36
6567	E5	UX	36
6568	Eastar	UX	36
6569	Elara	UX	36
6570	Envy	UX	36
6571	eQ	UX	36
6572	Face	UX	36
6573	Fulwin	UX	36
6574	Grand Tiggo	UX	36
6575	IndiS	UX	36
6576	IQ	UX	36
6577	J1	UX	36
6578	J11	UX	36
6579	J3	UX	36
6580	Kimo	UX	36
6581	New QQ	UX	36
6582	Nice	UX	36
6583	Q22	UX	36
6584	QQ3	UX	36
6585	QQ6	UX	36
6586	Rely X5	UX	36
6587	Riich G3	UX	36
6588	Riich G5	UX	36
6589	Riich G6	UX	36
6590	Riich M1	UX	36
6591	Riich X1	UX	36
6592	S18	UX	36
6593	S21	UX	36
6594	S22L	UX	36
6595	Skin	UX	36
6596	T11	UX	36
6597	Tiggo 3	UX	36
6598	Tiggo 5	UX	36
6599	Tiggo	UX	36
6600	V5	UX	36
6601	VanPass	UX	36
6602	X-Cross	UX	36
6603	Xcross	UX	36
6604	Yoyo	UX	36
6605	Agile	UX	37
6606	Astra	UX	37
6607	Astro	UX	37
6608	Avalanche	UX	37
6609	Aveo	UX	37
6610	Aveo5	UX	37
6611	Beat	UX	37
6612	Blazer	UX	37
6613	Camaro	UX	37
6614	Caprice	UX	37
6615	Captiva	UX	37
6616	Cavalier	UX	37
6617	Celta	UX	37
6618	Chevy	UX	37
6619	City Express	UX	37
6620	Classic	UX	37
6621	Cobalt	UX	37
6622	Colorado	UX	37
6623	Corsa	UX	37
6624	Corvette	UX	37
6625	Cruze Sport6	UX	37
6626	Cruze	UX	37
6627	Dmax	UX	37
6628	Enjoy	UX	37
6629	Epica	UX	37
6630	Equinox	UX	37
6631	Evanda	UX	37
6632	Express 1500	UX	37
6633	Express 2500	UX	37
6634	Express 3500	UX	37
6635	Grand Vitara	UX	37
6636	HHR	UX	37
6637	Impala	UX	37
6638	Kalos	UX	37
6639	Lacetti	UX	37
6640	Lanos	UX	37
6641	Lova	UX	37
6642	LTZ	UX	37
6643	Lumina	UX	37
6644	Malibu	UX	37
6645	Matiz	UX	37
6646	Meriva	UX	37
6647	Metro	UX	37
6648	Monte Carlo	UX	37
6649	Monza	UX	37
6650	N200	UX	37
6651	N300	UX	37
6652	Nabira	UX	37
6653	Niva	UX	37
6654	Nubira	UX	37
6655	Omega	UX	37
6656	Onix	UX	37
6657	Optra	UX	37
6658	Orlando	UX	37
6659	Prisma	UX	37
6660	Prizm	UX	37
6661	Rezzo	UX	37
6662	S-10	UX	37
6663	Sail U-VA	UX	37
6664	Sail	UX	37
6665	Silverado 1500	UX	37
6666	Silverado 2500	UX	37
6667	Silverado 3500	UX	37
6668	Sonic	UX	37
6669	Spark GT	UX	37
6670	Spark Life	UX	37
6671	Spark	UX	37
6672	Spin	UX	37
6673	SS	UX	37
6674	SSR	UX	37
6675	Tacuma	UX	37
6676	Tavera	UX	37
6677	Tornado	UX	37
6678	Tracker	UX	37
6679	Trailblazer EXT	UX	37
6680	Trailblazer	UX	37
6681	Trans Sport	UX	37
6682	Trax	UX	37
6684	Vectra	UX	37
6685	Venture	UX	37
6686	Vivant	UX	37
6687	Volt	UX	37
6688	Zafira	UX	37
6689	200	UX	38
6690	Aspen	UX	38
6691	Brilliant	UX	38
6692	Cirrus	UX	38
6693	Concorde	UX	38
6694	Crossfire	UX	38
6695	Delta	UX	38
6696	Grand Voyager	UX	38
6697	Intrepid	UX	38
6698	LHS	UX	38
6699	Neon	UX	38
6700	PT Cruiser	UX	38
6701	Sebring	UX	38
6702	Stretch Limo	UX	38
6703	Sundance	UX	38
6704	Town and Country	UX	38
6705	Viper	UX	38
6706	Ypsilon	UX	38
6707	Berlingo	UX	39
6708	C-Crosser	UX	39
6709	C-Elysee	UX	39
6710	C-Quatre	UX	39
6711	C-Triomphe	UX	39
6712	C-Zero	UX	39
6713	C1	UX	39
6714	C2	UX	39
6715	C3 Aircross	UX	39
6716	C3 Picasso	UX	39
6717	C3	UX	39
6718	C3-XR	UX	39
6719	C4 Aircross	UX	39
6720	C4 Cactus	UX	39
6721	C4 Lounge	UX	39
6722	C4 Pallas	UX	39
6723	C4 Picasso	UX	39
6724	C4	UX	39
6725	C4L	UX	39
6726	C5	UX	39
6727	C6	UX	39
6728	C8	UX	39
6729	Dispatch Combi	UX	39
6730	DS3	UX	39
6731	DS4	UX	39
6732	DS5	UX	39
6733	DS5LS	UX	39
6734	DS6	UX	39
6735	E-Mehari	UX	39
6736	Elysee	UX	39
6737	Grand Picasso	UX	39
6738	H Van	UX	39
6739	Jumper	UX	39
6740	Jumpy	UX	39
6741	Nemo	UX	39
6742	Saxo	UX	39
6743	Traction	UX	39
6744	Xantia	UX	39
6745	Xsara Picasso	UX	39
6746	Xsara	UX	39
6747	Z7	UX	40
6748	All-Electric	UX	41
6749	Dokker	UX	42
6750	Duster	UX	42
6751	Lodgy	UX	42
6752	Logan	UX	42
6753	Sandero	UX	42
6754	Cielo	UX	43
6755	Espero	UX	43
6756	Gentra	UX	43
6757	Kalos	UX	43
6758	Lacetti	UX	43
6759	Lanos	UX	43
6760	Leganza	UX	43
6761	Matiz	UX	43
6762	Nexia	UX	43
6763	Nubira	UX	43
6764	Tacuma	UX	43
6765	Tosca	UX	43
6766	Winstorm	UX	43
6767	55	UX	44
6768	Atrai	UX	45
6769	Ayla	UX	45
6770	Cuore	UX	45
6771	Esse	UX	45
6772	Fellow Max	UX	45
6773	Gran Max	UX	45
6774	Hijet	UX	45
6775	Luxio	UX	45
6776	Materia	UX	45
6777	Mira	UX	45
6778	Move	UX	45
6779	Sigra	UX	45
6780	Sirion	UX	45
6781	Sonica	UX	45
6782	Tanto	UX	45
6783	Taruna	UX	45
6784	Terios	UX	45
6785	Trevis	UX	45
6786	Wake	UX	45
6787	Xenia	UX	45
6788	YRV	UX	45
6789	Go+	UX	46
6790	Go	UX	46
6791	On-Do	UX	46
6792	redi-GO	UX	46
6793	DMC-12	UX	47
6794	DENZA	UX	48
6795	C37	UX	49
6796	Cargo Van	UX	49
6797	Glory	UX	49
6798	V27	UX	49
6799	Attitude	UX	50
6800	Avenger	UX	50
6801	Caliber	UX	50
6802	Caravan	UX	50
6803	Challenger	UX	50
6804	Charger	UX	50
6805	Dakota	UX	50
6806	Dart	UX	50
6807	Grand Caravan	UX	50
6808	i10	UX	50
6809	Intrepid	UX	50
6810	JCUV	UX	50
6811	Magnum	UX	50
6812	Neon	UX	50
6813	Nitro	UX	50
6814	Ram 1500	UX	50
6815	Ram 2500	UX	50
6816	Ram 3500	UX	50
6817	Ram 4500	UX	50
6818	Ram Van	UX	50
6819	Sprinter	UX	50
6820	Stratus	UX	50
6821	Stretch Limo	UX	50
6822	Viper	UX	50
6823	Vision	UX	50
6824	A30	UX	51
6825	A60	UX	51
6826	Aeolus	UX	51
6827	AX7	UX	51
6828	D50	UX	51
6829	DF-9	UX	51
6830	E30	UX	51
6831	Fengdu MX6	UX	51
6832	H30	UX	51
6833	Joyear	UX	51
6834	King Plaza	UX	51
6835	L60	UX	51
6836	Lingzhi	UX	51
6837	LZGO	UX	51
6838	Oting	UX	51
6839	Rich	UX	51
6840	S30	UX	51
6841	Succe	UX	51
6842	X30	UX	51
6843	Yumsun	UX	51
6844	DR1	UX	52
6845	DR5	UX	52
6846	3	UX	53
6847	4	UX	53
6848	4S	UX	53
6849	5	UX	53
6850	5LS	UX	53
6851	6	UX	53
6852	1199 Panigale S Tricolore	UX	54
6853	1299 Panigale	UX	54
6854	848 EVO Corse	UX	54
6855	848 EVO	UX	54
6856	959 Panigale	UX	54
6857	Diavel	UX	54
6858	GT 1000	UX	54
6859	Hypermotard 939	UX	54
6860	Hyperstrada 939	UX	54
6861	Monster 1200	UX	54
6862	Monster 821	UX	54
6863	Multistrada 1200	UX	54
6864	Panigale R	UX	54
6865	PaulSmart 1000 LE	UX	54
6866	Streetfighter 848	UX	54
6867	Ideal	UX	55
6868	Landscape	UX	55
6869	M100	UX	55
6870	S715	UX	56
6871	EC120 Colibri	UX	57
6872	EC130	UX	57
6873	Ruiyi	UX	58
6874	Besturn B50	UX	59
6875	Besturn B70	UX	59
6876	Besturn X80	UX	59
6877	Junpai D60	UX	59
6878	N5	UX	59
6879	Oley	UX	59
6880	Senya M80	UX	59
6881	Senya S80	UX	59
6882	V2	UX	59
6883	V5	UX	59
6884	V70	UX	59
6885	Vita	UX	59
6886	X-PV	UX	59
6887	360	UX	60
6888	458	UX	60
6889	575 M	UX	60
6890	599 GTB Fiorano	UX	60
6891	612 Scaglietti	UX	60
6892	California	UX	60
6893	F12berlinetta	UX	60
6894	F430	UX	60
6895	FF	UX	60
6896	124 Spider	UX	61
6897	500	UX	61
6898	500C	UX	61
6899	500E	UX	61
6900	500L	UX	61
6901	500X	UX	61
6902	Albea	UX	61
6903	Avventura	UX	61
6904	Bravo	UX	61
6905	Croma	UX	61
6906	Doblo	UX	61
6907	Ducato	UX	61
6908	Fiorino	UX	61
6909	Freemont	UX	61
6910	Grand Siena	UX	61
6911	Grande Punto	UX	61
6912	Idea	UX	61
6913	Linea	UX	61
6914	Marea	UX	61
6915	Mobi	UX	61
6916	Multipla	UX	61
6917	New Uno	UX	61
6918	Ottimo	UX	61
6919	Palio Weekend	UX	61
6920	Palio	UX	61
6921	Panda	UX	61
6922	Perla	UX	61
6923	Punto	UX	61
6924	Qubo	UX	61
6925	Ritmo	UX	61
6926	Scudo	UX	61
6927	Sedici	UX	61
6928	Siena	UX	61
6929	Stilo	UX	61
6930	Strada	UX	61
6931	Tipo	UX	61
6932	Ulysse	UX	61
6933	Uno	UX	61
6934	Viaggio	UX	61
6935	Karma	UX	62
6936	Explorer III	UX	63
6937	Landfort	UX	63
6938	One	UX	64
6939	Activa	UX	65
6940	Aspire	UX	65
6941	B-Max	UX	65
6942	C-Max Hybrid	UX	65
6943	C-Max	UX	65
6944	Classic	UX	65
6945	Contour	UX	65
6946	Courier	UX	65
6947	Crown Victoria	UX	65
6948	E-150	UX	65
6949	E-250	UX	65
6950	E-350	UX	65
6951	E-450	UX	65
6952	E-Series	UX	65
6953	EcoSport	UX	65
6954	Edge	UX	65
6955	Endeavour	UX	65
6956	Escape	UX	65
6957	Escort	UX	65
6958	Everest	UX	65
6959	Excursion	UX	65
6960	Explorer Sport Trac	UX	65
6961	F-150	UX	65
6962	F-250	UX	65
6963	F-350	UX	65
6964	F-450	UX	65
6965	F-650	UX	65
6966	F6 Typhoon	UX	65
6967	Fairlane	UX	65
6968	Fairmont	UX	65
6969	Falcon	UX	65
6970	Fiesta	UX	65
6971	Figo Aspire	UX	65
6972	Figo	UX	65
6973	Five Hundred	UX	65
6974	Flex	UX	65
6975	Focus	UX	65
6976	Freestar	UX	65
6977	Freestyle	UX	65
6978	Fusion	UX	65
6979	Galaxy	UX	65
6980	Grand C-Max	UX	65
6981	GT	UX	65
6982	i-MAX	UX	65
6983	Ikon	UX	65
6984	Ka+	UX	65
6985	Ka	UX	65
6986	Kuga	UX	65
6987	Laser	UX	65
6988	Lobo	UX	65
6989	LTD	UX	65
6990	MAV	UX	65
6991	Maverick	UX	65
6992	Minibus	UX	65
6993	Mondeo	UX	65
6994	Mustang	UX	65
6995	Ranger	UX	65
6996	S-Max	UX	65
6997	Shelby	UX	65
6998	Stretch Limo	UX	65
6999	Taurus X	UX	65
7000	Taurus	UX	65
7001	Territory	UX	65
7002	Think	UX	65
7003	Thunderbird	UX	65
7004	Tierra	UX	65
7005	Tourneo	UX	65
7006	Transit Connect	UX	65
7007	Transit Custom	UX	65
7008	Transit Van	UX	65
7009	Transit Wagon	UX	65
7010	Vignale	UX	65
7011	Windstar	UX	65
7012	ZhiSheng	UX	65
7013	Gratour	UX	66
7014	Midi	UX	66
7015	Ollin	UX	66
7016	Sauvana	UX	66
7017	Toplander	UX	66
7018	Tunland	UX	66
7019	View Traveller	UX	66
7020	Levin	UX	67
7021	GA3	UX	68
7022	GA4	UX	68
7023	GA5	UX	68
7024	GA6	UX	68
7025	GA8	UX	68
7026	GS4	UX	68
7027	GS5	UX	68
7028	Weizhi	UX	68
7029	515	UX	69
7030	Borui	UX	69
7031	CK	UX	69
7032	Dorsett	UX	69
7033	EC8	UX	69
7034	Emgrand 7	UX	69
7035	Emgrand 8	UX	69
7036	Emgrand EC7	UX	69
7037	Emgrand EC8	UX	69
7038	Emgrand X7	UX	69
7039	GC2	UX	69
7040	GC5	UX	69
7041	GC7	UX	69
7042	GC9	UX	69
7043	Gleagle	UX	69
7044	GX2	UX	69
7045	GX7	UX	69
7046	GX9	UX	69
7047	Haijing	UX	69
7048	Haoqing	UX	69
7049	Jingang	UX	69
7050	K17	UX	69
7051	LC Cross	UX	69
7052	LC	UX	69
7053	Meiri	UX	69
7054	MK Cross	UX	69
7055	MK	UX	69
7056	Panda	UX	69
7057	SC3	UX	69
7058	SC5	UX	69
7059	SC7	UX	69
7060	SL	UX	69
7061	SX7	UX	69
7062	TX4	UX	69
7063	Yuanjin	UX	69
7064	Ziyoujian	UX	69
7065	eL	UX	70
7066	Alpheon	UX	71
7067	EV1	UX	71
7068	Acadia Denali	UX	72
7069	Canyon	UX	72
7070	Envoy Denali	UX	72
7071	Envoy	UX	72
7072	Jimmy	UX	72
7073	MV1	UX	72
7074	Safari	UX	72
7075	Savana 1500	UX	72
7076	Savana 2500	UX	72
7077	Savana 3500	UX	72
7078	Sierra 1500	UX	72
7079	Sierra 2500	UX	72
7080	Sierra 3500	UX	72
7081	Sonoma	UX	72
7082	Yukon Denali	UX	72
7083	Yukon XL	UX	72
7084	Aoosed	UX	73
7085	GS50	UX	73
7086	GX6	UX	73
7087	Shuaijian	UX	73
7088	Way CL	UX	73
7089	Xingwang	UX	73
7090	Xinlang	UX	73
7091	T Series	UX	74
7092	C20R	UX	75
7093	C30	UX	75
7094	C50	UX	75
7095	Coolbear	UX	75
7096	Cowry	UX	75
7097	Deer	UX	75
7098	Florid	UX	75
7099	Haval H1	UX	75
7100	Haval H2	UX	75
7101	Haval H3	UX	75
7102	Haval H5	UX	75
7103	Haval H6	UX	75
7104	Haval H7	UX	75
7105	Haval H8	UX	75
7106	Haval H9	UX	75
7107	Haval M2	UX	75
7108	Haval M4	UX	75
7109	Hover 5	UX	75
7110	Hover	UX	75
7111	Ling Ao	UX	75
7112	M2	UX	75
7113	M4	UX	75
7114	Pegasus	UX	75
7115	Peri	UX	75
7116	Safe	UX	75
7117	SaiFu	UX	75
7118	SingRUV	UX	75
7119	V200	UX	75
7120	V240	UX	75
7121	V80	UX	75
7122	Voleex	UX	75
7123	Wingle	UX	75
7124	X200	UX	75
7125	X240	UX	75
7126	Li Nian S1	UX	76
7127	Junyi Plus	UX	77
7128	Minyi	UX	77
7129	Saibao	UX	77
7130	Saima	UX	77
7131	1	UX	78
7132	2	UX	78
7133	3 Hatchback	UX	78
7134	3 Sedan	UX	78
7135	7	UX	78
7136	Cavalier	UX	78
7137	Cupid	UX	78
7138	Family M5	UX	78
7139	Family	UX	78
7140	FamilyVS	UX	78
7141	Freema	UX	78
7142	Happin	UX	78
7143	M3	UX	78
7144	M5	UX	78
7145	M6	UX	78
7146	M8	UX	78
7147	Pulima	UX	78
7148	Qiubite	UX	78
7149	S3	UX	78
7150	S5	UX	78
7151	S7	UX	78
7152	CS 200	UX	79
7153	Faster R	UX	79
7154	Faster X	UX	79
7155	Jet ZR	UX	79
7156	Jet ZX	UX	79
7157	MX 200	UX	79
7158	Nexium	UX	79
7159	Perkasa 200	UX	79
7160	Sporty RR	UX	79
7161	Swing R	UX	79
7162	1200 Custom	UX	80
7163	CVO	UX	80
7164	Dyna	UX	80
7165	Electra Glide	UX	80
7166	Fat Boy	UX	80
7167	Iron 883	UX	80
7168	Road Glide	UX	80
7169	Road King	UX	80
7170	Softail	UX	80
7171	Sportster Iron 883	UX	80
7172	Sportster	UX	80
7173	Street 750	UX	80
7174	Touring	UX	80
7175	Trike	UX	80
7176	Ultra Limited	UX	80
7177	V-Rod	UX	80
7178	B11	UX	81
7179	Boliger	UX	81
7180	E70	UX	81
7181	New Santa Fe	UX	81
7182	Santa Fe	UX	81
7183	Terracan	UX	81
7184	CD Deluxe	UX	82
7185	Achiever	UX	83
7186	Duet	UX	83
7187	Glamour	UX	83
7188	HF Dawn	UX	83
7189	HF Deluxe	UX	83
7190	Hunk	UX	83
7191	Ignitor	UX	83
7192	Impulse	UX	83
7193	Karizma R	UX	83
7194	Karizma ZMR	UX	83
7195	Maestro Edge	UX	83
7196	Maestro	UX	83
7197	Passion Plus	UX	83
7198	Passion Pro	UX	83
7199	Passion Xpro	UX	83
7200	Pleasure	UX	83
7201	Splendor Ismart	UX	83
7202	Splendor NXG	UX	83
7203	Splendor Pro Classic	UX	83
7204	Splendor Pro	UX	83
7205	Splendor+	UX	83
7206	Super Splendor	UX	83
7207	Xtreme Sports	UX	83
7208	Xtreme	UX	83
7209	Adventra	UX	84
7210	Astra	UX	84
7211	Barina Spark	UX	84
7212	Barina	UX	84
7213	Berlina	UX	84
7214	Calais	UX	84
7215	Caprice	UX	84
7216	Captiva	UX	84
7217	Clubsport	UX	84
7218	Colorado 7	UX	84
7219	Colorado	UX	84
7220	Commodore	UX	84
7221	Cruze	UX	84
7222	Epica	UX	84
7223	Grange	UX	84
7224	GTS	UX	84
7225	Malibu	UX	84
7226	Rodeo	UX	84
7227	Statesman	UX	84
7228	Stretch Limo	UX	84
7229	SV6	UX	84
7230	Trax	UX	84
7231	Vectra	UX	84
7232	Viva	UX	84
7233	Volt	UX	84
7234	Zafira	UX	84
7235	Accord Crosstour	UX	85
7236	Accord	UX	85
7237	Activa 125	UX	85
7238	Activa	UX	85
7239	Air Blade	UX	85
7240	Airwave	UX	85
7241	Amaze	UX	85
7242	Avancier	UX	85
7243	Aviator	UX	85
7244	Ballade	UX	85
7245	BeAT POP	UX	85
7246	BeAT	UX	85
7247	Blade	UX	85
7248	BR-V	UX	85
7249	Brio	UX	85
7250	C70	UX	85
7251	C80	UX	85
7252	Capa	UX	85
7253	CB 500F	UX	85
7254	CB 500X	UX	85
7255	CB 650F	UX	85
7256	CB Hornet 160R	UX	85
7257	CB Shine	UX	85
7258	CB Trigger	UX	85
7259	CB Twister	UX	85
7260	CB Unicorn 160	UX	85
7261	CB Unicorn Dazzler	UX	85
7262	CB Unicorn	UX	85
7263	CB	UX	85
7264	CBR 1000RR	UX	85
7265	CBR 150R	UX	85
7266	CBR 250R	UX	85
7267	CBR 500R	UX	85
7268	CBR 650F	UX	85
7269	CBR	UX	85
7270	CD 100 Dream	UX	85
7271	Ciimo	UX	85
7272	City	UX	85
7273	Civic	UX	85
7274	Click i	UX	85
7275	CR-V	UX	85
7276	CR-Z	UX	85
7277	CRF	UX	85
7278	Crider	UX	85
7279	Crossroad	UX	85
7280	Crosstour	UX	85
7281	CS1	UX	85
7282	CTX	UX	85
7283	CZ-i 110	UX	85
7284	Dio 110	UX	85
7285	Domani	UX	85
7286	Dream	UX	85
7287	e-Storm	UX	85
7288	Edix	UX	85
7289	Element	UX	85
7290	Elysion	UX	85
7291	FCX Clarity	UX	85
7292	Fit	UX	85
7293	Forza 300	UX	85
7294	FR-V	UX	85
7295	Freed	UX	85
7296	Future	UX	85
7297	Geshitu	UX	85
7298	GL Max	UX	85
7299	GL Pro	UX	85
7300	GL	UX	85
7301	Gold Wing Valkyrie	UX	85
7302	Gold Wing	UX	85
7303	Goldwin	UX	85
7304	Grace	UX	85
7305	Greiz	UX	85
7306	HR-V	UX	85
7307	Idea	UX	85
7308	Insight	UX	85
7309	Inspire	UX	85
7310	Integra	UX	85
7311	Jade	UX	85
7312	Jazz	UX	85
7313	Karisma	UX	85
7314	Kirana	UX	85
7315	LEAD	UX	85
7316	Legend	UX	85
7317	Life	UX	85
7318	Livo	UX	85
7319	MDX	UX	85
7320	MegaPro	UX	85
7321	Mobilio	UX	85
7322	Moove	UX	85
7323	MSX125	UX	85
7324	N-Box	UX	85
7325	N-One	UX	85
7326	N-WGN	UX	85
7327	NC	UX	85
7328	Nighthawk	UX	85
7329	NM4 Vultus	UX	85
7330	NM4	UX	85
7331	Nova Sonic RS	UX	85
7332	NSR	UX	85
7333	Orthia	UX	85
7334	Pantheon	UX	85
7335	Partner	UX	85
7336	Passport	UX	85
7337	PCX	UX	85
7338	Philosophy S1	UX	85
7339	Prelude	UX	85
7340	Revo	UX	85
7341	Ridgeline	UX	85
7342	S2000	UX	85
7343	S90	UX	85
7344	Saber	UX	85
7345	Scoopy i	UX	85
7346	SH125	UX	85
7347	SH150i	UX	85
7348	Shadow RS	UX	85
7349	SHmode	UX	85
7350	Shuttle	UX	85
7351	Sonic	UX	85
7352	Spacy i	UX	85
7353	Spike	UX	85
7354	Spirior	UX	85
7355	Stepwgn	UX	85
7356	Stream	UX	85
7357	Stunner CBF	UX	85
7358	Super Cub	UX	85
7359	Super Dream	UX	85
7360	Supra X	UX	85
7361	That's	UX	85
7362	Tiger	UX	85
7363	Torneo	UX	85
7364	Vamos	UX	85
7365	Vario	UX	85
7366	Verza	UX	85
7367	Vezel	UX	85
7368	VFR	UX	85
7369	VISION	UX	85
7370	Wave Alpha	UX	85
7371	Wave RSX	UX	85
7372	Wave	UX	85
7373	Win	UX	85
7374	Winner 150	UX	85
7375	XR-V	UX	85
7376	Zest	UX	85
7377	Zoomer X	UX	85
7378	H7	UX	86
7379	HQ3	UX	86
7380	Shengshi	UX	86
7381	Aolong	UX	87
7382	Pronto	UX	87
7383	Qisheng	UX	87
7384	H1	UX	88
7385	H2 SUT	UX	88
7386	H2	UX	88
7387	H3	UX	88
7388	H3T	UX	88
7389	MV-1	UX	88
7390	Stretch Limo	UX	88
7391	GT250R	UX	89
7392	GV250 Aquila	UX	89
7393	Accent	UX	90
7394	Atos	UX	90
7395	Avante	UX	90
7396	Azera	UX	90
7397	Cantus	UX	90
7398	Centennial	UX	90
7399	Coupe	UX	90
7400	Creta	UX	90
7401	Elantra GT	UX	90
7402	Elantra	UX	90
7403	Entourage	UX	90
7404	Eon	UX	90
7405	EQ900	UX	90
7406	Equus	UX	90
7407	Excel	UX	90
7408	Genesis	UX	90
7409	Getz	UX	90
7410	Grand Avega	UX	90
7411	Grand i10	UX	90
7412	Grand Santa Fe	UX	90
7413	Grand Starex	UX	90
7414	Grandeur	UX	90
7415	H-1	UX	90
7416	H100	UX	90
7417	HB20	UX	90
7418	HB20S	UX	90
7419	HD78	UX	90
7420	i10	UX	90
7421	i20	UX	90
7422	i25	UX	90
7423	i30	UX	90
7424	i35	UX	90
7425	i40 Sport Wagon	UX	90
7426	i40	UX	90
7427	i45	UX	90
7428	i800	UX	90
7429	iLoad	UX	90
7430	iMax	UX	90
7431	Ioniq	UX	90
7432	ix20	UX	90
7433	ix25	UX	90
7434	ix35	UX	90
7435	ix55	UX	90
7436	Langdong	UX	90
7437	Matrix	UX	90
7438	Maxcruz	UX	90
7439	Mistra	UX	90
7440	Moinca	UX	90
7441	Montana	UX	90
7442	Rohens	UX	90
7443	Santa Fe Sport	UX	90
7444	Santa Fe	UX	90
7445	Santro Xing	UX	90
7446	Santro	UX	90
7447	Solaris	UX	90
7448	Sonata	UX	90
7449	Sonica	UX	90
7450	Starex	UX	90
7451	Terracan	UX	90
7452	Tiburon	UX	90
7453	Trajet	UX	90
7454	Tucson	UX	90
7455	Veloster	UX	90
7456	Veracruz	UX	90
7457	Verna	UX	90
7458	Xcent	UX	90
7459	XG250	UX	90
7460	XG300	UX	90
7461	XG350	UX	90
7462	Extreme	UX	91
7463	Runna	UX	92
7464	Samand LX	UX	92
7465	Samand SE	UX	92
7466	Soren	UX	92
7467	ESQ	UX	93
7468	EX	UX	93
7470	G Coupe	UX	93
7471	G Sedan	UX	93
7472	I	UX	93
7473	Q40	UX	93
7474	Q45	UX	93
7475	Q50L	UX	93
7476	Q60	UX	93
7477	QX4	UX	93
7478	QX50	UX	93
7479	QX56	UX	93
7480	IVM-UMU	UX	94
7481	Adventure	UX	95
7482	Alterra	UX	95
7483	Amigo	UX	95
7484	Ascender	UX	95
7485	Axiom	UX	95
7486	Crosswind	UX	95
7487	D-Max	UX	95
7488	Elf	UX	95
7489	Hombre	UX	95
7490	i280	UX	95
7491	i350	UX	95
7492	i370	UX	95
7493	Mu-7	UX	95
7494	MU-X	UX	95
7495	N-Series	UX	95
7496	Panther	UX	95
7497	Rodeo	UX	95
7498	Trooper	UX	95
7499	VehiCross	UX	95
7500	125Z	UX	96
7501	150SZ	UX	96
7502	D125	UX	96
7503	DM150	UX	96
7504	WS150	UX	96
7505	XT110RT	UX	96
7506	Daily	UX	97
7507	A-Class	UX	98
7508	A0	UX	98
7509	B-Cross	UX	98
7510	Binyue	UX	98
7511	Heyue	UX	98
7512	HFC	UX	98
7513	iEV4	UX	98
7514	iEV5	UX	98
7515	iEV6S	UX	98
7516	J2	UX	98
7517	J3 Turin	UX	98
7518	J3	UX	98
7519	J4	UX	98
7520	J5	UX	98
7521	J6	UX	98
7522	Refine M3	UX	98
7523	Refine	UX	98
7524	Rein	UX	98
7525	Ruiying	UX	98
7526	S2	UX	98
7527	S3	UX	98
7528	S5	UX	98
7529	Spazio	UX	98
7530	Sunray	UX	98
7531	T5	UX	98
7532	T6	UX	98
7533	T8	UX	98
7534	Tagaz C190	UX	98
7535	Tongyue	UX	98
7536	Veloce	UX	98
7537	XuebaoX50	UX	98
7538	XuebaoX80	UX	98
7539	E-Type	UX	99
7540	F-PACE	UX	99
7541	F-Type	UX	99
7542	Mark 2	UX	99
7543	S-Type	UX	99
7544	X-Type	UX	99
7545	XE	UX	99
7546	XJR	UX	99
7547	XK	UX	99
7548	2500	UX	100
7549	Cherokee	UX	100
7550	Compass	UX	100
7551	Liberty	UX	100
7552	Patriot	UX	100
7553	Renegade	UX	100
7554	Wrangler	UX	100
7555	Grace	UX	101
7556	H2	UX	101
7557	S50	UX	101
7558	Baodian	UX	102
7559	Baowei	UX	102
7560	N350	UX	102
7561	Yuhu	UX	102
7562	Yusheng	UX	102
7563	Falcon	UX	103
7564	A6	UX	104
7565	Travel	UX	105
7566	K11	UX	106
7567	Kranti	UX	107
7568	REO	UX	107
7569	Athlete	UX	108
7570	Blitz R	UX	108
7571	D-Tracker	UX	108
7572	Edge	UX	108
7573	ER-6n	UX	108
7574	Estrella	UX	108
7575	Kaze	UX	108
7576	KLX	UX	108
7577	KSR	UX	108
7578	KX	UX	108
7579	Merzy	UX	108
7580	Ninja 250	UX	108
7581	Ninja 300	UX	108
7582	Ninja 650	UX	108
7583	Ninja R	UX	108
7584	Ninja RR	UX	108
7585	Ninja SS	UX	108
7586	Ninja ZX	UX	108
7587	Ninja ZX-10R	UX	108
7588	Ninja ZX-14R	UX	108
7589	Ninja ZX-6R	UX	108
7590	Pulsar	UX	108
7591	Versys 1000	UX	108
7592	Versys 650	UX	108
7593	Vulcan S	UX	108
7594	Z1000	UX	108
7595	Z125	UX	108
7596	Z250	UX	108
7597	Z800	UX	108
7598	ZR-7	UX	108
7599	W1	UX	109
7600	S3	UX	110
7601	Amanti	UX	111
7602	Borrego	UX	111
7603	Cadenza	UX	111
7604	Carens	UX	111
7605	Carnival	UX	111
7606	Cee'd Sportswagon	UX	111
7607	Cee'd	UX	111
7608	Cerato	UX	111
7609	Forte	UX	111
7610	K2	UX	111
7611	K3	UX	111
7612	K4	UX	111
7613	K5	UX	111
7614	K7	UX	111
7615	K9	UX	111
7616	K900	UX	111
7617	KX3	UX	111
7618	Lotze	UX	111
7619	Magentis	UX	111
7620	Mohave	UX	111
7621	Morning	UX	111
7622	Niro	UX	111
7623	Opirus	UX	111
7624	Optima	UX	111
7625	Picanto	UX	111
7626	Pride	UX	111
7627	Quoris	UX	111
7628	Ray	UX	111
7629	Rio 4	UX	111
7630	Rio	UX	111
7631	Rondo	UX	111
7632	Sedona	UX	111
7633	Sephia	UX	111
7634	Shuma	UX	111
7635	Sorento	UX	111
7636	Soul	UX	111
7637	Spectra	UX	111
7638	Sportage R	UX	111
7639	Sportage	UX	111
7640	Stylus	UX	111
7641	Venga	UX	111
7642	VQ	UX	111
7643	Agera	UX	112
7644	CCR	UX	112
7645	CCX	UX	112
7646	CCXR	UX	112
7647	200 Duke	UX	113
7648	250 EXC	UX	113
7649	250 SX	UX	113
7650	390 Duke	UX	113
7651	525 XC	UX	113
7652	85 SX	UX	113
7653	RC 200	UX	113
7654	Active	UX	114
7655	Agility	UX	114
7656	Candy 4U	UX	114
7657	Candy Hi	UX	114
7658	DJS	UX	114
7659	Downtown	UX	114
7660	G-Dink	UX	114
7661	Jetix	UX	114
7662	Jockey	UX	114
7663	K-Pipe	UX	114
7664	K-XCT	UX	114
7665	Like	UX	114
7666	MyRoad	UX	114
7667	New Sento	UX	114
7668	People One	UX	114
7669	Quannon	UX	114
7670	Queen	UX	114
7671	Racing King	UX	114
7672	Super 8	UX	114
7673	Venox	UX	114
7674	VisaR	UX	114
7675	Xciting	UX	114
7676	112	UX	115
7677	Granta	UX	115
7678	Kalina	UX	115
7679	Largus	UX	115
7680	Priora	UX	115
7681	Samara	UX	115
7682	Vesta	UX	115
7683	Xray	UX	115
7684	Aventador	UX	116
7685	Gallardo	UX	116
7686	Huracan	UX	116
7687	Murcielago	UX	116
7688	Reventon	UX	116
7689	Delta	UX	117
7690	Epsilon	UX	117
7691	Kappa	UX	117
7692	Lybra	UX	117
7693	Musa	UX	117
7694	Phedra	UX	117
7695	Thema	UX	117
7696	Thesis	UX	117
7697	Voyager	UX	117
7698	Ypsilon	UX	117
7699	Defender	UX	118
7701	Freelander	UX	118
7702	Range Rover Evoque	UX	118
7705	Fashion	UX	119
7706	X5	UX	119
7707	X6	UX	119
7708	X7	UX	119
7709	X8	UX	119
7710	X9	UX	119
7711	6609EV	UX	120
7712	G10	UX	121
7713	Char AMX	UX	122
7714	CT	UX	123
7715	ES	UX	123
7716	GS	UX	123
7717	HS	UX	123
7718	IS	UX	123
7719	LFA	UX	123
7720	LS	UX	123
7721	NX	UX	123
7722	RC	UX	123
7723	RX	UX	123
7724	SC	UX	123
7725	320	UX	124
7726	520	UX	124
7727	530	UX	124
7728	620	UX	124
7729	630	UX	124
7730	720	UX	124
7731	820	UX	124
7732	Cebrium	UX	124
7733	Foison	UX	124
7734	Smily	UX	124
7735	Solano	UX	124
7736	X50	UX	124
7737	X60	UX	124
7738	Aviator	UX	125
7739	Blackwood	UX	125
7740	Continental	UX	125
7741	LS	UX	125
7742	Mark LT	UX	125
7743	Mark	UX	125
7744	MKT	UX	125
7745	Stretch Limo	UX	125
7746	Town Car	UX	125
7747	Zephyr	UX	125
7748	Elise	UX	126
7749	Esprit	UX	126
7750	Evora	UX	126
7751	Exige	UX	126
7752	Jingsu	UX	126
7753	Jingyue	UX	126
7754	L3	UX	126
7755	L5	UX	126
7756	RCR	UX	126
7757	CEO	UX	127
7758	Luxgen5	UX	127
7759	Luxgen7	UX	127
7760	M7	UX	127
7761	S3	UX	127
7762	s5	UX	127
7763	U6 Turbo	UX	127
7764	U7 Turbo	UX	127
7765	U7	UX	127
7766	V7	UX	127
7767	ALFA Champ	UX	128
7768	ALFA Comfy	UX	128
7769	ALFA DX	UX	128
7770	Bolero	UX	128
7771	Centuro	UX	128
7772	Duro DZ	UX	128
7773	e2o	UX	128
7774	Flyte Sym	UX	128
7775	Genio DC	UX	128
7776	Goa	UX	128
7777	Gusto	UX	128
7778	Kine	UX	128
7779	KUV100	UX	128
7780	Logan	UX	128
7781	Mojo	UX	128
7782	Pantero	UX	128
7783	Pik-Up	UX	128
7784	Quanto	UX	128
7785	Rodeo RZ	UX	128
7786	Scorpio	UX	128
7787	Thar	UX	128
7788	TUV300	UX	128
7789	Verito Vibe	UX	128
7790	Verito	UX	128
7791	XUV500	UX	128
7792	Xylo	UX	128
7793	TGX	UX	129
7794	A-Star	UX	130
7795	Alto	UX	130
7796	Baleno	UX	130
7797	Celerio	UX	130
7798	Ciaz	UX	130
7799	Dzire	UX	130
7800	Eeco	UX	130
7801	Ertiga	UX	130
7802	Esteem	UX	130
7803	Estilo	UX	130
7804	Grand Vitara	UX	130
7805	Kizashi	UX	130
7806	Maruti 800	UX	130
7807	Ritz	UX	130
7808	S-Cross	UX	130
7809	Swift Dzire	UX	130
7810	Swift	UX	130
7811	SX4	UX	130
7812	Vitara Brezza	UX	130
7813	Wagon R	UX	130
7814	Zen	UX	130
7815	Coupe	UX	131
7816	Ghibli	UX	131
7817	Gran Turismo	UX	131
7818	GranCabrio	UX	131
7819	GranSport	UX	131
7820	Levante	UX	131
7821	MC12	UX	131
7822	Quattroporte	UX	131
7823	Spyder	UX	131
7824	G10	UX	132
7825	57	UX	133
7826	62	UX	133
7827	323	UX	134
7828	626	UX	134
7829	929	UX	134
7830	Allegro	UX	134
7831	Astina	UX	134
7832	Atenza	UX	134
7833	Axela	UX	134
7834	AZ-Offroad	UX	134
7835	AZ-Wagon	UX	134
7836	B-Series	UX	134
7837	Biante	UX	134
7838	Bongo	UX	134
7839	BT-50	UX	134
7840	Capella	UX	134
7841	Carol	UX	134
7842	CX-3	UX	134
7843	CX-5	UX	134
7844	CX-7	UX	134
7845	CX-9	UX	134
7846	Demio	UX	134
7847	Familia	UX	134
7848	Flair	UX	134
7849	Lantis	UX	134
7850	MAZDA2	UX	134
7851	MAZDA3	UX	134
7852	MAZDA5	UX	134
7853	MAZDA6	UX	134
7854	MAZDA8	UX	134
7855	MAZDASPEED3	UX	134
7856	MAZDASPEED6	UX	134
7857	Millenia	UX	134
7858	MPV	UX	134
7859	MX-5 Miata	UX	134
7860	Premacy	UX	134
7861	Protege	UX	134
7862	RX-8	UX	134
7863	Scrum	UX	134
7864	SP23	UX	134
7865	SP25	UX	134
7866	Spiano	UX	134
7867	Tribute	UX	134
7868	Verisa	UX	134
7869	VX-1	UX	134
7870	Ovetto	UX	135
7871	12C	UX	136
7872	570S	UX	136
7873	650S	UX	136
7874	P1	UX	136
7875	190	UX	137
7876	220	UX	137
7877	A-Class	UX	137
7878	AMG GT	UX	137
7879	B-Class	UX	137
7880	B200	UX	137
7882	Citan	UX	137
7883	CL-Class	UX	137
7884	CLA-Class	UX	137
7885	CLK-Class	UX	137
7887	E-Class Wagon	UX	137
7889	G-Class	UX	137
7891	GLA-Class	UX	137
7892	GLC-Class	UX	137
7893	GLE-Class	UX	137
7895	GLS-Class	UX	137
7897	Metris	UX	137
7898	ML Class	UX	137
7899	R-Class	UX	137
7901	SL-Class	UX	137
7902	SLK-Class	UX	137
7903	SLR McLaren	UX	137
7904	SLS AMG	UX	137
7905	Sprinter	UX	137
7906	Stretch Limo	UX	137
7907	V-Class	UX	137
7908	Valente	UX	137
7909	Vaneo	UX	137
7910	Viano	UX	137
7911	Vito	UX	137
7912	Cougar	UX	138
7913	Grand Marquis	UX	138
7914	Marauder	UX	138
7915	Mariner	UX	138
7916	Milan	UX	138
7917	Montego	UX	138
7918	Monterey	UX	138
7919	Mountaineer	UX	138
7920	Mystique	UX	138
7881	C-Class	UB	137
7888	E-Class	UB	137
7894	GLK-Class	UB	137
7896	M-Class	UB	137
7900	S-Class	UB	137
7921	Sable	UX	138
7922	Villager	UX	138
7923	350	UX	139
7924	3SW	UX	139
7925	550	UX	139
7926	GS	UX	139
7927	MG 3	UX	139
7928	MG 5	UX	139
7929	MG 6	UX	139
7930	MG 7	UX	139
7931	MG GT	UX	139
7932	TF	UX	139
7933	GTR	UX	140
7934	MadAss	UX	140
7935	Megelli	UX	140
7936	R 150	UX	140
7937	RX 150	UX	140
7938	X-ROAD	UX	140
7939	5-Door	UX	141
7940	Cabrio	UX	141
7941	Clubman	UX	141
7942	Convertible	UX	141
7943	Cooper	UX	141
7944	Countryman	UX	141
7945	Hardtop	UX	141
7946	Paceman	UX	141
7947	380	UX	142
7948	Adventure	UX	142
7949	Airtrek	UX	142
7950	ASX	UX	142
7951	Attrage	UX	142
7952	Carisma	UX	142
7953	Challenger	UX	142
7954	Colt	UX	142
7955	Delica	UX	142
7956	Diamante	UX	142
7957	Dion	UX	142
7958	Eclipse	UX	142
7959	eK	UX	142
7960	Endeavor	UX	142
7961	Express	UX	142
7962	Fuzion	UX	142
7963	Galant Fortis	UX	142
7964	Galant	UX	142
7965	Grandis	UX	142
7966	Grunder	UX	142
7967	i-Miev	UX	142
7968	L200	UX	142
7969	L300	UX	142
7970	Lancer Fortis	UX	142
7971	Lancer	UX	142
7972	Magna	UX	142
7973	Maven	UX	142
7974	Minicab	UX	142
7975	Mirage	UX	142
7976	Montero Sport	UX	142
7977	Nativa	UX	142
7978	Outlander Sport	UX	142
7979	Pajero Full	UX	142
7980	Pajero TR4	UX	142
7981	Pajero	UX	142
7982	Raider	UX	142
7983	RVR	UX	142
7984	Savrin	UX	142
7985	Space Star	UX	142
7986	Space Wagon	UX	142
7987	Sportero	UX	142
7988	Strada	UX	142
7989	Town Box	UX	142
7990	Triton	UX	142
7991	Zinger	UX	142
7992	Galue	UX	143
7993	Himiko	UX	143
7994	Orochi	UX	143
7995	Audace	UX	144
7996	California 1400 Touring	UX	144
7997	V7 II Racer	UX	144
7998	V7 II Special	UX	144
7999	V7 II Stone	UX	144
8000	V7 II Stornello	UX	144
8001	Brutale	UX	145
8002	F3	UX	145
8003	Rivale	UX	145
8004	Citra	UX	146
8005	Forza	UX	146
8006	Ria	UX	146
8007	Suria	UX	146
8008	Sutera	UX	146
8009	350Z Roadster	UX	147
8010	350Z	UX	147
8011	370Z Roadster	UX	147
8012	370Z	UX	147
8013	AD	UX	147
8014	Almera Tino	UX	147
8015	Almera	UX	147
8016	Altima	UX	147
8017	Aprio	UX	147
8018	Bluebird	UX	147
8019	Caravan	UX	147
8020	Cedric	UX	147
8021	Cefiro	UX	147
8022	Clipper	UX	147
8023	Cube	UX	147
8024	D21	UX	147
8025	DAYZ ROOX	UX	147
8026	DAYZ	UX	147
8027	Dualis	UX	147
8028	e-NV200	UX	147
8029	Elgrand	UX	147
8030	Evalia	UX	147
8031	Expert	UX	147
8032	Frontier	UX	147
8033	Fuga	UX	147
8034	Grand Livina	UX	147
8035	GT-R	UX	147
8036	Infiniti	UX	147
8037	Juke	UX	147
8038	Kicks	UX	147
8039	KIX	UX	147
8040	Lafesta	UX	147
8041	Lannia	UX	147
8042	Latio	UX	147
8043	Laurel	UX	147
8044	LEAF	UX	147
8045	Liberty	UX	147
8046	Livina Geniss	UX	147
8047	Livina	UX	147
8048	March	UX	147
8049	Maxima	UX	147
8050	Micra	UX	147
8051	Moco	UX	147
8052	Murano	UX	147
8053	Navara	UX	147
8054	Note	UX	147
8055	NP300 Frontier	UX	147
8056	NT100 Clipper	UX	147
8057	NV Passenger	UX	147
8058	NV	UX	147
8059	NV100	UX	147
8060	NV1500	UX	147
8061	NV200	UX	147
8062	NV2500	UX	147
8063	NV3500	UX	147
8064	NV400	UX	147
8065	Otti	UX	147
8066	Paladin	UX	147
8067	Patrol	UX	147
8068	Pino	UX	147
8069	Pixo	UX	147
8070	Platina	UX	147
8071	Prairie	UX	147
8072	Presage	UX	147
8073	Presea	UX	147
8074	Primastar	UX	147
8075	Primera	UX	147
8076	Pulsar	UX	147
8077	Qashqai+2	UX	147
8078	Qashqai	UX	147
8079	Quest	UX	147
8080	R'nessa	UX	147
8081	Rogue	UX	147
8082	Sentra B13	UX	147
8083	Sentra B17	UX	147
8084	Sentra	UX	147
8085	Serena	UX	147
8086	Skyline	UX	147
8087	Stagea	UX	147
8088	Sunny	UX	147
8089	Sylphy	UX	147
8090	Teana	UX	147
8091	Terrano	UX	147
8092	Tida	UX	147
8093	Tiida	UX	147
8094	Tino	UX	147
8095	Titan	UX	147
8096	Tsuru	UX	147
8097	Urvan	UX	147
8098	V16	UX	147
8099	Versa Note	UX	147
8100	Versa	UX	147
8101	Wingroad	UX	147
8102	X-Trail	UX	147
8103	Xterra	UX	147
8104	Yumsun	UX	147
8105	Z Roadster	UX	147
8106	19	UX	148
8107	Alero	UX	148
8108	Aurora	UX	148
8109	Bravada	UX	148
8110	Silhouette	UX	148
8111	Adam	UX	149
8112	Agila	UX	149
8113	Ampera	UX	149
8114	Antara	UX	149
8115	Astra Sports Tourer	UX	149
8116	Astra	UX	149
8117	Combo C	UX	149
8118	Combo D	UX	149
8119	Corsa	UX	149
8120	Insignia Sports Tourer	UX	149
8121	Insignia	UX	149
8122	Karl	UX	149
8123	Meriva	UX	149
8124	Mokka	UX	149
8125	Movano	UX	149
8126	Omega	UX	149
8127	Signum	UX	149
8128	Sintra	UX	149
8129	Vectra	UX	149
8130	Vivaro	UX	149
8131	Zafira Tourer	UX	149
8132	Zafira	UX	149
8133	Ruda	UX	150
8134	Zonda	UX	151
8135	Alza	UX	152
8136	Axia	UX	152
8137	Bezza	UX	152
8138	Kancil	UX	152
8139	Kelisa	UX	152
8140	Kembara	UX	152
8141	Kenari	UX	152
8142	Myvi	UX	152
8143	Nautica	UX	152
8144	Rusa	UX	152
8145	Viva	UX	152
8146	1007	UX	153
8147	107	UX	153
8148	108	UX	153
8149	2008	UX	153
8150	206	UX	153
8151	207 Passion	UX	153
8152	207 SW	UX	153
8153	207	UX	153
8154	208	UX	153
8155	300	UX	153
8156	3008	UX	153
8157	301	UX	153
8158	306	UX	153
8159	307	UX	153
8160	308 SW	UX	153
8161	308	UX	153
8162	4007	UX	153
8163	4008	UX	153
8164	406	UX	153
8165	407	UX	153
8166	408	UX	153
8167	5007	UX	153
8168	5008	UX	153
8169	508 SW	UX	153
8170	508	UX	153
8171	607	UX	153
8172	807	UX	153
8173	Bipper	UX	153
8174	Boxer	UX	153
8175	Elystar	UX	153
8176	Eurobus	UX	153
8177	Expert Tepee	UX	153
8178	Expert	UX	153
8179	Grand Raid Tepee	UX	153
8180	Horizon	UX	153
8181	iOn	UX	153
8182	Ludix	UX	153
8183	Pars	UX	153
8184	Partner	UX	153
8185	RCZ	UX	153
8186	Tweet	UX	153
8187	Vivacity	UX	153
8188	Ape	UX	154
8189	Beverly	UX	154
8190	Fly	UX	154
8191	Liberty 125	UX	154
8192	Liberty ABS	UX	154
8193	Medley	UX	154
8194	MP3	UX	154
8195	Vespa LX 125	UX	154
8196	X10	UX	154
8197	Zip	UX	154
8198	Breeze	UX	155
8199	Neon	UX	155
8200	Prowler	UX	155
8201	Voyager	UX	155
8202	Slingshot	UX	156
8203	Aztek	UX	157
8204	Bonneville	UX	157
8205	Firebird	UX	157
8206	G3	UX	157
8207	G5	UX	157
8208	G6	UX	157
8209	G8	UX	157
8210	Grand Am	UX	157
8211	Grand Prix	UX	157
8212	GTO	UX	157
8213	Montana	UX	157
8214	Pursuit	UX	157
8215	Solstice	UX	157
8216	Sunfire	UX	157
8217	Torrent	UX	157
8218	Vibe	UX	157
8219	Wave	UX	157
8220	718	UX	158
8221	911	UX	158
8222	912	UX	158
8223	918	UX	158
8224	Boxster	UX	158
8225	Cayman	UX	158
8226	Macan Turbo	UX	158
8227	P	UX	158
8228	Targa	UX	158
8229	Arena	UX	159
8230	Exora	UX	159
8231	Gen-2	UX	159
8232	Impian	UX	159
8233	Inspira	UX	159
8234	Iriz	UX	159
8235	Juara	UX	159
8236	Perdana	UX	159
8237	Persona	UX	159
8238	Preve	UX	159
8239	Putra	UX	159
8240	S16	UX	159
8241	Saga	UX	159
8242	Satria	UX	159
8243	Savvy	UX	159
8244	Suprima	UX	159
8245	Tiara	UX	159
8246	Waja	UX	159
8247	Wira	UX	159
8248	3	UX	160
8249	5	UX	160
8250	CV	UX	161
8251	1500	UX	162
8252	2500	UX	162
8253	3500	UX	162
8254	ProMaster	UX	162
8255	Bobber	UX	163
8256	Daytona	UX	163
8257	NAC25	UX	163
8258	QM3	UX	164
8259	QM5	UX	164
8260	SM3	UX	164
8261	SM5	UX	164
8262	SM7	UX	164
8263	Captur	UX	165
8264	Clio Break	UX	165
8265	Clio	UX	165
8266	Dokker	UX	165
8267	Duster Oroch	UX	165
8268	Duster	UX	165
8269	Espace	UX	165
8270	Fluence	UX	165
8271	Grand Scenic	UX	165
8272	Kadjar	UX	165
8273	Kangoo	UX	165
8274	Koleos	UX	165
8275	Kwid	UX	165
8276	Laguna	UX	165
8277	Latitude	UX	165
8278	Lodgy	UX	165
8279	Logan	UX	165
8280	Master	UX	165
8281	Megane Estate	UX	165
8282	Megane	UX	165
8283	Modus	UX	165
8284	New Logan	UX	165
8285	Pulse	UX	165
8286	Safrane	UX	165
8287	Sandero	UX	165
8288	Scala	UX	165
8289	Scenic	UX	165
8290	Stepway	UX	165
8291	Symbol	UX	165
8292	Talisman	UX	165
8293	Thalia	UX	165
8294	Tondar	UX	165
8295	Twingo	UX	165
8296	Vel Satis	UX	165
8297	Zoe	UX	165
8298	350	UX	166
8299	360	UX	166
8300	550	UX	166
8301	750	UX	166
8302	950	UX	166
8303	E50	UX	166
8304	W5	UX	166
8305	Flying Spur	UX	167
8306	Ghost	UX	167
8307	Phantom	UX	167
8308	Silver Cloud	UX	167
8309	Silver Shadow	UX	167
8310	Wraith	UX	167
8311	400	UX	168
8312	45	UX	168
8313	620	UX	168
8314	75	UX	168
8315	Bullet 350	UX	169
8316	Bullet 500	UX	169
8317	Bullet Electra	UX	169
8318	Classic 350	UX	169
8319	Classic 500	UX	169
8320	Classic Battle Green	UX	169
8321	Classic Chrome	UX	169
8322	Classic Desert Storm	UX	169
8323	Classic Squadron Blue	UX	169
8324	Continental GT	UX	169
8325	Rumbler 350	UX	169
8326	Rumbler 500	UX	169
8327	Thunderbird 350	UX	169
8328	Thunderbird 500	UX	169
8329	9-2	UX	170
8330	9-2X	UX	170
8331	9-3	UX	170
8332	9-3X	UX	170
8333	9-4X	UX	170
8334	9-5	UX	170
8335	9-7X	UX	170
8336	Sport	UX	170
8337	Vector	UX	170
8338	Tiba	UX	171
8339	S281	UX	172
8340	S302	UX	172
8341	S331	UX	172
8342	S570	UX	172
8343	S620	UX	172
8344	S7	UX	172
8345	Astra	UX	173
8346	Aura	UX	173
8347	Ion	UX	173
8348	L100	UX	173
8349	L200	UX	173
8350	L300	UX	173
8351	LW200	UX	173
8352	LW300	UX	173
8353	Outlook	UX	173
8354	Relay	UX	173
8355	SC1	UX	173
8356	Sky	UX	173
8357	SL1	UX	173
8358	SL2	UX	173
8359	SW2	UX	173
8360	VUE	UX	173
8361	FR-S	UX	174
8362	iA	UX	174
8363	iM	UX	174
8364	iQ	UX	174
8365	tC	UX	174
8366	xA	UX	174
8367	xB	UX	174
8368	xD	UX	174
8369	Turismo Leggera 125	UX	175
8370	Altea	UX	176
8371	Ateca	UX	176
8372	Cordoba	UX	176
8373	Exeo	UX	176
8374	Ibiza	UX	176
8375	Leon	UX	176
8376	MII	UX	176
8377	Toledo	UX	176
8378	X-Perience	UX	176
8379	Uber	UX	177
8380	C53	UX	178
8381	C81	UX	178
8382	Haiyue	UX	178
8383	Langfeng	UX	178
8384	X30	UX	179
8385	SCEO	UX	180
8386	Citigo	UX	181
8387	Fabia	UX	181
8388	Laura	UX	181
8389	Octavia Combi	UX	181
8390	Octavia	UX	181
8391	Rapid Spaceback	UX	181
8392	Rapid	UX	181
8393	Roomster	UX	181
8394	Superb Combi	UX	181
8395	Superb Derivative	UX	181
8396	Superb	UX	181
8397	Yeti	UX	181
8398	Forfour	UX	182
8399	Fortwo	UX	182
8400	Extreme	UX	183
8401	Rhino	UX	183
8402	Delica	UX	184
8403	DX7	UX	184
8404	Lioncel	UX	184
8405	V3	UX	184
8406	V5	UX	184
8407	V6Lingshi	UX	184
8408	Veryca	UX	184
8409	Xiwang	UX	184
8410	A113	UX	185
8411	A516	UX	185
8412	A620	UX	185
8413	Envy	UX	185
8414	M11	UX	185
8415	Tiggo	UX	185
8416	C8	UX	186
8417	Actyon Sports	UX	187
8418	Actyon	UX	187
8419	Chairman	UX	187
8420	Istana	UX	187
8421	Korando	UX	187
8422	Kyron	UX	187
8423	Musso	UX	187
8424	Rexton	UX	187
8425	Rodius	UX	187
8426	Stavic	UX	187
8427	Tivoli	UX	187
8428	Turismo	UX	187
8429	Baja 125	UX	188
8430	Buddy	UX	188
8431	Carino	UX	188
8432	Centaur	UX	188
8433	Dax 125	UX	188
8434	Iron One	UX	188
8435	JR Extreme	UX	188
8436	Mini GiO	UX	188
8437	Mini MOMO	UX	188
8438	Mini SOLO	UX	188
8439	Solo	UX	188
8440	B3	UX	189
8441	B4	UX	189
8442	B9 Tribeca	UX	189
8443	Baja	UX	189
8444	BRZ	UX	189
8445	Crosstrek Hybrid	UX	189
8446	Crosstrek	UX	189
8447	Dias Wagon	UX	189
8448	Exiga	UX	189
8449	Forester	UX	189
8450	G3X Justy	UX	189
8451	Impreza	UX	189
8452	Justy	UX	189
8453	Legacy	UX	189
8454	Levorg	UX	189
8455	Libero	UX	189
8456	Liberty	UX	189
8457	Lucra	UX	189
8458	Outback	UX	189
8459	Pleo	UX	189
8460	R1	UX	189
8461	R2	UX	189
8462	Stella	UX	189
8463	Traviq	UX	189
8464	Trezia	UX	189
8465	Tribeca	UX	189
8466	WRX	UX	189
8467	XV Crosstrek	UX	189
8468	A100	UX	190
8469	Access 125	UX	190
8470	Address	UX	190
8471	Aerio	UX	190
8472	Alivio	UX	190
8473	Alto	UX	190
8474	APV	UX	190
8475	Arashi	UX	190
8476	Axelo	UX	190
8477	Baleno	UX	190
8478	Bandit	UX	190
8479	Boulevard	UX	190
8480	Bravo	UX	190
8481	Burgman	UX	190
8482	Celerio	UX	190
8483	Cervo	UX	190
8484	Ciaz	UX	190
8485	Cultus	UX	190
8486	Equator	UX	190
8487	Ertiga	UX	190
8488	Escudo	UX	190
8489	Esteem	UX	190
8490	Every	UX	190
8491	Forenza	UX	190
8492	Fun	UX	190
8493	FXR	UX	190
8494	GD110HU	UX	190
8495	Gixxer SF	UX	190
8496	Gixxer	UX	190
8497	Gladius	UX	190
8498	Grand Nomade	UX	190
8499	Grand Vitara	UX	190
8500	GS150R	UX	190
8501	GSR	UX	190
8502	GSX-R1000	UX	190
8503	GSX-S	UX	190
8504	GSX1300R	UX	190
8505	GZ150	UX	190
8506	Hayabusa	UX	190
8507	Hayate 125	UX	190
8508	Hustler	UX	190
8509	Ignis	UX	190
8510	Impulse	UX	190
8511	Inazuma R	UX	190
8512	Jimny	UX	190
8513	Karimun	UX	190
8514	Katana	UX	190
8515	Kizashi	UX	190
8516	Let's	UX	190
8517	Liana	UX	190
8518	Mehran	UX	190
8519	MR Wagon	UX	190
8520	Nex	UX	190
8521	Palette	UX	190
8522	Raider 150	UX	190
8523	RC	UX	190
8524	Reno	UX	190
8525	Revo	UX	190
8526	RG	UX	190
8527	RGR	UX	190
8528	S-Cross	UX	190
8529	Satria	UX	190
8530	Shogun Axelo	UX	190
8531	Shogun	UX	190
8532	Shooter 115 FI	UX	190
8533	Skydrive 125	UX	190
8534	Skywave	UX	190
8535	Slingshot Pluss	UX	190
8536	Smash	UX	190
8537	Solio	UX	190
8538	Spacia	UX	190
8539	Spin	UX	190
8540	Splash	UX	190
8541	Swift Dzire	UX	190
8542	Swift Sport	UX	190
8543	Swift	UX	190
8544	Swish 125	UX	190
8545	SX4	UX	190
8546	Thunder	UX	190
8547	Tianyu	UX	190
8548	Tornado	UX	190
8549	TS	UX	190
8550	UA 125T	UX	190
8551	V-Strom	UX	190
8552	VanVan 125	UX	190
8553	Verona	UX	190
8554	Vitara	UX	190
8555	Viva	UX	190
8556	Wagon R	UX	190
8557	XL7	UX	190
8558	Angela 110	UX	191
8559	Angela 50	UX	191
8560	Attila Elizabeth	UX	191
8561	Attila V	UX	191
8562	Bonus	UX	191
8563	Fiddle II	UX	191
8564	Galaxy	UX	191
8565	GTS 300i evo	UX	191
8566	Italijet Formula 125	UX	191
8567	Jet 4 125	UX	191
8568	Joymax 300i	UX	191
8569	Joyride EVO	UX	191
8570	Maxsym 400i ABS	UX	191
8571	Orbit II	UX	191
8572	Shark	UX	191
8573	Symba	UX	191
8574	Tini 110	UX	191
8575	Venus	UX	191
8576	Wolf	UX	191
8577	Ace	UX	192
8578	Aria	UX	192
8579	Bolt	UX	192
8580	Grande	UX	192
8581	Indica	UX	192
8582	Indigo XL	UX	192
8583	Indigo	UX	192
8584	Magic Iris	UX	192
8585	Manza	UX	192
8586	Movus	UX	192
8587	Nano	UX	192
8588	Safari	UX	192
8589	Sumo	UX	192
8590	Tiago	UX	192
8591	Venture	UX	192
8592	Vista	UX	192
8593	Xenon	UX	192
8594	Zest	UX	192
8595	MV-1	UX	193
8596	Taxi	UX	193
8597	Model S	UX	194
8598	Model X	UX	194
8599	Roadster	UX	194
8600	M'Car	UX	195
8601	M'Way	UX	195
8602	4Runner	UX	196
8603	86	UX	196
8604	Agya	UX	196
8605	Allex	UX	196
8606	Allion	UX	196
8607	Alphard	UX	196
8608	Altezza	UX	196
8609	Altis	UX	196
8610	Aqua	UX	196
8611	Aristo	UX	196
8612	Aurion	UX	196
8613	Auris Touring Sports	UX	196
8614	Auris	UX	196
8615	Avalon	UX	196
8616	Avensis	UX	196
8617	Aygo	UX	196
8618	bB	UX	196
8619	Belta	UX	196
8620	Caldina	UX	196
8621	Calya	UX	196
8622	Camry Solara	UX	196
8623	Camry	UX	196
8624	Carina	UX	196
8625	Celica	UX	196
8626	Celsior	UX	196
8627	Century	UX	196
8628	Chaser	UX	196
8629	Comfort	UX	196
8630	Commuter	UX	196
8631	Condor	UX	196
8632	Corolla Altis	UX	196
8633	Corolla Axio	UX	196
8634	Corolla EX	UX	196
8635	Corolla Fielder	UX	196
8636	Corolla Levin	UX	196
8637	Corolla Rumion	UX	196
8638	Corolla Spacio	UX	196
8639	Corolla	UX	196
8640	Corona Premio	UX	196
8641	Corona	UX	196
8642	Crown Athlete	UX	196
8643	Crown Comfort	UX	196
8644	Crown Majesta	UX	196
8645	Crown Royal	UX	196
8646	Crown Sedan	UX	196
8647	Crown	UX	196
8648	E'Z	UX	196
8649	Echo	UX	196
8650	Esquire	UX	196
8651	Estima	UX	196
8652	Etios Cross	UX	196
8653	Etios Liva	UX	196
8654	Etios	UX	196
8655	FJ Cruiser	UX	196
8656	Fortuner	UX	196
8657	Fun Cargo	UX	196
8658	Grandia	UX	196
8659	Granvia	UX	196
8660	Harrier	UX	196
8662	Hilux Surf	UX	196
8663	Hilux SW4	UX	196
8664	Hilux Vigo	UX	196
8665	Hilux	UX	196
8666	Innova	UX	196
8667	Ipsum	UX	196
8668	iQ	UX	196
8669	Isis	UX	196
8670	ist	UX	196
8671	Kluger	UX	196
8672	Mark II	UX	196
8673	Mark X	UX	196
8674	Matrix	UX	196
8675	Mirai	UX	196
8676	MR2 Spyder	UX	196
8677	Nadia	UX	196
8678	NAV1	UX	196
8679	Noah	UX	196
8680	Opa	UX	196
8681	Passo	UX	196
8682	Picnic	UX	196
8683	Pixis	UX	196
8684	Platz	UX	196
8685	Porte	UX	196
8686	Prado	UX	196
8687	Premio	UX	196
8688	Previa	UX	196
8689	Prius C	UX	196
8690	Prius V	UX	196
8691	Prius+	UX	196
8692	Prius	UX	196
8693	Probox	UX	196
8694	Quantum	UX	196
8695	Ractis	UX	196
8696	Raum	UX	196
8697	RAV4	UX	196
8698	Reiz	UX	196
8699	Revo	UX	196
8700	Rukus	UX	196
8701	Rush	UX	196
8702	Sai	UX	196
8703	Sienta	UX	196
8704	Silver Cloud	UX	196
8705	Spade	UX	196
8706	Sprinter Carib	UX	196
8707	Sprinter	UX	196
8708	Starlet	UX	196
8709	Stretch Limo	UX	196
8710	Succeed	UX	196
8711	SW4	UX	196
8712	Tacoma	UX	196
8713	Tarago	UX	196
8714	Tercel	UX	196
8715	Terios	UX	196
8716	TownAce	UX	196
8717	Tundra	UX	196
8718	Ultima	UX	196
8719	Urban Cruiser	UX	196
8720	Vanguard	UX	196
8721	Vellfire	UX	196
8722	Ventury	UX	196
8723	Venza	UX	196
8724	Verossa	UX	196
8725	Verso	UX	196
8726	Vios	UX	196
8727	Vista	UX	196
8728	Vitz	UX	196
8729	Voltz	UX	196
8730	Voxy	UX	196
8731	Wigo	UX	196
8732	WiLL VS	UX	196
8733	WISH	UX	196
8734	Yaris R	UX	196
8735	Yaris	UX	196
8736	Zace	UX	196
8737	Zelas	UX	196
8738	600	UX	197
8739	Bonneville	UX	198
8740	Daytona	UX	198
8741	Rocket III Roadster	UX	198
8742	Speed Triple	UX	198
8743	Speed Twin	UX	198
8744	Spitfire	UX	198
8745	Street Triple	UX	198
8746	Thruxton	UX	198
8747	Thunderbird Commander	UX	198
8748	Thunderbird Family	UX	198
8749	Thunderbird LT	UX	198
8750	Thunderbird Storm	UX	198
8751	Tiger Explorer	UX	198
8752	Tiger	UX	198
8753	Speed 12	UX	199
8754	Apache RTR 160	UX	200
8755	Apache RTR 180 ABS	UX	200
8756	Apache RTR 180	UX	200
8757	Apache RTR 200	UX	200
8758	Auto	UX	200
8759	Dazz	UX	200
8760	Flame SR 125	UX	200
8761	Jupiter	UX	200
8762	King	UX	200
8763	Max	UX	200
8764	Neo	UX	200
8765	Phoenix 125	UX	200
8766	Rockz	UX	200
8767	Scooty Pep Plus	UX	200
8768	Scooty Streak	UX	200
8769	Scooty Zest	UX	200
8770	Sport	UX	200
8771	Star City Plus	UX	200
8772	Wego 110	UX	200
8773	Patriot	UX	201
8774	Bicycle	UX	202
8775	Delivery	UX	202
8776	Motorbike	UX	202
8777	Pedicab	UX	202
8778	Pickup	UX	202
8779	Scooter	UX	202
8780	Walker	UX	202
8781	Antara	UX	203
8782	Astra	UX	203
8783	Insignia	UX	203
8784	Meriva	UX	203
8785	Signum	UX	203
8786	Vectra	UX	203
8787	Vivaro	UX	203
8788	Zafira	UX	203
8789	ChenFeng	UX	204
8790	D50	UX	204
8791	E30	UX	204
8792	R30	UX	204
8793	R50	UX	204
8794	T70	UX	204
8795	946	UX	205
8796	GTS	UX	205
8797	GTX	UX	205
8798	LT	UX	205
8799	LX	UX	205
8800	LXV GTV	UX	205
8801	Primavera	UX	205
8802	S	UX	205
8803	Sprint	UX	205
8804	V Cross	UX	206
8805	V1	UX	206
8806	V1X R	UX	206
8807	VSR	UX	206
8808	Arlen Ness Victory Vision	UX	207
8809	Boardwalk	UX	207
8810	Cory Ness Cross Country Tour	UX	207
8811	Cross Country Tour	UX	207
8812	Cross Country	UX	207
8813	Cross Road Classic	UX	207
8814	Hammer 8-Ball	UX	207
8815	Hard-Ball	UX	207
8816	High-Ball	UX	207
8817	Jackpot	UX	207
8818	Judge	UX	207
8819	Vegas 8-Ball	UX	207
8820	Vision Tour	UX	207
8821	Zach Ness Cross Country	UX	207
8822	Comet	UX	208
8823	Dragon	UX	208
8824	New Nexus	UX	208
8825	Rama	UX	208
8826	Viva Matic	UX	208
8827	Winner	UX	208
8828	Amarok	UX	209
8829	Beetle	UX	209
8830	Bora	UX	209
8831	Cabrio	UX	209
8832	Caddy	UX	209
8833	Caravelle	UX	209
8834	CC	UX	209
8835	Coccinelle	UX	209
8836	Crafter	UX	209
8837	Cross Lavida	UX	209
8838	CrossFox	UX	209
8839	Derby	UX	209
8840	e-Golf	UX	209
8841	e-up!	UX	209
8842	Eos	UX	209
8843	EuroVan	UX	209
8844	Fox	UX	209
8845	GLI	UX	209
8846	Gol Trend	UX	209
8847	Gol	UX	209
8848	Golf Estate	UX	209
8849	Golf Plus	UX	209
8850	Golf SportWagen	UX	209
8851	Golf Variant	UX	209
8852	Golf	UX	209
8853	Gran Lavida	UX	209
8854	GTI	UX	209
8855	Jetta SportWagen	UX	209
8856	Jetta	UX	209
8857	Kombi	UX	209
8858	Lamando	UX	209
8859	Lavida	UX	209
8860	Lupo	UX	209
8861	Magotan	UX	209
8862	Multivan	UX	209
8863	Parati	UX	209
8864	Passat	UX	209
8865	Phaeton	UX	209
8866	Pointer	UX	209
8867	Polo	UX	209
8868	R32	UX	209
8869	Rabbit	UX	209
8870	Routan	UX	209
8871	Sagitar	UX	209
8872	Santana	UX	209
8873	Saveiro	UX	209
8874	Scirocco	UX	209
8875	Sedan	UX	209
8876	Sharan	UX	209
8877	Space Cross	UX	209
8878	Spacefox	UX	209
8879	Sportsvan	UX	209
8880	Stretch Limo	UX	209
8881	Suran	UX	209
8882	Tiguan	UX	209
8883	Touareg	UX	209
8884	Touran	UX	209
8885	Transporter	UX	209
8886	TSi	UX	209
8887	Up	UX	209
8888	Vento	UX	209
8889	Voyage	UX	209
8890	850	UX	210
8891	C30	UX	210
8892	C70	UX	210
8893	S40	UX	210
8894	S70	UX	210
8895	S90	UX	210
8896	Stretch Limo	UX	210
8897	V40	UX	210
8898	V50	UX	210
8899	V60	UX	210
8900	V70	UX	210
8901	V90	UX	210
8902	XC70	UX	210
8903	Estina	UX	211
8904	Tingo	UX	211
8905	MV-1	UX	212
8906	Wajer 38	UX	213
8907	Enranger	UX	214
8908	Hongguang	UX	215
8909	Hongtu	UX	215
8910	Acruzo	UX	216
8911	Aerox	UX	216
8912	Alpha	UX	216
8913	Bolt	UX	216
8914	Byson	UX	216
8915	Crux	UX	216
8916	Crypton	UX	216
8917	Cuxi	UX	216
8918	Eagle Eye	UX	216
8919	Exciter 150	UX	216
8920	F1ZR	UX	216
8921	Fascino	UX	216
8922	Fazer 150	UX	216
8923	Fazer-FI	UX	216
8924	Filano	UX	216
8925	Fino	UX	216
8926	FJ-09	UX	216
8927	FJR1300A	UX	216
8928	Force	UX	216
8929	FZ-09	UX	216
8930	FZ-16	UX	216
8931	FZ-FI	UX	216
8932	FZ150i	UX	216
8933	FZ8-N	UX	216
8934	FZS	UX	216
8935	FZS-FI	UX	216
8936	Gladiator	UX	216
8937	Grand Filano	UX	216
8938	Grande	UX	216
8939	GT125	UX	216
8940	Jupiter	UX	216
8941	Lexam	UX	216
8942	Luvias	UX	216
8943	M-Slaz	UX	216
8944	Mio	UX	216
8945	MT-03	UX	216
8946	MT-07	UX	216
8947	MT-09	UX	216
8948	MT-25	UX	216
8949	MX King	UX	216
8950	NMAX	UX	216
8951	Nouvo Elegance	UX	216
8952	Nouvo SX	UX	216
8953	R15	UX	216
8954	R25	UX	216
8955	Ray	UX	216
8956	RX 135	UX	216
8957	RX	UX	216
8958	Saluto	UX	216
8959	Scorpio	UX	216
8960	Sirius	UX	216
8961	Soul	UX	216
8962	Spark 115i	UX	216
8963	Spark	UX	216
8964	SR400	UX	216
8965	Super Tenere	UX	216
8966	SZ-X	UX	216
8967	TMAX	UX	216
8968	Tricity	UX	216
8969	TTX	UX	216
8970	Vega Force	UX	216
8971	Vino	UX	216
8972	Vixion Advance	UX	216
8973	WR250R	UX	216
8974	X-MAX	UX	216
8975	X-Ride	UX	216
8976	Xabre	UX	216
8977	Xeon	UX	216
8978	YZ	UX	216
8979	YZF-R1	UX	216
8980	YZF-R15	UX	216
8981	YZF-R3	UX	216
8982	YZR	UX	216
8983	F10	UX	217
8984	F12	UX	217
8985	T70	UX	217
8986	A380	UX	218
8987	Chance	UX	219
8988	Forza	UX	219
8989	Vida	UX	219
8990	D2	UX	220
8991	DS	UX	221
8992	FX	UX	221
8993	S	UX	221
8994	SR	UX	221
8995	Type 5	UX	221
8996	Type 9	UX	221
8997	H220	UX	222
8998	H230	UX	222
8999	H330	UX	222
9000	H530	UX	222
9001	Junjie	UX	222
9002	Kubao	UX	222
9003	V3	UX	222
9004	V5	UX	222
9005	Zunchi	UX	222
9006	Koala	UX	223
9007	Cruiser RK 125	UX	224
9008	Ryuka Classic RK110	UX	224
9009	Ryuka Fly 150	UX	224
9010	Ryuka Gorila 125	UX	224
9011	Ryuka Monkey 125	UX	224
9012	Sport RK100	UX	224
9013	Z-One	UX	224
9014	ZSR125GY	UX	224
9015	5008	UX	225
9016	Cloud 100	UX	225
9017	Damai X5	UX	225
9018	E20	UX	225
9019	Hunter	UX	225
9020	M300	UX	225
9021	Nomada	UX	225
9022	T200	UX	225
9023	T600	UX	225
9024	XS	UX	225
9025	Yun 100	UX	225
9026	Z100	UX	225
9027	Z200	UX	225
9028	Z300	UX	225
9029	Z500	UX	225
9030	Grand Tiger	UX	226
9031	Urban Ark C3	UX	226
6118	Acadia	US	72
6503	Escalade	US	26
6137	Explorer	US	65
7890	GL-Class	US	137
7886	CLS-Class	UB	137
7700	Discovery	UB	118
7469	FX	UB	93
6427	X1	UB	21
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

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 340, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 22, true);


--
-- Name: home_marca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('home_marca_id_seq', 228, true);


--
-- Name: home_modelo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('home_modelo_id_seq', 9031, true);


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
    ADD CONSTRAINT "home_marca_nombreMarca_fc395197_uniq" UNIQUE (name);


--
-- Name: home_marca home_marca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_marca
    ADD CONSTRAINT home_marca_pkey PRIMARY KEY (id);


--
-- Name: home_modelo home_modelo_marca_id_nombreModelo_aede9a17_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_modelo
    ADD CONSTRAINT "home_modelo_marca_id_nombreModelo_aede9a17_uniq" UNIQUE (marca_id, name);


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

CREATE INDEX "home_marca_nombreMarca_fc395197_like" ON home_marca USING btree (name varchar_pattern_ops);


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

