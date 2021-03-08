# FROM scratch si es el codigo compilado de forma estatica
FROM alpine
# mkdir -p /app && cd /app
WORKDIR /app
#copiamos el contenido de src al punto
COPY src .
#instalamos php dentro de nuestra imagen
RUN apk add php
#php index.php
#cuando cargamos la imagen ponemos como punto de entrada el php
ENTRYPOINT ["/usr/bin/php"]
#lanzamos el index php y ponemos la interfaz y el puerto en el que se publica
CMD ["-f","index.php","-S","0.0.0.0:8080"]
