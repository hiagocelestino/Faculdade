--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11 (Ubuntu 12.11-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)

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
-- Name: tp2; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tp2;


ALTER SCHEMA tp2 OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: despesa; Type: TABLE; Schema: tp2; Owner: postgres
--

CREATE TABLE tp2.despesa (
    id_despesa integer NOT NULL,
    vlr_despesa integer,
    dat_compra date,
    id_item integer
);


ALTER TABLE tp2.despesa OWNER TO postgres;

--
-- Name: despesa_id_despesa_seq; Type: SEQUENCE; Schema: tp2; Owner: postgres
--

CREATE SEQUENCE tp2.despesa_id_despesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tp2.despesa_id_despesa_seq OWNER TO postgres;

--
-- Name: despesa_id_despesa_seq; Type: SEQUENCE OWNED BY; Schema: tp2; Owner: postgres
--

ALTER SEQUENCE tp2.despesa_id_despesa_seq OWNED BY tp2.despesa.id_despesa;


--
-- Name: item; Type: TABLE; Schema: tp2; Owner: postgres
--

CREATE TABLE tp2.item (
    id_item integer NOT NULL,
    nom_item character varying(255),
    id_natureza integer
);


ALTER TABLE tp2.item OWNER TO postgres;

--
-- Name: item_id_item_seq; Type: SEQUENCE; Schema: tp2; Owner: postgres
--

CREATE SEQUENCE tp2.item_id_item_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tp2.item_id_item_seq OWNER TO postgres;

--
-- Name: item_id_item_seq; Type: SEQUENCE OWNED BY; Schema: tp2; Owner: postgres
--

ALTER SEQUENCE tp2.item_id_item_seq OWNED BY tp2.item.id_item;


--
-- Name: natureza; Type: TABLE; Schema: tp2; Owner: postgres
--

CREATE TABLE tp2.natureza (
    id_natureza integer NOT NULL,
    nom_natureza character varying(255)
);


ALTER TABLE tp2.natureza OWNER TO postgres;

--
-- Name: natureza_id_natureza_seq; Type: SEQUENCE; Schema: tp2; Owner: postgres
--

CREATE SEQUENCE tp2.natureza_id_natureza_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tp2.natureza_id_natureza_seq OWNER TO postgres;

--
-- Name: natureza_id_natureza_seq; Type: SEQUENCE OWNED BY; Schema: tp2; Owner: postgres
--

ALTER SEQUENCE tp2.natureza_id_natureza_seq OWNED BY tp2.natureza.id_natureza;


--
-- Name: partido; Type: TABLE; Schema: tp2; Owner: postgres
--

CREATE TABLE tp2.partido (
    id_partido integer NOT NULL,
    nom_partido character varying(255),
    sigla character varying(255)
);


ALTER TABLE tp2.partido OWNER TO postgres;

--
-- Name: partido_id_partido_seq; Type: SEQUENCE; Schema: tp2; Owner: postgres
--

CREATE SEQUENCE tp2.partido_id_partido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tp2.partido_id_partido_seq OWNER TO postgres;

--
-- Name: partido_id_partido_seq; Type: SEQUENCE OWNED BY; Schema: tp2; Owner: postgres
--

ALTER SEQUENCE tp2.partido_id_partido_seq OWNED BY tp2.partido.id_partido;


--
-- Name: partido_presidente; Type: TABLE; Schema: tp2; Owner: postgres
--

CREATE TABLE tp2.partido_presidente (
    id_partido_presidente integer NOT NULL,
    id_partido integer,
    id_presidente integer,
    id_despesa integer
);


ALTER TABLE tp2.partido_presidente OWNER TO postgres;

--
-- Name: partido_presidente_id_partido_presidente_seq; Type: SEQUENCE; Schema: tp2; Owner: postgres
--

CREATE SEQUENCE tp2.partido_presidente_id_partido_presidente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tp2.partido_presidente_id_partido_presidente_seq OWNER TO postgres;

