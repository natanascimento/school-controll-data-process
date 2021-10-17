import os
from os.path import join, dirname, abspath
import dotenv


class Settings:
  
  dotenv.load_dotenv(dotenv.find_dotenv())
  
  ORACLE_USER = os.getenv('ORACLE_USER')
  ORACLE_PASS = os.getenv('ORACLE_PASS')
  ORACLE_HOST = os.getenv('ORACLE_HOST')
  ORACLE_PORT = os.getenv('ORACLE_PORT')
  ORACLE_SERVICE_NAME = os.getenv('ORACLE_SERVICE_NAME')
  
  ROOT_DIR = dirname(dirname(dirname(abspath(__file__))))
  DATABASE_DIR = join(ROOT_DIR ,"database")
  SCRIPTS_DIR = join(DATABASE_DIR ,"scripts")
  CREATE_OP_DIR = join(SCRIPTS_DIR, "02-school-operational-db.sql")
  CREATE_DW_DIR = join(SCRIPTS_DIR, "05-school-dw-db.sql")
  DROP_OP_DIR = join(SCRIPTS_DIR, "03-school-operation-drop.sql")
  DROP_DW_DIR = join(SCRIPTS_DIR, "06-school-dw-drop.sql")
  INSERT_OP_DIR = join(SCRIPTS_DIR, "04-school-dump-db.sql")
