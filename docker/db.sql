--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.7

-- Started on 2023-06-19 17:00:19 UTC

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
-- TOC entry 212 (class 1259 OID 16395)
-- Name: about_about; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.about_about (
    id bigint NOT NULL,
    title character varying(50) NOT NULL,
    description character varying(250) NOT NULL,
    icon character varying(30) NOT NULL
);


ALTER TABLE public.about_about OWNER TO "user";

--
-- TOC entry 211 (class 1259 OID 16394)
-- Name: about_about_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.about_about_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_about_id_seq OWNER TO "user";

--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 211
-- Name: about_about_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.about_about_id_seq OWNED BY public.about_about.id;


--
-- TOC entry 218 (class 1259 OID 16418)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO "user";

--
-- TOC entry 217 (class 1259 OID 16417)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO "user";

--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 220 (class 1259 OID 16427)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO "user";

--
-- TOC entry 219 (class 1259 OID 16426)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO "user";

--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 216 (class 1259 OID 16411)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO "user";

--
-- TOC entry 215 (class 1259 OID 16410)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO "user";

--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 222 (class 1259 OID 16434)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO "user";

--
-- TOC entry 224 (class 1259 OID 16443)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO "user";

--
-- TOC entry 223 (class 1259 OID 16442)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO "user";

--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 221 (class 1259 OID 16433)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO "user";

--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 226 (class 1259 OID 16450)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO "user";

--
-- TOC entry 225 (class 1259 OID 16449)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO "user";

--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 230 (class 1259 OID 16539)
-- Name: contact_contact; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.contact_contact (
    id bigint NOT NULL,
    address character varying(250) NOT NULL,
    email character varying(150) NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL
);


ALTER TABLE public.contact_contact OWNER TO "user";

--
-- TOC entry 229 (class 1259 OID 16538)
-- Name: contact_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.contact_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_contact_id_seq OWNER TO "user";

--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 229
-- Name: contact_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.contact_contact_id_seq OWNED BY public.contact_contact.id;


--
-- TOC entry 228 (class 1259 OID 16509)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO "user";

--
-- TOC entry 227 (class 1259 OID 16508)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO "user";

--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 227
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 214 (class 1259 OID 16402)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO "user";

--
-- TOC entry 213 (class 1259 OID 16401)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO "user";

--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 213
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 210 (class 1259 OID 16386)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO "user";

--
-- TOC entry 209 (class 1259 OID 16385)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO "user";

--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 237 (class 1259 OID 16582)
-- Name: django_session; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO "user";