--
-- Name: partido_presidente_id_partido_presidente_seq; Type: SEQUENCE OWNED BY; Schema: tp2; Owner: postgres
--

ALTER SEQUENCE tp2.partido_presidente_id_partido_presidente_seq OWNED BY tp2.partido_presidente.id_partido_presidente;


--
-- Name: presidente; Type: TABLE; Schema: tp2; Owner: postgres
--

CREATE TABLE tp2.presidente (
    id_presidente integer NOT NULL,
    nom_presidente character varying(255),
    num_mandato character varying(255)
);


ALTER TABLE tp2.presidente OWNER TO postgres;

--
-- Name: presidente_id_presidente_seq; Type: SEQUENCE; Schema: tp2; Owner: postgres
--

CREATE SEQUENCE tp2.presidente_id_presidente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tp2.presidente_id_presidente_seq OWNER TO postgres;

--
-- Name: presidente_id_presidente_seq; Type: SEQUENCE OWNED BY; Schema: tp2; Owner: postgres
--

ALTER SEQUENCE tp2.presidente_id_presidente_seq OWNED BY tp2.presidente.id_presidente;


--
-- Name: despesa id_despesa; Type: DEFAULT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.despesa ALTER COLUMN id_despesa SET DEFAULT nextval('tp2.despesa_id_despesa_seq'::regclass);


--
-- Name: item id_item; Type: DEFAULT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.item ALTER COLUMN id_item SET DEFAULT nextval('tp2.item_id_item_seq'::regclass);


--
-- Name: natureza id_natureza; Type: DEFAULT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.natureza ALTER COLUMN id_natureza SET DEFAULT nextval('tp2.natureza_id_natureza_seq'::regclass);


--
-- Name: partido id_partido; Type: DEFAULT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.partido ALTER COLUMN id_partido SET DEFAULT nextval('tp2.partido_id_partido_seq'::regclass);


--
-- Name: partido_presidente id_partido_presidente; Type: DEFAULT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.partido_presidente ALTER COLUMN id_partido_presidente SET DEFAULT nextval('tp2.partido_presidente_id_partido_presidente_seq'::regclass);


--
-- Name: presidente id_presidente; Type: DEFAULT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.presidente ALTER COLUMN id_presidente SET DEFAULT nextval('tp2.presidente_id_presidente_seq'::regclass);


--
-- Data for Name: despesa; Type: TABLE DATA; Schema: tp2; Owner: postgres
--

