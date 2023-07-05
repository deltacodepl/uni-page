--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.7

-- Started on 2023-07-05 09:50:24 UTC

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
-- TOC entry 3481 (class 0 OID 16395)
-- Dependencies: 212
-- Data for Name: about_about; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.about_about (id, title, description, icon) FROM stdin;
1	Dowolny Nadruk	Każde pudełklo może mieć dowolny nadruk według Twojego projektu, nie tylko na zewnątrz, ale również w środku.	images/color-scheme.png
2	Dowolna konfiguracja	Nasze produkty wykonujemy w różnych rozmiarach, wersjach, konfiguracjach. Sam określasz, co Ci jest potrzebne.	images/dimensions.png
3	Efektowne wykończenie	To jest to czym wyróżniamy Twoje pudełka, umiejętne dobranie rodzaju folii, czy lakieru UV,  gwarantuje wyjątkowy charakter ozdabianego opakowania.	images/stars.png
\.


--
-- TOC entry 3487 (class 0 OID 16418)
-- Dependencies: 218
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3489 (class 0 OID 16427)
-- Dependencies: 220
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3485 (class 0 OID 16411)
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
45	Can add Inquiry	12	add_inquiry
46	Can change Inquiry	12	change_inquiry
47	Can delete Inquiry	12	delete_inquiry
48	Can view Inquiry	12	view_inquiry
\.


--
-- TOC entry 3491 (class 0 OID 16434)
-- Dependencies: 222
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
7	pbkdf2_sha256$260000$33951YYUujuzUie1JZJWv1$8F+ce0jdDwDBAaCgkpnrBuzoZ/VWqaVSMeiLFzU4lYI=	2023-07-05 08:35:09.179124+00	t	admin			hello@retryjoin.pl	t	t	2023-07-05 08:20:35.862279+00
\.


--
-- TOC entry 3493 (class 0 OID 16443)
-- Dependencies: 224
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3495 (class 0 OID 16450)
-- Dependencies: 226
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3499 (class 0 OID 16539)
-- Dependencies: 230
-- Data for Name: contact_contact; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.contact_contact (id, address, email, latitude, longitude) FROM stdin;
1	Cedry Wielkie, M. Płażyńskiego 6	kontakt@opakowaniareklamowe.pl	54.244300	18.841900
\.


--
-- TOC entry 3497 (class 0 OID 16509)
-- Dependencies: 228
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3483 (class 0 OID 16402)
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
12	inquiry	inquiry
\.


--
-- TOC entry 3479 (class 0 OID 16386)
-- Dependencies: 210
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	about	0001_initial	2023-06-29 09:03:00.998475+00
2	contenttypes	0001_initial	2023-06-29 09:03:01.018961+00
3	auth	0001_initial	2023-06-29 09:03:01.173899+00
4	admin	0001_initial	2023-06-29 09:03:01.243375+00
5	admin	0002_logentry_remove_auto_add	2023-06-29 09:03:01.260052+00
6	admin	0003_logentry_add_action_flag_choices	2023-06-29 09:03:01.27814+00
7	contenttypes	0002_remove_content_type_name	2023-06-29 09:03:01.309397+00
8	auth	0002_alter_permission_name_max_length	2023-06-29 09:03:01.32773+00
9	auth	0003_alter_user_email_max_length	2023-06-29 09:03:01.347208+00
10	auth	0004_alter_user_username_opts	2023-06-29 09:03:01.364709+00
11	auth	0005_alter_user_last_login_null	2023-06-29 09:03:01.381369+00
12	auth	0006_require_contenttypes_0002	2023-06-29 09:03:01.384617+00
13	auth	0007_alter_validators_add_error_messages	2023-06-29 09:03:01.396199+00
14	auth	0008_alter_user_username_max_length	2023-06-29 09:03:01.419532+00
15	auth	0009_alter_user_last_name_max_length	2023-06-29 09:03:01.43644+00
16	auth	0010_alter_group_name_max_length	2023-06-29 09:03:01.452606+00
17	auth	0011_update_proxy_permissions	2023-06-29 09:03:01.46381+00
18	auth	0012_alter_user_first_name_max_length	2023-06-29 09:03:01.480485+00
19	contact	0001_initial	2023-06-29 09:03:01.490794+00
20	inquiry	0001_initial	2023-06-29 09:03:01.507625+00
21	projects	0001_initial	2023-06-29 09:03:01.555699+00
22	sessions	0001_initial	2023-06-29 09:03:01.583636+00
23	technologies	0001_initial	2023-06-29 09:03:01.595179+00
24	inquiry	0002_alter_inquiry_box_dimensions	2023-06-30 10:15:02.410483+00
25	technologies	0002_auto_20230702_1750	2023-07-02 17:50:57.209193+00
26	technologies	0003_auto_20230703_1135	2023-07-03 11:35:43.65611+00
27	technologies	0004_alter_technology_options	2023-07-04 10:36:03.395929+00
28	about	0002_alter_about_icon	2023-07-04 17:37:19.982549+00
29	technologies	0005_alter_technology_options	2023-07-04 17:37:19.991049+00
30	inquiry	0003_inquiry_message	2023-07-05 08:20:34.936532+00
\.


