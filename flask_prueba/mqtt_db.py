import paho.mqtt.client as mqtt
import json
import sqlite3

# {"topic":"EquipoPATO","dispositivo":"REFRI1","tipo":"temperatura","dato":23}


def on_connect(client, userdata, flags, rc):
    print("Connected with Code: " + str(rc))
    client.subscribe("equipoPATO")

def on_message(client, userdata, msg):
    #topic = msg.topic
    payload = msg.payload.decode("utf-8", "ignore")

    try:
        data = json.loads(payload)  # Parseamos el mensaje JSON
        print("Mensaje recibido:")
        #print("Tópico:", topic)
        print("Datos:", data)

        # Conectar a la base de datos SQLite o crearla si no existe
        conn = sqlite3.connect("mqtt_data.sqlite")
        cursor = conn.cursor()

        # Insertar los datos en la tabla de la base de datos
        cursor.execute(
            "INSERT INTO mqtt_data (id_Refri, temperatura, alarma, wifi_datos, bat_elec, tiempo) VALUES (?, ?, ?, ?, ?, ?)",
            (data.get("id_Refri"), data.get("temperatura"), data.get("alarma"),data.get("wifi_datos"),data.get("bat_elec"),data.get("tiempo") ),)


        # Guardar los cambios y cerrar la conexión
        conn.commit()
        conn.close()
        print("Datos guardados en la base de datos.")

    except json.JSONDecodeError as e:
        print("Error al decodificar el mensaje JSON:", str(e))

client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message
client.connect("broker.mqtt-dashboard.com", port=1883)
client.loop_forever()