COPY tp2.despesa (id_despesa, vlr_despesa, dat_compra, id_item) FROM stdin;
259	341	2022-01-04	1
260	824	2022-01-04	6
261	1052	2022-01-04	6
262	2877	2022-01-04	11
263	1145	2022-01-04	11
174	7026	2022-02-03	8
175	15415	2022-02-03	8
176	5222	2022-02-03	8
177	2403	2022-02-03	8
178	184	2022-03-03	1
179	1271	2022-03-03	11
180	395	2022-03-03	1
181	1246	2022-03-03	9
182	566	2022-04-03	1
183	432	2022-04-03	7
184	1380	2022-04-03	7
185	967	2022-04-03	1
186	102	2022-04-03	1
187	1476	2022-07-03	12
53	1824	2022-08-02	1
54	156	2022-08-02	5
55	312	2022-08-02	5
56	78	2022-08-02	5
57	78	2022-08-02	5
58	156	2022-08-02	5
59	78	2022-08-02	5
188	1968	2022-08-03	1
264	156	2022-08-04	5
265	234	2022-08-04	5
266	156	2022-08-04	5
267	156	2022-08-04	5
268	17410	2022-08-04	8
269	39314	2022-08-04	8
270	28126	2022-08-04	8
271	5490	2022-08-04	8
272	1198	2022-08-04	1
273	702	2022-08-04	1
274	446	2022-08-04	1
60	1637	2022-09-02	1
189	800	2022-09-03	12
1	2377	2022-10-01	4
2	1404	2022-10-01	4
3	1297	2022-10-01	4
4	70	2022-10-01	7
9	2378	2023-10-01	4
10	1405	2023-10-01	4
11	1298	2023-10-01	4
12	71	2023-10-01	7
17	2379	2024-10-01	4
18	1406	2024-10-01	4
19	1299	2024-10-01	4
20	72	2024-10-01	7
25	2380	2025-10-01	4
26	1407	2025-10-01	4
27	1300	2025-10-01	4
28	73	2025-10-01	7
33	2381	2026-10-01	4
34	1408	2026-10-01	4
35	1301	2026-10-01	4
36	74	2026-10-01	7
41	2382	2027-10-01	4
42	1409	2027-10-01	4
43	1302	2027-10-01	4
44	75	2027-10-01	7
49	2383	2028-10-01	4
50	1410	2028-10-01	4
51	1303	2028-10-01	4
52	76	2028-10-01	7
61	150	2022-10-02	6
62	150	2022-10-02	6
63	150	2022-10-02	6
64	150	2022-10-02	6
65	150	2022-10-02	6
66	150	2022-10-02	6
67	265	2022-10-02	1
68	368	2022-10-02	1
69	1548	2022-10-02	1
70	265	2022-10-02	1
71	150	2022-10-02	6
72	150	2022-10-02	6
73	150	2022-10-02	6
74	150	2022-10-02	6
75	150	2022-10-02	6
76	150	2022-10-02	6
77	150	2022-10-02	6
78	150	2022-10-02	6
79	150	2022-10-02	6
80	150	2022-10-02	6
81	150	2022-10-02	6
82	150	2022-10-02	6
83	150	2022-10-02	6
84	150	2022-10-02	6
85	150	2022-10-02	6
86	150	2022-10-02	6
87	150	2022-10-02	6
88	150	2022-10-02	6
89	150	2022-10-02	6
90	150	2022-10-02	6
91	150	2022-10-02	6
92	150	2022-10-02	6
93	150	2022-10-02	6
94	150	2022-10-02	6
95	150	2022-10-02	6
96	150	2022-10-02	6
97	150	2022-10-02	6
98	150	2022-10-02	6
99	150	2022-10-02	6
100	150	2022-10-02	6
101	150	2022-10-02	6
102	150	2022-10-02	6
103	150	2022-10-02	6
104	150	2022-10-02	6
105	150	2022-10-02	6
106	150	2022-10-02	6
107	150	2022-10-02	6
108	150	2022-10-02	6
109	150	2022-10-02	6
110	150	2022-10-02	6
111	150	2022-10-02	6
112	150	2022-10-02	6
113	150	2022-10-02	6
114	150	2022-10-02	6
115	150	2022-10-02	6
116	150	2022-10-02	6
117	150	2022-10-02	6
118	150	2022-10-02	6
119	150	2022-10-02	6
120	150	2022-10-02	6
121	150	2022-10-02	6
122	150	2022-10-02	6
123	150	2022-10-02	6
124	150	2022-10-02	6
125	150	2022-10-02	6
126	150	2022-10-02	6
127	150	2022-10-02	6
128	150	2022-10-02	6
129	150	2022-10-02	6
130	150	2022-10-02	6
131	150	2022-10-02	6
132	150	2022-10-02	6
133	150	2022-10-02	6
134	150	2022-10-02	6
135	150	2022-10-02	6
136	150	2022-10-02	6
190	156	2022-10-03	5
191	312	2022-10-03	5
192	78	2022-10-03	5
193	78	2022-10-03	5
194	156	2022-10-03	5
195	78	2022-10-03	5
196	997	2022-10-03	1
197	713	2022-10-03	1
198	156	2022-10-03	5
199	312	2022-10-03	5
200	78	2022-10-03	5
201	78	2022-10-03	5
202	156	2022-10-03	5
203	78	2022-10-03	5
5	465	2022-11-01	11
6	177	2022-11-01	13
7	298	2022-11-01	13
8	88	2022-11-01	13
13	466	2023-11-01	11
14	178	2023-11-01	13
15	299	2023-11-01	13
16	89	2023-11-01	13
21	467	2024-11-01	11
22	179	2024-11-01	13
23	300	2024-11-01	13
24	90	2024-11-01	13
29	468	2025-11-01	11
30	180	2025-11-01	13
31	301	2025-11-01	13
32	91	2025-11-01	13
37	469	2026-11-01	11
38	181	2026-11-01	13
39	302	2026-11-01	13
40	92	2026-11-01	13
45	470	2027-11-01	11
46	182	2027-11-01	13
47	303	2027-11-01	13
48	93	2027-11-01	13
137	156	2022-11-02	5
138	312	2022-11-02	5
139	78	2022-11-02	5
140	78	2022-11-02	5
141	156	2022-11-02	5
142	78	2022-11-02	5
204	1601	2022-11-03	11
205	275	2022-11-03	11
206	266	2022-11-03	1
207	5523	2022-11-03	2
275	3379	2022-11-04	1
276	339	2023-01-04	1
143	3796	2023-02-02	11
144	398	2023-02-02	11
208	2701	2023-02-03	8
209	2067	2023-02-03	8
210	7978	2023-02-03	8
211	18682	2023-02-03	8
212	5750	2023-02-03	8
213	6099	2023-02-03	8
214	18811	2023-02-03	9
215	112	2023-02-03	1
216	52	2023-02-03	1
277	2430	2023-02-04	1
145	5407	2023-03-02	1
217	3044	2023-03-03	1
218	102	2023-03-03	1
146	2443	2023-04-02	1
219	797	2023-04-03	1
220	1153	2023-04-03	1
147	201	2023-05-02	1
148	2247	2023-05-02	1
221	1037	2023-05-03	4
149	6451	2023-06-02	8
150	30189	2023-06-02	8
151	5818	2023-06-02	8
152	3616	2023-06-02	8
153	13768	2023-06-02	9
222	2772	2023-06-03	4
223	1717	2023-06-03	4
278	2738	2023-06-04	1
154	4368	2023-09-02	4
224	18568	2023-09-03	2
155	1065	2023-10-02	6
156	3044	2023-10-02	6
157	189	2023-10-02	11
158	413	2023-10-02	1
159	65744	2023-10-02	10
160	52042	2023-10-02	10
161	51097	2023-10-02	10
162	65599	2023-10-02	10
163	47596	2023-10-02	10
164	58944	2023-10-02	10
225	1877	2023-10-03	14
226	1663	2023-10-03	4
165	475	2023-11-02	1
166	1376	2023-11-02	1
227	1596	2023-11-03	1
228	667	2023-11-03	1
229	2372	2023-11-03	1
167	160	2023-12-02	1
168	5447	2023-12-02	1
169	15137	2023-12-02	2
170	2430	2023-12-02	4
230	201	2023-12-03	1
231	1448	2023-12-03	1
171	201	2024-01-02	1
172	2101	2024-01-02	1
173	39017	2024-01-02	2
232	1189	2024-01-03	1
233	386	2024-01-03	1
234	6653	2024-01-03	1
279	1788	2024-01-04	1
280	5382	2024-01-04	2
281	4025	2024-02-04	1
282	1548	2024-02-04	1
283	4716	2024-02-04	1
284	5537	2024-02-04	2
285	402	2024-02-04	3
286	402	2024-02-04	3
287	402	2024-02-04	3
288	402	2024-02-04	3
289	402	2024-02-04	3
290	402	2024-02-04	3
291	4058	2024-03-04	11
292	1973	2024-03-04	11
293	93	2024-03-04	1
294	69806	2024-03-04	10
295	61257	2024-03-04	10
296	49951	2024-03-04	10
297	54246	2024-03-04	10
298	47055	2024-03-04	10
299	60425	2024-03-04	10
235	3154	2024-04-03	2
236	1944	2024-04-03	1
237	140	2024-04-03	1
238	9692	2024-04-03	8
239	8613	2024-04-03	8
240	11149	2024-04-03	8
241	1489	2024-04-03	8
242	17005	2024-04-03	9
243	16650	2024-04-03	9
244	14728	2024-04-03	9
300	1688	2024-04-04	1
301	21331	2024-04-04	8
302	15766	2024-04-04	8
245	1595	2024-05-03	2
246	2399	2024-05-03	6
247	69806	2024-05-03	10
248	54959	2024-05-03	10
249	49951	2024-05-03	10
250	54246	2024-05-03	10
251	46155	2024-05-03	10
252	57505	2024-05-03	10
303	1688	2024-05-04	1
253	2054	2024-06-03	11
254	1020	2024-06-03	11
255	909	2024-07-03	1
256	341	2024-07-03	1
257	1028	2024-07-03	1
258	713	2024-07-03	1
\.