--
-- TOC entry 3508 (class 0 OID 16591)
-- Dependencies: 239
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
w1barjln4wtnl4jqgv0xl9snoultwlr9	.eJxVjMsOwiAQRf-FtSFAebp07zeQYQakaiAp7cr479qkC93ec859sQjbWuM28hJnYmfm2Ol3S4CP3HZAd2i3zrG3dZkT3xV-0MGvnfLzcrh_BxVG_daKQMggldJ2Ugi2oNOBjCBwIeWitSHrlSyhmCkL59EqLMmgRCM9JmTvD9inOAU:1qGxyf:UfOJ3epos85ZBncJMfWzDXn3rDFaGk8ZIjlw5YPe2DY	2023-07-19 08:35:09.188222+00
\.


--
-- TOC entry 3505 (class 0 OID 16562)
-- Dependencies: 236
-- Data for Name: projects_project; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.projects_project (id, name, description, link, image) FROM stdin;
1	Pudełka z wieczkiem	Pudełka dwuczęściowe	www	images/OPAKOWANIA_REKLAMOWE_PL_001_220701_keenys_025_o91pzUp.jpg
2	Pudełka zamykane na magnes	Pudełka z klapką, z zamknięciem na magnes	www	images/OPAKOWANIA_REKLAMOWE_PL_001_220701_keenys_031_wybrane_Z4V2PyI.jpg
3	Wzorniki	Skrzydłowe, bądź w formie pudełka	www	images/keenys_057_wybrane_9dVmNQ0.jpg
\.


--
-- TOC entry 3507 (class 0 OID 16571)
-- Dependencies: 238
-- Data for Name: projects_project_tags; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.projects_project_tags (id, project_id, tag_id) FROM stdin;
1	1	1
2	2	1
3	3	1
\.


--
-- TOC entry 3503 (class 0 OID 16555)
-- Dependencies: 234
-- Data for Name: projects_tag; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.projects_tag (id, name) FROM stdin;
1	Wzorniki
\.


--
-- TOC entry 3510 (class 0 OID 16601)
-- Dependencies: 241
-- Data for Name: technologies_technology; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.technologies_technology (id, name, image, cols, rows) FROM stdin;
1	Moderna	images/moderna_0zmQGC0.jpg	2	2
4	Pudełka zamykane na magnes	images/hoya_110HyJ4.jpg	2	1
2	Pudełka z wieczkiem	images/france_8Hnm9Ap.jpg	1	1
3	Pudełka z wieczkiem	images/kluudi_YeqHlVj.jpg	1	1
\.


--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 211
-- Name: about_about_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.about_about_id_seq', 3, true);


--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);


--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 229
-- Name: contact_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.contact_contact_id_seq', 1, true);


--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 227
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 42, true);


--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 213
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);


--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 231
-- Name: inquiry_inquiry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.inquiry_inquiry_id_seq', 1, true);


--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 235
-- Name: projects_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.projects_project_id_seq', 3, true);


--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 237
-- Name: projects_project_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.projects_project_tags_id_seq', 3, true);


--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 233
-- Name: projects_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.projects_tag_id_seq', 1, true);


--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 240
-- Name: technologies_technology_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.technologies_technology_id_seq', 4, true);


-- Completed on 2023-07-05 09:50:24 UTC

--
-- PostgreSQL database dump complete
--

