from time import time
from database.tables.ddl import DDLFactory
from pipe.extract import ExtractFactory
from pipe.transform import TransformFactory
from pipe.load import LoaderFactory


class DataPipeline:
  
  @staticmethod
  def __oltp():
    operations = ["delete-operational", "create-operational", "insert-operational"]
    start_time = time()
    for operation in operations:
      DDLFactory(operation=operation)
    execution_time = (time() - start_time)
    return execution_time
    
  @staticmethod
  def __olap():
    tables=["tempo", "cursos", "departamentos", "disciplinas", "reprovacao"]
    start_time = time()
    #Create Tables into Data Warehouse
    DDLFactory(operation="delete-dw")
    DDLFactory(operation="create-dw")
    #Extract OLTP -> DATA LAKE (bronze Layer)
    for table in tables:
      ExtractFactory(table=table)
    #Transform DATA LAKE (bronze Layer) -> DATA LAKE (silver Layer)
      TransformFactory(table=table)
    #Load DATA LAKE (silver Layer) -> DW Oracle
    # dw_tables=["dim_curso", "dim_departamento", "dim_disciplina", "dim_tempo", "fact_reprovacao"]
    # for table in dw_tables:
    #   LoaderFactory(table=table)
    execution_time = (time() - start_time)
    return execution_time
          
  @property
  def execute(self):
    oltp = self.__oltp()
    olap = self.__olap()
    
    return f"Process Time: " \
          f"\nOLTP Process:{oltp}" \
          f"\nOLAP Process:{olap}" \
          f"\nTotal:{oltp + olap}"