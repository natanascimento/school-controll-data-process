import pandas as pd
from database.connector import OracleConnector


class Extractor:
  
  def __init__(self, table: str, query) -> None:
      self.__oracle_connection = OracleConnector().get
      self.__table = table
      self.__query = query
  
  @property
  def extract(self):
    df = pd.read_sql(self.__query, con=self.__oracle_connection)
    
    df.to_csv(f'app/lake/bronze/{self.__table}.csv',index=False, encoding='utf-8')
