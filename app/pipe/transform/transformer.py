import pandas as pd


class Transformer:
  
  def __init__(self) -> None:
    self.__bronze_dir = "app/lake/bronze/"
    self.__silver_dir = "app/lake/silver/"
  
  def transform_dim_tempo(self):
    df = pd.read_csv(f'{self.__bronze_dir}tempo.csv', encoding="utf-8")
    df = df.astype({"SEMESTRE":'str'})
    df = df.rename(columns={'SEMESTRE': 'semestre'})
    df["ano"] = df["semestre"].str[:4]
    df.insert(0, 'id_tempo', range(1, 1 + len(df)))
    df.to_csv(f'{self.__silver_dir}dim_tempo.csv',index=False, encoding='utf-8')

  def transform_dim_curso(self):
    df = pd.read_csv(f'{self.__bronze_dir}cursos.csv', encoding="utf-8")
    df = df.rename(columns={'COD_CURSO': 'id_curso', 'NOM_CURSO': 'nm_curso'})
    df = df.astype({"nm_curso":'str'})
    df.to_csv(f'{self.__silver_dir}dim_curso.csv',index=False, encoding='utf-8')

  def transform_dim_dept(self):
    df = pd.read_csv(f'{self.__bronze_dir}departamentos.csv', encoding="utf-8")
    df = df.rename(columns={'COD_DPTO': 'id_departamento', 'NOME_DPTO': 'nm_departamento'})
    df = df.astype({"nm_departamento":'str'})
    df.to_csv(f'{self.__silver_dir}dim_departamento.csv',index=False, encoding='utf-8')

  def transform_dim_disc(self):
    df = pd.read_csv(f'{self.__bronze_dir}disciplinas.csv', encoding="utf-8")
    df = df.rename(columns={'COD_DISC': 'id_disciplina', 'NOME_DISC': 'nm_disciplina'})
    df = df.astype({"nm_disciplina":'str'})
    df.to_csv(f'{self.__silver_dir}dim_disciplina.csv',index=False, encoding='utf-8')
    
  def transform_fact_reprovacoes(self):
    df = pd.read_csv(f'{self.__bronze_dir}reprovacao.csv', encoding="utf-8")
    df['SEMESTRE'] = df['SEMESTRE'].replace(20211,2)
    df['SEMESTRE'] = df['SEMESTRE'].replace(20212,1)
    df['EHCOSTISTA'] = df['EHCOSTISTA'].replace("S",1)
    df['EHCOSTISTA'] = df['EHCOSTISTA'].replace("N",0)
    #df = df.loc[df["NOTA"] < 7]
    df = df.rename(columns={'SEMESTRE': 'id_tempo', 
                            'DISCIPLINA': 'id_disciplina',
                            'DEPARTAMENTO':'id_departamento',
                            'CURSO':'id_curso',
                            'EHCOSTISTA':'eh_cotista',
                            'CARGA_HORARIA':'carga_horaria',
                            'NOTA':'nota',
                            'NVL(M.FALTAS,0)':'faltas'})
    df.to_csv(f'{self.__silver_dir}fact_reprovacao.csv',index=False, encoding='utf-8')