--
-- TOC entry 234 (class 1259 OID 16553)
-- Name: projects_project; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.projects_project (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    link character varying(250) NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.projects_project OWNER TO "user";

--
-- TOC entry 233 (class 1259 OID 16552)
-- Name: projects_project_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.projects_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_project_id_seq OWNER TO "user";

--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 233
-- Name: projects_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.projects_project_id_seq OWNED BY public.projects_project.id;


--
-- TOC entry 236 (class 1259 OID 16562)
-- Name: projects_project_tags; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.projects_project_tags (
    id bigint NOT NULL,
    project_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE public.projects_project_tags OWNER TO "user";

--
-- TOC entry 235 (class 1259 OID 16561)
-- Name: projects_project_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.projects_project_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_project_tags_id_seq OWNER TO "user";

--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 235
-- Name: projects_project_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.projects_project_tags_id_seq OWNED BY public.projects_project_tags.id;


--
-- TOC entry 232 (class 1259 OID 16546)
-- Name: projects_tag; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.projects_tag (
    id bigint NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.projects_tag OWNER TO "user";

--
-- TOC entry 231 (class 1259 OID 16545)
-- Name: projects_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.projects_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_tag_id_seq OWNER TO "user";

--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 231
-- Name: projects_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.projects_tag_id_seq OWNED BY public.projects_tag.id;


--
-- TOC entry 239 (class 1259 OID 16592)
-- Name: technologies_technology; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.technologies_technology (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(100) NOT NULL
);


ALTER TABLE public.technologies_technology OWNER TO "user";

--
-- TOC entry 238 (class 1259 OID 16591)
-- Name: technologies_technology_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.technologies_technology_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.technologies_technology_id_seq OWNER TO "user";

--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 238
-- Name: technologies_technology_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.technologies_technology_id_seq OWNED BY public.technologies_technology.id;


--
-- TOC entry 3242 (class 2604 OID 16398)
-- Name: about_about id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.about_about ALTER COLUMN id SET DEFAULT nextval('public.about_about_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 16421)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3246 (class 2604 OID 16430)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 16414)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3247 (class 2604 OID 16437)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3248 (class 2604 OID 16446)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3249 (class 2604 OID 16453)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3252 (class 2604 OID 16542)
-- Name: contact_contact id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.contact_contact ALTER COLUMN id SET DEFAULT nextval('public.contact_contact_id_seq'::regclass);


--
-- TOC entry 3250 (class 2604 OID 16512)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3243 (class 2604 OID 16405)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 16389)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3254 (class 2604 OID 16556)
-- Name: projects_project id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.projects_project ALTER COLUMN id SET DEFAULT nextval('public.projects_project_id_seq'::regclass);


--
-- TOC entry 3255 (class 2604 OID 16565)
-- Name: projects_project_tags id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.projects_project_tags ALTER COLUMN id SET DEFAULT nextval('public.projects_project_tags_id_seq'::regclass);


--
-- TOC entry 3253 (class 2604 OID 16549)
-- Name: projects_tag id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.projects_tag ALTER COLUMN id SET DEFAULT nextval('public.projects_tag_id_seq'::regclass);


--
-- TOC entry 3256 (class 2604 OID 16595)
-- Name: technologies_technology id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.technologies_technology ALTER COLUMN id SET DEFAULT nextval('public.technologies_technology_id_seq'::regclass);


--
-- TOC entry 3473 (class 0 OID 16395)
-- Dependencies: 212
-- Data for Name: about_about; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.about_about (id, title, description, icon) FROM stdin;
1	Dowolny Nadruk	Każde pudełklo może mieć dowolny nadruk według Twojego projektu, nie tylko na zewnątrz, ale również w środku.	@
2	Dowolna konfiguracja	Nasze produkty wykonujemy w różnych rozmiarach, wersjach, konfiguracjach. Sam określasz, co Ci jest potrzebne.	@
3	Efektowne wykończenie	To jest to czym wyróżniamy Twoje pudełka, umiejętne dobranie rodzaju folii, czy lakieru UV,  gwarantuje wyjątkowy charakter ozdabianego opakowania.	@
\.


--
-- TOC entry 3479 (class 0 OID 16418)
-- Dependencies: 218
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3481 (class 0 OID 16427)
-- Dependencies: 220
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3477 (class 0 OID 16411)
-- Dependencies: 216
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add About	7	add_about
26	Can change About	7	change_about
27	Can delete About	7	delete_about
28	Can view About	7	view_about
29	Can add tag	8	add_tag
30	Can change tag	8	change_tag
31	Can delete tag	8	delete_tag
32	Can view tag	8	view_tag
33	Can add project	9	add_project
34	Can change project	9	change_project
35	Can delete project	9	delete_project
36	Can view project	9	view_project
37	Can add Technology	10	add_technology
38	Can change Technology	10	change_technology
39	Can delete Technology	10	delete_technology
40	Can view Technology	10	view_technology
41	Can add Contact	11	add_contact
42	Can change Contact	11	change_contact
43	Can delete Contact	11	delete_contact
44	Can view Contact	11	view_contact
\.


--
-- TOC entry 3483 (class 0 OID 16434)
-- Dependencies: 222
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$Wpu3o7gCfcXNrJldXk7dqB$vUsGn89wBL6V/7TPfVq2jFv7wQ74HzCTcpyUJc0T6X8=	2023-06-19 15:54:40.732141+00	t	admin			admin@opakowaniareklamowe.pl	t	t	2023-06-19 15:54:22.637437+00
\.


--
-- TOC entry 3485 (class 0 OID 16443)
-- Dependencies: 224
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3487 (class 0 OID 16450)
-- Dependencies: 226
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3491 (class 0 OID 16539)
-- Dependencies: 230
-- Data for Name: contact_contact; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.contact_contact (id, address, email, latitude, longitude) FROM stdin;
1	M. Płażyńskiego 6	kontakt@opakowaniareklamowe.pl	54.244300	18.841900
\.


--
-- TOC entry 3489 (class 0 OID 16509)
-- Dependencies: 228
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-06-19 15:55:32.710957+00	1	kontakt@opakowaniareklamowe.pl	1	[{"added": {}}]	11	1
2	2023-06-19 15:56:14.16993+00	1	kontakt@opakowaniareklamowe.pl	2	[{"changed": {"fields": ["Latitude"]}}]	11	1
3	2023-06-19 15:56:32.351541+00	1	kontakt@opakowaniareklamowe.pl	2	[{"changed": {"fields": ["Longitude"]}}]	11	1
4	2023-06-19 15:56:53.449807+00	1	kontakt@opakowaniareklamowe.pl	2	[{"changed": {"fields": ["Longitude"]}}]	11	1
5	2023-06-19 15:57:07.808531+00	1	kontakt@opakowaniareklamowe.pl	2	[{"changed": {"fields": ["Longitude"]}}]	11	1
6	2023-06-19 15:57:23.803856+00	1	kontakt@opakowaniareklamowe.pl	2	[{"changed": {"fields": ["Longitude"]}}]	11	1
7	2023-06-19 15:57:37.577466+00	1	kontakt@opakowaniareklamowe.pl	2	[{"changed": {"fields": ["Longitude"]}}]	11	1
8	2023-06-19 15:57:55.31854+00	1	kontakt@opakowaniareklamowe.pl	2	[{"changed": {"fields": ["Longitude"]}}]	11	1
9	2023-06-19 15:58:19.242698+00	1	kontakt@opakowaniareklamowe.pl	2	[{"changed": {"fields": ["Longitude"]}}]	11	1
10	2023-06-19 15:58:42.430493+00	1	kontakt@opakowaniareklamowe.pl	2	[{"changed": {"fields": ["Latitude"]}}]	11	1
11	2023-06-19 16:03:27.069907+00	1	Dowolny Nadruk	1	[{"added": {}}]	7	1
12	2023-06-19 16:03:38.431068+00	2	Dowolna konfiguracja	1	[{"added": {}}]	7	1
13	2023-06-19 16:03:54.109575+00	3	Efektowne wykończenie	1	[{"added": {}}]	7	1
14	2023-06-19 16:05:30.260384+00	1	home	1	[{"added": {}}]	8	1
15	2023-06-19 16:06:13.989504+00	1	Pudełka Denko-Wieko	1	[{"added": {}}]	9	1
16	2023-06-19 16:07:43.870059+00	1	Pudełka dwuczęściowe	2	[{"changed": {"fields": ["Name", "Description"]}}]	9	1
17	2023-06-19 16:08:11.630171+00	1	Pudełka z wieczkiem	2	[{"changed": {"fields": ["Name"]}}]	9	1
18	2023-06-19 16:08:55.564996+00	2	Pudełka zamykane na magnes	1	[{"added": {}}]	9	1
19	2023-06-19 16:09:11.126902+00	3	Wzorniki	1	[{"added": {}}]	9	1
\.


--
-- TOC entry 3475 (class 0 OID 16402)
-- Dependencies: 214
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	about	about
8	projects	tag
9	projects	project
10	technologies	technology
11	contact	contact
\.


--
-- TOC entry 3471 (class 0 OID 16386)
-- Dependencies: 210
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	about	0001_initial	2023-06-06 06:50:54.044534+00
2	contenttypes	0001_initial	2023-06-06 06:50:54.062511+00
3	auth	0001_initial	2023-06-06 06:50:54.230814+00
4	admin	0001_initial	2023-06-06 06:50:54.280179+00
5	admin	0002_logentry_remove_auto_add	2023-06-06 06:50:54.299598+00
6	admin	0003_logentry_add_action_flag_choices	2023-06-06 06:50:54.314658+00
7	contenttypes	0002_remove_content_type_name	2023-06-06 06:50:54.342152+00
8	auth	0002_alter_permission_name_max_length	2023-06-06 06:50:54.354516+00
9	auth	0003_alter_user_email_max_length	2023-06-06 06:50:54.366323+00
10	auth	0004_alter_user_username_opts	2023-06-06 06:50:54.376876+00
11	auth	0005_alter_user_last_login_null	2023-06-06 06:50:54.388947+00
12	auth	0006_require_contenttypes_0002	2023-06-06 06:50:54.395875+00
13	auth	0007_alter_validators_add_error_messages	2023-06-06 06:50:54.408704+00
14	auth	0008_alter_user_username_max_length	2023-06-06 06:50:54.430083+00
15	auth	0009_alter_user_last_name_max_length	2023-06-06 06:50:54.442266+00
16	auth	0010_alter_group_name_max_length	2023-06-06 06:50:54.454858+00
17	auth	0011_update_proxy_permissions	2023-06-06 06:50:54.468609+00
18	auth	0012_alter_user_first_name_max_length	2023-06-06 06:50:54.479922+00
19	contact	0001_initial	2023-06-06 06:50:54.492068+00
20	projects	0001_initial	2023-06-06 06:50:54.559728+00
21	sessions	0001_initial	2023-06-06 06:50:54.592297+00
22	technologies	0001_initial	2023-06-06 06:50:54.608299+00
\.


--
-- TOC entry 3498 (class 0 OID 16582)
-- Dependencies: 237
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
sjdfkv92ayc2xjyjd5tnhx9bjezqv04r	.eJxVjEEOwiAQRe_C2hA6gIwu3fcMBJhBqgaS0q6MdzckXej2v_f-W_iwb8XvnVe_kLiKSZx-txjSk-sA9Aj13mRqdVuXKIciD9rl3Ihft8P9Oyihl1Erzk65kJ2-sI7Ogp00smHU2WZgbQiJrUmMQJASYgSI4MCpxGdC8fkC6rk4FQ:1qBHDE:vUy2838jcNLDEKnbpsVap608unzCQjcAq3_S28sGzQ0	2023-07-03 15:54:40.741244+00
\.


--
-- TOC entry 3495 (class 0 OID 16553)
-- Dependencies: 234
-- Data for Name: projects_project; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.projects_project (id, name, description, link, image) FROM stdin;
1	Pudełka z wieczkiem	Pudełka Denko-Wieko	www	images/OPAKOWANIA_REKLAMOWE_PL_001_220701_keenys_025_9y2znNc.jpg
2	Pudełka zamykane na magnes	Pudełka z klapką, z zamknięciem na magnes	www	images/OPAKOWANIA_REKLAMOWE_PL_001_220701_keenys_031_wybrane_NuAlc5Y.jpg
3	Wzorniki	Skrzydłowe, bądź w formie pudełka	www	images/keenys_057_wybrane_ZKeu9Dw.jpg
\.


--
-- TOC entry 3497 (class 0 OID 16562)
-- Dependencies: 236
-- Data for Name: projects_project_tags; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.projects_project_tags (id, project_id, tag_id) FROM stdin;
1	1	1
2	2	1
3	3	1
\.


--
-- TOC entry 3493 (class 0 OID 16546)
-- Dependencies: 232
-- Data for Name: projects_tag; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.projects_tag (id, name) FROM stdin;
1	home
\.


--
-- TOC entry 3500 (class 0 OID 16592)
-- Dependencies: 239
-- Data for Name: technologies_technology; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.technologies_technology (id, name, icon) FROM stdin;
\.


--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 211
-- Name: about_about_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.about_about_id_seq', 3, true);


--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 229
-- Name: contact_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.contact_contact_id_seq', 1, true);


--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 227
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 19, true);


--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 213
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 233
-- Name: projects_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.projects_project_id_seq', 3, true);


--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 235
-- Name: projects_project_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.projects_project_tags_id_seq', 3, true);


--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 231
-- Name: projects_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.projects_tag_id_seq', 1, true);


--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 238
-- Name: technologies_technology_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.technologies_technology_id_seq', 1, false);


--
-- TOC entry 3260 (class 2606 OID 16400)
-- Name: about_about about_about_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.about_about
    ADD CONSTRAINT about_about_pkey PRIMARY KEY (id);


--
-- TOC entry 3272 (class 2606 OID 16536)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3277 (class 2606 OID 16466)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3280 (class 2606 OID 16432)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3274 (class 2606 OID 16423)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 16457)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3269 (class 2606 OID 16416)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3288 (class 2606 OID 16448)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3291 (class 2606 OID 16481)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3282 (class 2606 OID 16439)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3294 (class 2606 OID 16455)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3297 (class 2606 OID 16495)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3285 (class 2606 OID 16531)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3303 (class 2606 OID 16544)
-- Name: contact_contact contact_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.contact_contact
    ADD CONSTRAINT contact_contact_pkey PRIMARY KEY (id);


--
-- TOC entry 3300 (class 2606 OID 16517)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3262 (class 2606 OID 16409)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3264 (class 2606 OID 16407)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3258 (class 2606 OID 16393)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3316 (class 2606 OID 16588)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3307 (class 2606 OID 16560)
-- Name: projects_project projects_project_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.projects_project
    ADD CONSTRAINT projects_project_pkey PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 16567)
