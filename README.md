# TP N° 1 – Git y Docker: Sitio web estático

Sitio web estático hecho con HTML y CSS. Se usa Git para el control de versiones y se empaqueta en una imagen Docker. Nginx lo sirve. Trabajo práctico de Alan Emanuel Arraygada (2C 2026).

## Tecnologías y requisitos

- HTML5 y CSS3
- Nginx (imagen base `nginx:alpine`)
- Git
- Docker (versión 20 o superior)

## Estructura del proyecto

```
.
├── index.html
├── css/
│   └── styles.css
├── Dockerfile
├── .dockerignore
└── README.md
```

## Construir y ejecutar con Docker

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/Alanemanuel16/tp1-git-docker
   cd tp1-git-docker
   ```

2. Construir la imagen:

   ```bash
   docker build -t tp1-sitio-estatico .
   ```

3. Ejecutar el contenedor mapeando el puerto 8080 del equipo al 80 del contenedor:

   ```bash
   docker run -d --name tp1-sitio -p 8080:80 tp1-sitio-estatico
   ```

4. Abrir en el navegador: <http://localhost:8080>

Para detener y eliminar el contenedor:

```bash
docker stop tp1-sitio && docker rm tp1-sitio
```

"Alternativa elegida para la parte 1:Sitio web estatico (HTML Y CSS)"


## Autor

Alan Emanuel Arraygada
