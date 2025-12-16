from modelos import Address
from datos.insertar_datos import insetar_objeto


def crear_direccion(calle, departamento, ciudad, codigo_postal, geolocalizacion):
    direccion = Address(
        street=calle,
        suite=departamento,
        city=ciudad,
        zipcode=codigo_postal,
        geoId=geolocalizacion
    )
    try:
        id_direccion = insetar_objeto(direccion)
        return id_direccion
    except Exception as error:
        print(f'Error al guardar la dirección: {error}')
     