-- Name: projects_project_tags projects_project_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.projects_project_tags
    ADD CONSTRAINT projects_project_tags_pkey PRIMARY KEY (id);


--
-- TOC entry 3312 (class 2606 OID 16569)
-- Name: projects_project_tags projects_project_tags_project_id_tag_id_5891719a_uniq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.projects_project_tags
    ADD CONSTRAINT projects_project_tags_project_id_tag_id_5891719a_uniq UNIQUE (project_id, tag_id);


--
-- TOC entry 3305 (class 2606 OID 16551)
-- Name: projects_tag projects_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.projects_tag
    ADD CONSTRAINT projects_tag_pkey PRIMARY KEY (id);


--
-- TOC entry 3319 (class 2606 OID 16597)
-- Name: technologies_technology technologies_technology_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.technologies_technology
    ADD CONSTRAINT technologies_technology_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 1259 OID 16537)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3275 (class 1259 OID 16477)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3278 (class 1259 OID 16478)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3265 (class 1259 OID 16463)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3286 (class 1259 OID 16493)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3289 (class 1259 OID 16492)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3292 (class 1259 OID 16507)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3295 (class 1259 OID 16506)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3283 (class 1259 OID 16532)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3298 (class 1259 OID 16528)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3301 (class 1259 OID 16529)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3314 (class 1259 OID 16590)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3317 (class 1259 OID 16589)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3310 (class 1259 OID 16580)
