# github.com/jorgeLTS/docker-osticket
* * *
## Acerca de
Este repo esta creado a base de proyecto de [OSTicket](https://www.osticket.org) - Un proyecto open source de helpdesk / ticketing system.

* Por favor descarge los plugins y los repos de las versiones requeridas.

## Soporte
- [Jorge Mendoza](https://github.com/jorgelts)

## Tabla de contenido
- [Acerca de](#acerca-de)
- [Soporte](#soporte)
- [Tabla de contenido](#tabla-de-contenido)
- [Requisitos previos y suposiciones](#requisitos-previos-y-suposiciones)
- [Instalación ](#instalacion)
  - [Build](#build)
  - [Prebuilt Images](#prebuilt-images)
- [Configuracion](#configuracion)
  - [Quick Start](#quick-start)
  - [Almacenamiento persistente](#almacenamiento-persistente)
  - [Networking](#networking)
- [Mantenimiento](#mantenimiento)
  - [Shell Access](#shell-access)
  - [Bugfixes](#bugfixes)
  - [Updates](#updates)
- [Licencia](#licencia)
- [Referencias](#referencias)

## Requisitos previos y suposiciones 
*  Suponiendo que se está utilizando algún tipo de proxy inverso para el SSL como:
   *  [Traefik](https://github.com/tiredofit/docker-traefik)
   *  [Nginx](https://github.com/jc21/nginx-proxy-manager)
   *  [Caddy](https://github.com/caddyserver/caddy)
*  Este repo incluye un servidor de base de datos

## Instalacion
Este repositorio se construye en base al Dockerfile por medio del docker compose.

### Build
Clona este repostiorio y corre este comando `docker-compose up -d --build --force-recreate`

### Prebuilt Images
Las imagenes ya contruidas se encuentran en [Docker Hub](https://hub.docker.com/r/jorgelts/osticket) 

```bash
docker pull jorgelts/osticket:(imagetag)
```

## Configuracion

### Quick Start

- La forma más rápida de comenzar es usar [docker-compose](https://docs.docker.com/compose/). para esto, se encuentra en raíz un ejemplo con un password genérico para su base de datos, estos parámetros se recomiendan modificarlos para un ambiente en producción.

- Map [Almacenamiento persistente](#Almacenamiento-persistente) para acceder a archivos de configuración y datos para realizar copias de seguridad.
- Make [networking ports](#networking) disponible para acceso público si es necesario.

**El primer arranque puede demorar entre 2 y 5 minutos, dependiendo de su CPU, para configurar los esquemas adecuados.** 

- ¡Inicie sesión en el servidor web e ingrese su dirección de correo electrónico de administrador, contraseña de administrador y comience a configurar el sistema! 

### Almacenamiento persistente
Los Los siguientes directorios se utilizan para la configuración y se pueden asignar para el almacenamiento persistente. 

| Directory       | Description                         |
| --------------- | ------------------------------------|
| `/data_www`     | Esto es para el sistema de osticket |
| `/data_db`      | Esto es para la base de datos       |

### Networking

Los siguientes puertos están expuestos.

| Port   | Descripción |
| ------ | ----------- |
| `80`   | HTTP        |
| `3306` | MYSQL       |

* * *
## Mantenimiento 

### Shell Access
Para fines de depuración y mantenimiento, es posible que desee acceder por shell al contenedor. 

``bash
docker exec -it (cualquiera que sea el nombre de su contenedor o id) bash
``

### Bugfixes
- Por favor, Envíe un [Bug Report](issues/new) si algo no funciona como se esperaba. Haré todo lo posible para emitir una solución en poco tiempo. 

### Updates
- Hare mi mejor esfuerzo para realizar un seguimiento de los cambios del upstream. le daré más prioridad si estoy usando activamente en un entorno de producción.

## Licencia
MIT. Vea [LICENSE](LICENSE) para más detalles.

## Referencias

* https://osticket.org