--
-- Data for Name: item; Type: TABLE DATA; Schema: tp2; Owner: postgres
--

COPY tp2.item (id_item, nom_item, id_natureza) FROM stdin;
1	DIARIAS NO PAIS	1
2	DIARIAS NO EXTERIOR	1
3	TAXAS	3
4	COMBUSTIVEIS E LUBRIFICANTES AUTOMOTIVOS	2
5	SERVICOS DE TELECOMUNICACOES	4
6	SEGUROS EM GERAL	4
7	MANUTENCAO E CONSERV. DE VEICULOS	4
8	PASSAGENS PARA O PAIS	5
9	PASSAGENS PARA O EXTERIOR	5
10	GRATIFICACAO P/EXERCICIO DE CARGO EM COMISSAO	6
11	VALOR DE ESCAPE - SIAFIWEB	7
12	MATERIAL P/ MANUTENCAO DE VEICULOS	2
13	TELEFONIA FIXA E MOVEL - PACOTE DE COMUNICACAO DE DADOS	8
14	LOCACAO DE MEIOS DE TRANSPORTE	5
\.


--
-- Data for Name: natureza; Type: TABLE DATA; Schema: tp2; Owner: postgres
--

COPY tp2.natureza (id_natureza, nom_natureza) FROM stdin;
1	DIARIAS - PESSOAL CIVIL
2	MATERIAL DE CONSUMO
3	OBRIGACOES TRIBUTARIAS E CONTRIBUTIVAS
4	OUTROS SERVICOS DE TERCEIROS - PESSOA JURIDICA
5	PASSAGENS E DESPESAS COM LOCOMOCAO
6	VENCIMENTOS E VANTAGENS FIXAS - PESSOAL CIVIL
7	VALOR DE ESCAPE – SIAFIWEB
8	SERVICOS DE TECNOLOGIA DA INFORMACAO E COMUNICACAO – PJ
\.


