CREATE TABLE IF NOT EXISTS despesa (
    id_despesa integer primary key,
    vlr_despesa integer,
    dat_compra date,
    id_item integer,
    foreign key(id_item) references item(id_item)
);

CREATE TABLE IF NOT EXISTS item (
    id_item integer primary key,
    nom_item character varying(255),
    id_natureza integer,
    foreign key(id_natureza) references natureza(id_natureza)
);

CREATE TABLE IF NOT EXISTS natureza (
    id_natureza integer primary key,
    nom_natureza character varying(255)
);

CREATE TABLE IF NOT EXISTS partido (
    id_partido integer primary key,
    nom_partido character varying(255),
    sigla character varying(255)
);

CREATE TABLE IF NOT EXISTS partido_presidente (
    id_partido_presidente integer primary key,
    id_partido integer,
    id_presidente integer,
    id_despesa integer,
    foreign key(id_partido) references partido(id_partido),
    foreign key(id_presidente) references presidente(id_presidente),
    foreign key(id_despesa) references despesa(id_despesa)
);

CREATE TABLE IF NOT EXISTS presidente (
    id_presidente integer primary key,
    nom_presidente character varying(255),
    num_mandato character varying(255)
);


INSERT INTO natureza (id_natureza, nom_natureza) VALUES (1, 'DIARIAS - PESSOAL CIVIL');
INSERT INTO natureza (id_natureza, nom_natureza) VALUES (2, 'MATERIAL DE CONSUMO');
INSERT INTO natureza (id_natureza, nom_natureza) VALUES (3, 'OBRIGACOES TRIBUTARIAS E CONTRIBUTIVAS');
INSERT INTO natureza (id_natureza, nom_natureza) VALUES (4, 'OUTROS SERVICOS DE TERCEIROS - PESSOA JURIDICA');
INSERT INTO natureza (id_natureza, nom_natureza) VALUES (5, 'PASSAGENS E DESPESAS COM LOCOMOCAO');
INSERT INTO natureza (id_natureza, nom_natureza) VALUES (6, 'VENCIMENTOS E VANTAGENS FIXAS - PESSOAL CIVIL');
INSERT INTO natureza (id_natureza, nom_natureza) VALUES (7, 'VALOR DE ESCAPE – SIAFIWEB');
INSERT INTO natureza (id_natureza, nom_natureza) VALUES (8, 'SERVICOS DE TECNOLOGIA DA INFORMACAO E COMUNICACAO – PJ');


--
-- Data for Name: item; Type: TABLE DATA; Schema: tp2; Owner: postgres
--

INSERT INTO item (id_item, nom_item, id_natureza) VALUES (1, 'DIARIAS NO PAIS', 1);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (2, 'DIARIAS NO EXTERIOR', 1);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (3, 'TAXAS', 3);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (4, 'COMBUSTIVEIS E LUBRIFICANTES AUTOMOTIVOS', 2);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (5, 'SERVICOS DE TELECOMUNICACOES', 4);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (6, 'SEGUROS EM GERAL', 4);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (7, 'MANUTENCAO E CONSERV. DE VEICULOS', 4);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (8, 'PASSAGENS PARA O PAIS', 5);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (9, 'PASSAGENS PARA O EXTERIOR', 5);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (10, 'GRATIFICACAO P/EXERCICIO DE CARGO EM COMISSAO', 6);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (11, 'VALOR DE ESCAPE - SIAFIWEB', 7);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (12, 'MATERIAL P/ MANUTENCAO DE VEICULOS', 2);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (13, 'TELEFONIA FIXA E MOVEL - PACOTE DE COMUNICACAO DE DADOS', 8);
INSERT INTO item (id_item, nom_item, id_natureza) VALUES (14, 'LOCACAO DE MEIOS DE TRANSPORTE', 5);


--
-- Data for Name: despesa; Type: TABLE DATA; Schema: tp2; Owner: postgres
--

INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (259, 341, '2022-01-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (260, 824, '2022-01-04', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (261, 1052, '2022-01-04', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (262, 2877, '2022-01-04', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (263, 1145, '2022-01-04', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (174, 7026, '2022-02-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (175, 15415, '2022-02-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (176, 5222, '2022-02-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (177, 2403, '2022-02-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (178, 184, '2022-03-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (179, 1271, '2022-03-03', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (180, 395, '2022-03-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (181, 1246, '2022-03-03', 9);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (182, 566, '2022-04-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (183, 432, '2022-04-03', 7);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (184, 1380, '2022-04-03', 7);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (185, 967, '2022-04-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (186, 102, '2022-04-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (187, 1476, '2022-07-03', 12);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (53, 1824, '2022-08-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (54, 156, '2022-08-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (55, 312, '2022-08-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (56, 78, '2022-08-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (57, 78, '2022-08-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (58, 156, '2022-08-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (59, 78, '2022-08-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (188, 1968, '2022-08-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (264, 156, '2022-08-04', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (265, 234, '2022-08-04', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (266, 156, '2022-08-04', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (267, 156, '2022-08-04', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (268, 17410, '2022-08-04', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (269, 39314, '2022-08-04', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (270, 28126, '2022-08-04', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (271, 5490, '2022-08-04', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (272, 1198, '2022-08-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (273, 702, '2022-08-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (274, 446, '2022-08-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (60, 1637, '2022-09-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (189, 800, '2022-09-03', 12);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (1, 2377, '2022-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (2, 1404, '2022-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (3, 1297, '2022-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (4, 70, '2022-10-01', 7);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (9, 2378, '2023-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (10, 1405, '2023-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (11, 1298, '2023-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (12, 71, '2023-10-01', 7);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (17, 2379, '2024-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (18, 1406, '2024-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (19, 1299, '2024-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (20, 72, '2024-10-01', 7);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (25, 2380, '2025-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (26, 1407, '2025-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (27, 1300, '2025-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (28, 73, '2025-10-01', 7);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (33, 2381, '2026-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (34, 1408, '2026-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (35, 1301, '2026-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (36, 74, '2026-10-01', 7);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (41, 2382, '2027-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (42, 1409, '2027-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (43, 1302, '2027-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (44, 75, '2027-10-01', 7);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (49, 2383, '2028-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (50, 1410, '2028-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (51, 1303, '2028-10-01', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (52, 76, '2028-10-01', 7);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (61, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (62, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (63, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (64, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (65, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (66, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (67, 265, '2022-10-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (68, 368, '2022-10-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (69, 1548, '2022-10-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (70, 265, '2022-10-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (71, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (72, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (73, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (74, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (75, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (76, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (77, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (78, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (79, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (80, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (81, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (82, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (83, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (84, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (85, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (86, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (87, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (88, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (89, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (90, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (91, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (92, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (93, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (94, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (95, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (96, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (97, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (98, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (99, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (100, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (101, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (102, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (103, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (104, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (105, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (106, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (107, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (108, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (109, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (110, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (111, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (112, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (113, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (114, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (115, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (116, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (117, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (118, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (119, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (120, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (121, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (122, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (123, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (124, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (125, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (126, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (127, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (128, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (129, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (130, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (131, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (132, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (133, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (134, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (135, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (136, 150, '2022-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (190, 156, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (191, 312, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (192, 78, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (193, 78, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (194, 156, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (195, 78, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (196, 997, '2022-10-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (197, 713, '2022-10-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (198, 156, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (199, 312, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (200, 78, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (201, 78, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (202, 156, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (203, 78, '2022-10-03', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (5, 465, '2022-11-01', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (6, 177, '2022-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (7, 298, '2022-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (8, 88, '2022-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (13, 466, '2023-11-01', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (14, 178, '2023-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (15, 299, '2023-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (16, 89, '2023-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (21, 467, '2024-11-01', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (22, 179, '2024-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (23, 300, '2024-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (24, 90, '2024-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (29, 468, '2025-11-01', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (30, 180, '2025-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (31, 301, '2025-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (32, 91, '2025-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (37, 469, '2026-11-01', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (38, 181, '2026-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (39, 302, '2026-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (40, 92, '2026-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (45, 470, '2027-11-01', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (46, 182, '2027-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (47, 303, '2027-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (48, 93, '2027-11-01', 13);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (137, 156, '2022-11-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (138, 312, '2022-11-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (139, 78, '2022-11-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (140, 78, '2022-11-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (141, 156, '2022-11-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (142, 78, '2022-11-02', 5);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (204, 1601, '2022-11-03', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (205, 275, '2022-11-03', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (206, 266, '2022-11-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (207, 5523, '2022-11-03', 2);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (275, 3379, '2022-11-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (276, 339, '2023-01-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (143, 3796, '2023-02-02', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (144, 398, '2023-02-02', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (208, 2701, '2023-02-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (209, 2067, '2023-02-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (210, 7978, '2023-02-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (211, 18682, '2023-02-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (212, 5750, '2023-02-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (213, 6099, '2023-02-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (214, 18811, '2023-02-03', 9);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (215, 112, '2023-02-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (216, 52, '2023-02-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (277, 2430, '2023-02-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (145, 5407, '2023-03-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (217, 3044, '2023-03-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (218, 102, '2023-03-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (146, 2443, '2023-04-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (219, 797, '2023-04-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (220, 1153, '2023-04-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (147, 201, '2023-05-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (148, 2247, '2023-05-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (221, 1037, '2023-05-03', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (149, 6451, '2023-06-02', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (150, 30189, '2023-06-02', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (151, 5818, '2023-06-02', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (152, 3616, '2023-06-02', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (153, 13768, '2023-06-02', 9);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (222, 2772, '2023-06-03', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (223, 1717, '2023-06-03', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (278, 2738, '2023-06-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (154, 4368, '2023-09-02', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (224, 18568, '2023-09-03', 2);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (155, 1065, '2023-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (156, 3044, '2023-10-02', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (157, 189, '2023-10-02', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (158, 413, '2023-10-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (159, 65744, '2023-10-02', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (160, 52042, '2023-10-02', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (161, 51097, '2023-10-02', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (162, 65599, '2023-10-02', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (163, 47596, '2023-10-02', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (164, 58944, '2023-10-02', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (225, 1877, '2023-10-03', 14);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (226, 1663, '2023-10-03', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (165, 475, '2023-11-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (166, 1376, '2023-11-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (227, 1596, '2023-11-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (228, 667, '2023-11-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (229, 2372, '2023-11-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (167, 160, '2023-12-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (168, 5447, '2023-12-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (169, 15137, '2023-12-02', 2);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (170, 2430, '2023-12-02', 4);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (230, 201, '2023-12-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (231, 1448, '2023-12-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (171, 201, '2024-01-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (172, 2101, '2024-01-02', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (173, 39017, '2024-01-02', 2);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (232, 1189, '2024-01-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (233, 386, '2024-01-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (234, 6653, '2024-01-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (279, 1788, '2024-01-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (280, 5382, '2024-01-04', 2);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (281, 4025, '2024-02-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (282, 1548, '2024-02-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (283, 4716, '2024-02-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (284, 5537, '2024-02-04', 2);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (285, 402, '2024-02-04', 3);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (286, 402, '2024-02-04', 3);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (287, 402, '2024-02-04', 3);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (288, 402, '2024-02-04', 3);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (289, 402, '2024-02-04', 3);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (290, 402, '2024-02-04', 3);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (291, 4058, '2024-03-04', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (292, 1973, '2024-03-04', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (293, 93, '2024-03-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (294, 69806, '2024-03-04', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (295, 61257, '2024-03-04', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (296, 49951, '2024-03-04', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (297, 54246, '2024-03-04', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (298, 47055, '2024-03-04', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (299, 60425, '2024-03-04', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (235, 3154, '2024-04-03', 2);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (236, 1944, '2024-04-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (237, 140, '2024-04-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (238, 9692, '2024-04-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (239, 8613, '2024-04-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (240, 11149, '2024-04-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (241, 1489, '2024-04-03', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (242, 17005, '2024-04-03', 9);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (243, 16650, '2024-04-03', 9);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (244, 14728, '2024-04-03', 9);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (300, 1688, '2024-04-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (301, 21331, '2024-04-04', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (302, 15766, '2024-04-04', 8);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (245, 1595, '2024-05-03', 2);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (246, 2399, '2024-05-03', 6);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (247, 69806, '2024-05-03', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (248, 54959, '2024-05-03', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (249, 49951, '2024-05-03', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (250, 54246, '2024-05-03', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (251, 46155, '2024-05-03', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (252, 57505, '2024-05-03', 10);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (303, 1688, '2024-05-04', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (253, 2054, '2024-06-03', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (254, 1020, '2024-06-03', 11);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (255, 909, '2024-07-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (256, 341, '2024-07-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (257, 1028, '2024-07-03', 1);
INSERT INTO despesa (id_despesa, vlr_despesa, dat_compra, id_item) VALUES (258, 713, '2024-07-03', 1);


--
-- Data for Name: partido; Type: TABLE DATA; Schema: tp2; Owner: postgres
--

INSERT INTO partido (id_partido, nom_partido, sigla) VALUES (14, 'Partido Trabalhista Brasileiro', 'PTB');
INSERT INTO partido (id_partido, nom_partido, sigla) VALUES (13, 'Partido dos Trabalhadores', 'PT');
INSERT INTO partido (id_partido, nom_partido, sigla) VALUES (45, 'Partido da Social Democracia Brasileira', 'PDSB');
INSERT INTO partido (id_partido, nom_partido, sigla) VALUES (15, 'Movimento Democrático Brasileiro', 'MDB');
INSERT INTO partido (id_partido, nom_partido, sigla) VALUES (90, 'Partido Republicano da Ordem Social', 'PROS');


--
-- Data for Name: presidente; Type: TABLE DATA; Schema: tp2; Owner: postgres
--

INSERT INTO presidente (id_presidente, nom_presidente, num_mandato) VALUES (1, 'DILMA ROUSSEFF', '2');
INSERT INTO presidente (id_presidente, nom_presidente, num_mandato) VALUES (2, 'FERNANDO COLLOR', '1');
INSERT INTO presidente (id_presidente, nom_presidente, num_mandato) VALUES (3, 'FERNANDO HENRIQUE', '2');
INSERT INTO presidente (id_presidente, nom_presidente, num_mandato) VALUES (4, 'JOSE SARNEY', '1');
INSERT INTO presidente (id_presidente, nom_presidente, num_mandato) VALUES (5, 'LULA DA SILVA', '2');
INSERT INTO presidente (id_presidente, nom_presidente, num_mandato) VALUES (6, 'MICHEL TEMER', '1');
