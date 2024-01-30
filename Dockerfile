# Use the official Nginx image as a base image
FROM nginx

# Eliminar la configuración de Nginx por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copiar el contenido de tu proyecto HTML al directorio de trabajo de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80, que es el puerto por defecto de Nginx
EXPOSE 80

# Comando para iniciar Nginx en el primer plano cuando se ejecute el contenedor
CMD ["nginx", "-g", "daemon off;"]

