from negocio import obtener_data_users_api, listado_users_db,crear_user_api, modificar_user_api, eliminar_user_api
from negocio import crear_post_api,modificar_post_api,eliminar_post_api 

#obtener_data_users_api('https://jsonplaceholder.typicode.com/users')
listado_users_db()

crear_user_api('https://jsonplaceholder.typicode.com/users')

modificar_user_api('https://jsonplaceholder.typicode.com/users')

eliminar_user_api('https://jsonplaceholder.typicode.com/users')

crear_post_api('https://jsonplaceholder.typicode.com/posts')

modificar_post_api('https://jsonplaceholder.typicode.com/posts')

eliminar_post_api('https://jsonplaceholder.typicode.com/posts')