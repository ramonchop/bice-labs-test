# Bice Test Labs

Este proyecto permite la conectividad hacia una api externa, permitiendo exponer solo 2 apis, que posteriormente son consumidas por la aplicación web.

# Directorios

Los directorios son:

 1. **backend_node (backend):** Permite la conectividad hacia la api y expone estos servicios para que los consuma la web.
 2. **stock_market_information (web):** Muestra la implementación de estas apis mediante un pequeño Dashboard.

## Backend

 Dentro del directorio **backend_node**, se debe ejecutar lo siguiente:

 1. Descargar e instalar NodeJs (https://nodejs.org/)
 2. Ejecutar el comando ***npm i***
 3. Para realizar los test debes ejecutar ***npm test***
 4. Para levantar el servidor debes ejecutar ***npm start***
 5. Por último, puedes revisar que esta funcionando las apis entrando a las urls (http://localhost:8181/indicators y http://localhost:8181/indicators/values/cobre)

## Frontend

 Dentro del directorio **stock_market_information**, se debe ejecutar lo siguiente:


 1. Descargar e instalar Flutter (https://docs.flutter.dev/get-started/install)
 2. Ejecutar el comando ***flutter pub get***
 3. Para realizar los test debes ejecutar ***flutter test***
 4. Para levantar la aplicación ejecutar ***flutter run -d chrome***


# Ejemplo

Puedes ver la aplicación desplegada en Firebase y  el backend en GCP.

https://bice-labs-test.web.app/#/

