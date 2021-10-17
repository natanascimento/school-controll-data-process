from pipe.transform.transformer import Transformer


class TransformFactory:

  def __init__(self, table: str) -> None:
      if table == "tempo":
        Transformer().transform_dim_tempo()
      if table == "cursos":
        Transformer().transform_dim_curso()
      if table == "departamentos":
        Transformer().transform_dim_dept()
      if table == "disciplinas":
        Transformer().transform_dim_disc()
      if table == "reprovacao":
        Transformer().transform_fact_reprovacoes()
