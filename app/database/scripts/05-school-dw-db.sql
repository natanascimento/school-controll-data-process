CREATE TABLE dim_curso (
    id_curso   NUMBER(4) NOT NULL,
    nm_curso   VARCHAR2(90) NOT NULL
);

ALTER TABLE dim_curso ADD CONSTRAINT dim_curso_pk PRIMARY KEY ( id_curso );

CREATE TABLE dim_departamento (
    id_departamento   NUMBER(3) NOT NULL,
    nm_departamento   VARCHAR2(50) NOT NULL
);

ALTER TABLE dim_departamento ADD CONSTRAINT dim_departamento_pk PRIMARY KEY ( id_departamento );

CREATE TABLE dim_disciplina (
    id_disciplina   NUMBER(5) NOT NULL,
    nm_disciplina   VARCHAR2(60) NOT NULL
);

ALTER TABLE dim_disciplina ADD CONSTRAINT dim_disciplina_pk PRIMARY KEY ( id_disciplina );

CREATE TABLE dim_tempo (
    id_tempo   NUMBER(6) NOT NULL,
    semestre   NUMBER(6) NOT NULL,
    ano        NUMBER(4) NOT NULL
);

ALTER TABLE dim_tempo ADD CONSTRAINT dim_tempo_pk PRIMARY KEY ( id_tempo );

CREATE TABLE fact_reprovacao (
    id_tempo          NUMBER(6) NOT NULL,
    id_curso          NUMBER(4) NOT NULL,
    id_departamento   NUMBER(3) NOT NULL,
    id_disciplina     NUMBER(5) NOT NULL,
    eh_cotista        NUMBER (1) NOT NULL,
    carga_horaria     NUMBER (1) NOT NULL,
    nota              NUMBER(5) NOT NULL,
    faltas            NUMBER(5) NOT NULL
);

ALTER TABLE fact_reprovacao
    ADD CONSTRAINT fact_repro_dm_departamento_fk FOREIGN KEY ( id_departamento )
        REFERENCES dm_departamento ( id_departamento );

ALTER TABLE fact_reprovacao
    ADD CONSTRAINT fact_repro_dm_curso_fk FOREIGN KEY ( id_curso )
        REFERENCES dm_curso ( id_curso );

ALTER TABLE fact_reprovacao
    ADD CONSTRAINT fact_repro_dm_disciplina_fk FOREIGN KEY ( id_disciplina )
        REFERENCES dm_disciplina ( id_disciplina );

ALTER TABLE fact_reprovacao
    ADD CONSTRAINT fact_repro_dm_tempo_fk FOREIGN KEY ( id_tempo )
        REFERENCES dm_tempo ( id_tempo );