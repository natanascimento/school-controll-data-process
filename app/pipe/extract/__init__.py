from pipe.extract.extractor import Extractor


class ExtractFactory:
  
  __TEMPO = """SELECT DISTINCT SEMESTRE FROM MATRICULAS"""
  
  __CURSOS = """SELECT DISTINCT COD_CURSO, 
                              NOM_CURSO
                              FROM CURSOS"""
  
  __DEPARTAMENTOS =  """SELECT DISTINCT COD_DPTO, 
                                      NOME_DPTO 
                                      FROM DEPARTAMENTOS"""
  
  __DISCIPLINAS = """SELECT DISTINCT COD_DISC, 
                                NOME_DISC 
                                FROM DISCIPLINAS"""
  
  __REPROVACAO = """SELECT M.SEMESTRE,
                        DIS.COD_DISC as DISCIPLINA,
                        DEP.COD_DPTO AS DEPARTAMENTO,
                        A.COD_CURSO AS CURSO,
                        A.COTISTA AS EHCOSTISTA,
                        DIS.CARGA_HORARIA,
                        M.NOTA,
                        NVL(M.FALTAS, 0)
                  FROM MATRICULAS M
                  JOIN ALUNOS A on M.MAT_ALU = A.MAT_ALU
                  JOIN CURSOS C on C.COD_CURSO = A.COD_CURSO
                  JOIN DEPARTAMENTOS DEP on DEP.COD_DPTO = C.COD_DPTO
                  JOIN DISCIPLINAS DIS on DIS.COD_DISC = M.COD_DISC"""
  
  def __init__(self, table: str) -> None:
      if table == "tempo":
        Extractor(table=table, query=self.__TEMPO).extract
      if table == "cursos":
        Extractor(table=table, query=self.__CURSOS).extract
      if table == "departamentos":
        Extractor(table=table, query=self.__DEPARTAMENTOS).extract
      if table == "disciplinas":
        Extractor(table=table, query=self.__DISCIPLINAS).extract
      if table == "reprovacao":
        Extractor(table=table, query=self.__REPROVACAO).extract