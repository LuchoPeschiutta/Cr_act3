#Imagen ligera con nginx
FROM nginx:1.23-alpine

#Directorio donde busca nginx el archivo index.html
WORKDIR /usr/share/nginx/html/

#Copiamos el index.html modificado al directorio del que lo consumira nginx
COPY ./index.html .

#Indicamos la exposicion del puerto 80 para que sea posible comunicarse con el servicio
EXPOSE 80