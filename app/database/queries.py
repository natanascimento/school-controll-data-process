class Queries:
  
  def __init__(self, file_path: str) -> None:
      self.__file_path = file_path
  
  @staticmethod
  def read_sql_file(file_path: str):
    file = open(file_path, 'r')
    sql = file.read().split(';')
    file.close()
    return sql
  
  @property
  def get(self):
    return self.read_sql_file(self.__file_path)
