# Usa una imagen base de WildFly
FROM jboss/wildfly:latest

# Establece el directorio de trabajo
WORKDIR /opt/jboss/wildfly/standalone/deployments

# Copia el archivo WAR de la aplicación
COPY target/carrobe.war ./carrobe.war

# Expon el puerto 8080 para acceder a la aplicación
EXPOSE 8080

# Comando para ejecutar WildFly
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
