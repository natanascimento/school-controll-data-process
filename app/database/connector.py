from core.config import settings
from cx_Oracle import connect, makedsn, init_oracle_client

class OracleConnector:
  
  init_oracle_client(lib_dir=r"C:\oracle\instantclient_19_12")
  
  def __init__(self) -> None:
      self.__dsn = self.__create_dsn(settings.ORACLE_HOST,
                                     settings.ORACLE_PORT,
                                     settings.ORACLE_SERVICE_NAME)

  @staticmethod
  def __create_dsn(host: str, port: str, service_name: str) -> makedsn:
      return makedsn(host, 
                     port, 
                     service_name=service_name)
    
  @property  
  def get(self) -> connect:
    return connect(user=settings.ORACLE_USER, 
                  password=settings.ORACLE_PASS,
                  dsn=self.__dsn)
