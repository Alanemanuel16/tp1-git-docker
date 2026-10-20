# Imagen base ligera con el servidor web Nginx
FROM nginx:alpine

# Copia el código fuente del sitio al directorio público de Nginx
COPY index.html /usr/share/nginx/html/index.html
COPY css/ /usr/share/nginx/html/css/

# Nginx escucha en el puerto 80 dentro del contenedor
EXPOSE 80

# Comando de inicio (Nginx en primer plano)
CMD ["nginx", "-g", "daemon off;"]
