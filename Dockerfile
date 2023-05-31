FROM openjdk:17-alpine

# Establecer el directorio de trabajo en la carpeta del proyecto
WORKDIR /gatewayserver

# Copiar el código fuente del Gateway al contenedor
COPY  ./target/gatewayserver-0.0.1-SNAPSHOT.jar .


# Comando para ejecutar el Gateway cuando se inicie el contenedor
ENTRYPOINT ["java", "-jar", "gatewayserver-0.0.1-SNAPSHOT.jar"]