--
-- Data for Name: partido; Type: TABLE DATA; Schema: tp2; Owner: postgres
--

COPY tp2.partido (id_partido, nom_partido, sigla) FROM stdin;
14	Partido Trabalhista Brasileiro	PTB
13	Partido dos Trabalhadores	PT
45	Partido da Social Democracia Brasileira	PDSB
15	Movimento Democrático Brasileiro	MDB
90	Partido Republicano da Ordem Social	PROS
\.


--
-- Data for Name: partido_presidente; Type: TABLE DATA; Schema: tp2; Owner: postgres
--

COPY tp2.partido_presidente (id_partido_presidente, id_partido, id_presidente, id_despesa) FROM stdin;
\.


--
-- Data for Name: presidente; Type: TABLE DATA; Schema: tp2; Owner: postgres
--

COPY tp2.presidente (id_presidente, nom_presidente, num_mandato) FROM stdin;
1	DILMA ROUSSEFF	2
2	FERNANDO COLLOR	1
3	FERNANDO HENRIQUE	2
4	JOSE SARNEY	1
5	LULA DA SILVA	2
6	MICHEL TEMER	1
\.


--
-- Name: despesa_id_despesa_seq; Type: SEQUENCE SET; Schema: tp2; Owner: postgres
--

SELECT pg_catalog.setval('tp2.despesa_id_despesa_seq', 1, false);


