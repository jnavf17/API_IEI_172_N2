import requests

def obtener_usuarios_api():
    respuesta = requests.get('https://jsonplaceholder.typicode.com/users')
    if respuesta.status_code == 200:
        lista_usuarios = respuesta.json()
        for usuario in lista_usuarios:
            print(usuario)

obtener_usuarios_api()