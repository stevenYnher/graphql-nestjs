<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

[circleci-image]: https://img.shields.io/circleci/build/github/nestjs/nest/master?token=abc123def456
[circleci-url]: https://circleci.com/gh/nestjs/nest

  <p align="center">A progressive <a href="http://nodejs.org" target="_blank">Node.js</a> framework for building efficient and scalable server-side applications.</p>
    <p align="center">
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/v/@nestjs/core.svg" alt="NPM Version" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/l/@nestjs/core.svg" alt="Package License" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/dm/@nestjs/common.svg" alt="NPM Downloads" /></a>
<a href="https://circleci.com/gh/nestjs/nest" target="_blank"><img src="https://img.shields.io/circleci/build/github/nestjs/nest/master" alt="CircleCI" /></a>
<a href="https://coveralls.io/github/nestjs/nest?branch=master" target="_blank"><img src="https://coveralls.io/repos/github/nestjs/nest/badge.svg?branch=master#9" alt="Coverage" /></a>
<a href="https://discord.gg/G7Qnnhy" target="_blank"><img src="https://img.shields.io/badge/discord-online-brightgreen.svg" alt="Discord"/></a>
<a href="https://opencollective.com/nest#backer" target="_blank"><img src="https://opencollective.com/nest/backers/badge.svg" alt="Backers on Open Collective" /></a>
<a href="https://opencollective.com/nest#sponsor" target="_blank"><img src="https://opencollective.com/nest/sponsors/badge.svg" alt="Sponsors on Open Collective" /></a>
  <a href="https://paypal.me/kamilmysliwiec" target="_blank"><img src="https://img.shields.io/badge/Donate-PayPal-ff3f59.svg"/></a>
    <a href="https://opencollective.com/nest#sponsor"  target="_blank"><img src="https://img.shields.io/badge/Support%20us-Open%20Collective-41B883.svg" alt="Support us"></a>
  <a href="https://twitter.com/nestframework" target="_blank"><img src="https://img.shields.io/twitter/follow/nestframework.svg?style=social&label=Follow"></a>
</p>
  <!--[![Backers on Open Collective](https://opencollective.com/nest/backers/badge.svg)](https://opencollective.com/nest#backer)
  [![Sponsors on Open Collective](https://opencollective.com/nest/sponsors/badge.svg)](https://opencollective.com/nest#sponsor)-->

## Descripcion

[Nest](https://github.com/nestjs/nest) framework TypeScript con GraphQL y postgreSQL.

## Correr el app localmente

Clonar proyecto

```bash
  git clone https://github.com/stevenYnher/graphql-nestjs
```

Ir al directorio del proyecto

```bash
  cd graphql-nestjs
```

Instalar dependencias

```bash
  npm install
```

antes de iniciar debe tener una db en postgreSQL, debe crear un archivo .env que contenga los siguientes campos, la db tiene que estar activa para poder conectarse.

```bash
TYPEORM_CONNECTION=postgres
TYPEORM_HOST=localhost
TYPEORM_PORT=5432
TYPEORM_USERNAME=USUARIO_LOCAL
TYPEORM_PASSWORD=CLAVE_LOCAL
TYPEORM_DATABASE=postgres
TYPEORM_SYNCHRONIZE=true
TYPEORM_LOGGING=true
```

luego de esto puede iniciar el proyecto con el siguiente comando

```bash
$ npm start
```

## Correr el app en la nube

La app esta diseñada para correr en gcloud kubernetes por lo que necesitara una cuenta para poder realizar el deploy a Kubernetes Engine, debe tener un cluster creado y configurado, las variables del entorno estan programadas para utilizar las variables secrets de GitHub, que son las siguientes:

`CLUSTER_NAME`

`GCP_SA_KEY` debe crear una llave en su cuenta y pegar el json en esta variable.

`GCP_PROJECT_ID`

El proyecto debe estar dockernizado para su lanzamiento, en este caso usamos una imagen de Docker Hub, solo debe ingresar sus credenciales en la siguientes variables de GitHub:

`DOCKER_USERNAME`

`DOCKER_PASSWORD`

Puede realizar el deploy en GitHub Actions, si el build termino sin errores podra realizar consultas al proyecto por el puerto 3000 ya sea en local o con una ip.

## Consultas

#### Consultar todos los usuarios

```bash
query {
  users {
    id
    name
    email
  }
}
```

#### Consultar un usuario por id

```bash
query {
  user(id: ID_USUARIO) {
    id
    name
    email
  }
}
```

#### Crear un usuario

```bash
mutation {
  createUser(createUserInput: { name: "NOMBRE", email: "EMAIL" }) {
    id
    name
    email
  }
}
```

#### Actualizar un usuario

```bash
mutation {
  updateUser(updateUserInput: { id: ID_USUARIO, name: "NOMBRE", email: "MAIL" }) {
    id
    name
    email
  }
}
```

#### Eliminar usuario

```bash
mutation {
  removeUser(id: ID_USUARIO)
}
```

## Creado por

- Author - Steven Ynoa

## License

Nest is [MIT licensed](LICENSE).
