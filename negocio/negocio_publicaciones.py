import requests

def obtener_publicaciones_api():
    respuesta = requests.get('https://jsonplaceholder.typicode.com/posts')
    if respuesta.status_code == 200:
        lista_publicaciones = respuesta.json()
        for publicaciones in lista_publicaciones:
            print(publicaciones)

obtener_publicaciones_api()
