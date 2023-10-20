import sqlite3

# Conectar a la base de datos SQLite o crearla si no existe
conn = sqlite3.connect("mqtt_data.sqlite")
cursor = conn.cursor()

# Crear la tabla "mqtt_data" si no existe
cursor.execute('''
    CREATE TABLE IF NOT EXISTS mqtt_data (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        id_Refri INTEGER,
        temperatura FLOAT,
        alarma BOOLEAN,
        wifi_datos TEXT,
        bat_elec TEXT,
        tiempo TIMESTAMP DEFAULT (datetime('now', 'localtime'))
    )
''')

# Guardar los cambios y cerrar la conexión
conn.commit()
conn.close()