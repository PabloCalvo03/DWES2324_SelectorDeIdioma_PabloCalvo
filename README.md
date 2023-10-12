# Explicacion de la aplicación

- La aplicación es un selector de idioma que utiliza una cookie para almacenar la preferencia del usuario.

# Pasos para ejecutar la aplicación

## 1. Descarga un servidor Apache Tomcat (version 10 en adelante)

1. Descarga el servidor desde Eclipse

2. Agregar Servlet API y JSP API al Build Path

3. Añade las librerias que se encuentran en la carpeta lib al build path.

## 2. Si la Aplicación da fallos

- Cierra las instancias de Tomcat, limpia el proyecto y vuelve a ejecutar.

# 3. Fallo muy importante que puede dar

- La aplicacion puede estar configurada para una version de java y que luego no funcione si tratas de ejecutarla teniendo otra version de java. Para arreglarlo debes acceder a Properties (del proyecto) -> Project Facets y cambiar la version de java a la que tengas tu instalada.
