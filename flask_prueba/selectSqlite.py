import sqlite3


import pandas as pd
conn = sqlite3.connect('mqtt_data.sqlite')

df = pd.read_sql_query('Select * from mqtt_data;', conn)
print(df.dtypes)
conn.commit()

conn.close()