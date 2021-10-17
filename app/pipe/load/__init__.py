from pipe.load.loader import Loader


class LoaderFactory:
  
  def __init__(self, table: str) -> None:
      if table == "dim_curso":
        Loader(table=table).load
      if table == "dim_departamento":
        Loader(table=table).load
      if table == "dim_disciplina":
        Loader(table=table).load
      if table == "dim_tempo":
        Loader(table=table).load
      if table == "fact_reprovacao":
        Loader(table=table).load