--
-- Name: item_id_item_seq; Type: SEQUENCE SET; Schema: tp2; Owner: postgres
--

SELECT pg_catalog.setval('tp2.item_id_item_seq', 1, false);


--
-- Name: natureza_id_natureza_seq; Type: SEQUENCE SET; Schema: tp2; Owner: postgres
--

SELECT pg_catalog.setval('tp2.natureza_id_natureza_seq', 1, false);


--
-- Name: partido_id_partido_seq; Type: SEQUENCE SET; Schema: tp2; Owner: postgres
--

SELECT pg_catalog.setval('tp2.partido_id_partido_seq', 1, false);


--
-- Name: partido_presidente_id_partido_presidente_seq; Type: SEQUENCE SET; Schema: tp2; Owner: postgres
--

SELECT pg_catalog.setval('tp2.partido_presidente_id_partido_presidente_seq', 1, true);


--
-- Name: presidente_id_presidente_seq; Type: SEQUENCE SET; Schema: tp2; Owner: postgres
--

SELECT pg_catalog.setval('tp2.presidente_id_presidente_seq', 1, false);


--
-- Name: despesa despesa_pkey; Type: CONSTRAINT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.despesa
    ADD CONSTRAINT despesa_pkey PRIMARY KEY (id_despesa);


--
-- Name: item item_pkey; Type: CONSTRAINT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id_item);


--
-- Name: natureza natureza_pkey; Type: CONSTRAINT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.natureza
    ADD CONSTRAINT natureza_pkey PRIMARY KEY (id_natureza);


--
-- Name: partido partido_pkey; Type: CONSTRAINT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.partido
    ADD CONSTRAINT partido_pkey PRIMARY KEY (id_partido);


--
-- Name: partido_presidente partido_presidente_pkey; Type: CONSTRAINT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.partido_presidente
    ADD CONSTRAINT partido_presidente_pkey PRIMARY KEY (id_partido_presidente);


--
-- Name: presidente presidente_pkey; Type: CONSTRAINT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.presidente
    ADD CONSTRAINT presidente_pkey PRIMARY KEY (id_presidente);


--
-- Name: despesa despesa_id_item_fkey; Type: FK CONSTRAINT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.despesa
    ADD CONSTRAINT despesa_id_item_fkey FOREIGN KEY (id_item) REFERENCES tp2.item(id_item);


--
-- Name: item item_id_natureza_fkey; Type: FK CONSTRAINT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.item
    ADD CONSTRAINT item_id_natureza_fkey FOREIGN KEY (id_natureza) REFERENCES tp2.natureza(id_natureza);


--
-- Name: partido_presidente partido_presidente_id_despesa_fkey; Type: FK CONSTRAINT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.partido_presidente
    ADD CONSTRAINT partido_presidente_id_despesa_fkey FOREIGN KEY (id_despesa) REFERENCES tp2.despesa(id_despesa);


--
-- Name: partido_presidente partido_presidente_id_partido_fkey; Type: FK CONSTRAINT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.partido_presidente
    ADD CONSTRAINT partido_presidente_id_partido_fkey FOREIGN KEY (id_partido) REFERENCES tp2.partido(id_partido);


--
-- Name: partido_presidente partido_presidente_id_presidente_fkey; Type: FK CONSTRAINT; Schema: tp2; Owner: postgres
--

ALTER TABLE ONLY tp2.partido_presidente
    ADD CONSTRAINT partido_presidente_id_presidente_fkey FOREIGN KEY (id_presidente) REFERENCES tp2.presidente(id_presidente);


--
-- PostgreSQL database dump complete
--

