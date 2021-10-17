import os
from database.connector import OracleConnector
from database.queries import Queries
from database.tables.operator import TablesOperator
from core.config import settings


class DDLFactory:
  
  def __init__(self, operation: str) -> None:
      self.__database_connector = self.__get_database_connector()
      if operation == "create-operational":
        TablesOperator(connection=self.__database_connector,
                     queries=self.__get_sql_queries(settings.CREATE_OP_DIR)).execute
      elif operation == "delete-operational":
        TablesOperator(connection=self.__database_connector,
                     queries=self.__get_sql_queries(settings.DROP_OP_DIR)).execute
      elif operation == "insert-operational":
        TablesOperator(connection=self.__database_connector,
                     queries=self.__get_sql_queries(settings.INSERT_OP_DIR)).execute
      elif operation == "create-dw":
        TablesOperator(connection=self.__database_connector,
                     queries=self.__get_sql_queries(settings.CREATE_DW_DIR)).execute    
      elif operation == "delete-dw":
        TablesOperator(connection=self.__database_connector,
                     queries=self.__get_sql_queries(settings.DROP_DW_DIR)).execute 

  @staticmethod
  def __get_database_connector():
    return OracleConnector().get
  
  @staticmethod
  def __get_sql_queries(file_path):
    return Queries(file_path=file_path).get