-- Name: projects_project_tags_project_id_9bbfa17b; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX projects_project_tags_project_id_9bbfa17b ON public.projects_project_tags USING btree (project_id);


--
-- TOC entry 3313 (class 1259 OID 16581)
-- Name: projects_project_tags_tag_id_c949773d; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX projects_project_tags_tag_id_c949773d ON public.projects_project_tags USING btree (tag_id);


--
-- TOC entry 3322 (class 2606 OID 16472)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3321 (class 2606 OID 16467)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3320 (class 2606 OID 16458)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3324 (class 2606 OID 16487)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3323 (class 2606 OID 16482)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3326 (class 2606 OID 16501)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3325 (class 2606 OID 16496)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3327 (class 2606 OID 16518)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3328 (class 2606 OID 16523)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3329 (class 2606 OID 16570)
-- Name: projects_project_tags projects_project_tag_project_id_9bbfa17b_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.projects_project_tags
    ADD CONSTRAINT projects_project_tag_project_id_9bbfa17b_fk_projects_ FOREIGN KEY (project_id) REFERENCES public.projects_project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3330 (class 2606 OID 16575)
-- Name: projects_project_tags projects_project_tags_tag_id_c949773d_fk_projects_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.projects_project_tags
    ADD CONSTRAINT projects_project_tags_tag_id_c949773d_fk_projects_tag_id FOREIGN KEY (tag_id) REFERENCES public.projects_tag(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2023-06-19 17:00:20 UTC

--
-- PostgreSQL database dump complete
--

