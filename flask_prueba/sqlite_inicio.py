import sqlite3

# Conectar a la base de datos SQLite o crearla si no existe
conn = sqlite3.connect("mqtt_data.sqlite")
cursor = conn.cursor()

# Crear la tabla "mqtt_data" si no existe
cursor.execute('''
    CREATE TABLE IF NOT EXISTS mqtt_data (
        id_Refri INTEGER PRIMARY KEY AUTOINCREMENT,
        id_Usuario INTEGER,
        id_Sucursal INTEGER,
        tiempo TIMESTAMP DEFAULT (datetime('now', 'localtime')),
        temperatura REAL,
        alarma BOOL,
        wifi_datos TEXT,
        bat_elec TEXT;
    )
''')

# Guardar los cambios y cerrar la conexión
conn.commit()
conn.close()