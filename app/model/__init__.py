from dataclasses import dataclass


@dataclass
class Alunos:
  mat_alu: int
  nome: str
  dat_entrada: str   
  cod_curso: int
  cotista: str
  
  
@dataclass
class Cursos:
  cod_curso: int
  nom_curso: str
  cod_dpto: int


@dataclass
class Departamentos:
  cod_dpto: int
  nome_dpto: str
  
  
@dataclass
class Disciplinas:
  cod_disc: int
  nome_disc: str
  carga_horaria: int
  
  
@dataclass
class Matriculas:
  semestre: int
  mat_alu: int
  cod_disc: int
  nota: int
  faltas: int
  status: str
  

@dataclass
class MatrizesCursos:
  cod_curso: int
  cod_disc: int
  periodo: int