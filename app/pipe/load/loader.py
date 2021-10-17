import pandas as pd
from database.connector import OracleConnector


class Loader:
  
  def __init__(self, table: str) -> None:
      self.__oracle_connection = OracleConnector().get
      self.__table = table
      self.__silver_dir = "app/lake/silver/"
      
  @property
  def load(self):
    df = pd.read_csv(f'{self.__silver_dir}{self.__table}.csv', encoding="utf-8")
    df.to_sql(f'{self.__table}',con=self.__oracle_connection)


if __name__ == "__main__":
  Loader("dim_tempo").load