insert into departamentos ( cod_dpto, nome_dpto ) values ( 001, 'Exatas' );
insert into departamentos ( cod_dpto, nome_dpto ) values ( 002, 'Humanas' );
insert into departamentos ( cod_dpto, nome_dpto ) values ( 003, 'Saude' );
commit;
insert into cursos ( cod_curso, nom_curso, cod_dpto ) values ( 0001, 'Ciencias da Computacao', 001 );
insert into cursos ( cod_curso, nom_curso, cod_dpto ) values ( 0002, 'Matematica', 001 );
insert into cursos ( cod_curso, nom_curso, cod_dpto ) values ( 0003, 'Enfermagem', 003 );
insert into cursos ( cod_curso, nom_curso, cod_dpto ) values ( 0004, 'Design de Interiores', 002 );
insert into cursos ( cod_curso, nom_curso, cod_dpto ) values ( 0005, 'Engenharia Mecanica', 001 );
insert into cursos ( cod_curso, nom_curso, cod_dpto ) values ( 0006, 'Arquitetura', 002 );
insert into cursos ( cod_curso, nom_curso, cod_dpto ) values ( 0007, 'Nutricao', 003 );
insert into cursos ( cod_curso, nom_curso, cod_dpto ) values ( 0008, 'Farmacia', 003 );
insert into cursos ( cod_curso, nom_curso, cod_dpto ) values ( 0009, 'Direito', 002 );
insert into cursos ( cod_curso, nom_curso, cod_dpto ) values ( 0010, 'Sistemas de Informacao', 001 );
commit;
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00001, 'Redes de Computadores', 80.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00002, 'Banco de Dados', 40.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00003, 'Calculo II', 80.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00004, 'Calculo I', 40.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00005, 'Anatomia Humana', 80.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00006, 'Farmacologia', 40.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00007, 'Ergonomia', 80.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00008, 'Desenho Tecnico', 40.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00009, 'Mecanica geral', 80.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00010, 'Algebra linear', 40.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00011, 'Gestao de Projetos', 80.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00012, 'Urbanismo e Infraestrutura', 40.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00013, 'Nutricao Humana', 80.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00014, 'Avaliacao Nutricional', 20.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00015, 'Biologia Celular', 80.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00016, 'Manipulacao', 20.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00017, 'Introducao ao Direito', 80.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00018, 'Direito Romano', 40.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00019, 'Engenharia de Software', 80.0 );
insert into disciplinas ( cod_disc, nome_disc, carga_horaria ) values ( 00020, 'Laboratorio de banco de dados', 40.0 );
commit;
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0001, 00004, 2 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0001, 00002, 1 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0002, 00004, 1 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0002, 00003, 2 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0003, 00005, 5 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0003, 00006, 3 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0004, 00007, 1 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0004, 00008, 6 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0005, 00009, 4 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0005, 00010, 3 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0006, 00011, 1 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0006, 00012, 1 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0007, 00013, 3 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0007, 00014, 1 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0008, 00015, 2 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0008, 00016, 1 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0009, 00017, 3 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0009, 00018, 1 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0010, 00019, 4 );
insert into matrizes_cursos ( cod_curso, cod_disc, periodo ) values ( 0010, 00020, 1 );
commit;
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001230, 'Taissa', TO_DATE('2019-01-01', 'yyyy/mm/dd'), 0001, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001231, 'Josiane', TO_DATE('2020-12-02', 'yyyy/mm/dd'), 0001, 'S' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001232, 'Elielson', TO_DATE('2019-12-03', 'yyyy/mm/dd'), 0001, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001233, 'Julio', TO_DATE('2020-12-05', 'yyyy/mm/dd'), 0002, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001234, 'Tito', TO_DATE('2020-12-06', 'yyyy/mm/dd'), 0002, 'S' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001235, 'Isabelly', TO_DATE('2019-01-07', 'yyyy/mm/dd'), 0002, 'S' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001236, 'Eric', TO_DATE('2019-06-08', 'yyyy/mm/dd'), 0003, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001237, 'Adriano', TO_DATE('2021-09-09', 'yyyy/mm/dd'), 0003, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001238, 'Barbara', TO_DATE('2019-10-10', 'yyyy/mm/dd'), 0003, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001239, 'Viviane', TO_DATE('2019-01-08', 'yyyy/mm/dd'), 0004, 'S' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001240, 'Jadir', TO_DATE('2019-09-09', 'yyyy/mm/dd'), 0004, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001241, 'Mauricio', TO_DATE('2018-10-10', 'yyyy/mm/dd'), 0004, 'S' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001242, 'Jairo', TO_DATE('2021-02-08', 'yyyy/mm/dd'), 0005, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001243, 'Silvestre', TO_DATE('2020-03-09', 'yyyy/mm/dd'), 0005, 'S' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001244, 'Edson', TO_DATE('2019-10-10', 'yyyy/mm/dd'), 0005, 'S' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001245, 'Isabelly', TO_DATE('2020-01-08', 'yyyy/mm/dd'), 0006, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001246, 'Alexandro', TO_DATE('2021-01-09', 'yyyy/mm/dd'), 0006, 'S' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001247, 'Chelsea', TO_DATE('2018-10-10', 'yyyy/mm/dd'), 0006, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001248, 'Telmo', TO_DATE('2021-08-08', 'yyyy/mm/dd'), 0007, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001249, 'Nadine', TO_DATE('2019-09-09', 'yyyy/mm/dd'), 0007, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001250, 'Karen', TO_DATE('2018-10-10', 'yyyy/mm/dd'), 0007, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001251, 'Adelina', TO_DATE('2021-07-08', 'yyyy/mm/dd'), 0008, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001252, 'Marie', TO_DATE('2020-09-09', 'yyyy/mm/dd'), 0008, 'S' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001253, 'Dominika', TO_DATE('2018-05-10', 'yyyy/mm/dd'), 0008, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001254, 'Indira', TO_DATE('2020-08-08', 'yyyy/mm/dd'), 0009, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001255, 'Henry', TO_DATE('2019-09-09', 'yyyy/mm/dd'), 0009, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001256, 'Vivian', TO_DATE('2020-06-10', 'yyyy/mm/dd'), 0009, 'S' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001257, 'Luisa', TO_DATE('2021-06-08', 'yyyy/mm/dd'), 0010, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001258, 'Prince', TO_DATE('2021-06-09', 'yyyy/mm/dd'), 0010, 'N' );
insert into alunos ( mat_alu, nome, dat_entrada, cod_curso, cotista ) values ( 1187001259, 'Marlon', TO_DATE('2021-06-10', 'yyyy/mm/dd'), 0010, 'N' );
commit;
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001230, 00004, 9.8, 12, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001231, 00002, 7.0, 4, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001232, 00002, 5.0, 0, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001233, 00004, 5.7, 6, 'T' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001234, 00004, 10.0, 0, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001235, 00004, 2.0, 6, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001236, 00005, 10.0, 2, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001237, 00006, 9.9, 18, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001238, 00005, 2.0, 8, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001239, 00007, 8.4, 4, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001240, 00008, 10.0, 0, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001241, 00008, 6.0, 0, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001242, 00009, 6.2, 2, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001243, 00009, 5.9, 10, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001244, 00010, 5.0, 0, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001245, 00012, 4.5, 2, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001246, 00001, 7.0, 6, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001247, 00012, 9.0, 12, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001248, 00014, 9.0, 21, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001249, 00013, 9.0, 0, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001250, 00014, 5.5, 2, 'T' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001251, 00016, 3.0, 8, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001252, 00015, 2.0, 7, 'T' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001253, 00016, 10.0, 3, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001254, 00017, 1.0, 22, 'T' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001255, 00018, 6.7, 21, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001256, 00017, 10.0, 2, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001257, 00019, 10.0, 0, 'A' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20212, 1187001258, 00019, 4.5, 0, 'T' );
insert into matriculas ( semestre, mat_alu, cod_disc, nota, faltas, status ) values ( 20211, 1187001259, 00020, 8.0, 10, 'A' );
commit;