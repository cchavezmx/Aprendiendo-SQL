# Guía - Aprendiendo SQL

Esta guía esta diseñada para aprender SQL, el lenguaje de consulta estándar para bases de datos relacionales. esta basada en el curso de [Fullstackopen](https://fullstackopen.com/es/part13/uso_de_bases_de_datos_relacionales_con_sequelize) y [SQLBolt](https://sqlbolt.com/lesson/select_queries_introduction).

## Introducción 📖

Antes de empezar a aprender SQL, es importante que tengas en cuenta que SQL es un lenguaje de consulta, no un lenguaje de programación. Esto significa que no puedes crear variables, bucles, funciones, etc.
debido a su simplicidad, las bases de datos SQL brindan almacenamiento seguro y escalable para millones de sitios web y aplicaciones móviles.

Antes de aprender la sintaxis SQL, es importante que entienda un modelo de lo que realmente es una base de datos relaciona, un base de datos tradicional es una colección de tablas relacionadas, dada una de las tablas sería similar a una hoja de cálculo de excel, donde cada columna representa un campo y cada fila representa un registro.

Por ejemplo, veamos una tabla una empresa que vende vehículos:

| id  | marca | modelo | precio |
| --- | ----- | ------ | ------ |
| 1   | Ford  | Fiesta | 10000  |
| 2   | Ford  | Focus  | 15000  |
| 3   | Ford  | Mondeo | 20000  |
| 4   | BMW   | 320i   | 25000  |
| 5   | BMW   | 520i   | 30000  |
| 6   | BMW   | 750i   | 50000  |

En este caso, la tabla se llama vehículos y tiene 4 columnas: id, marca, modelo y precio. Cada fila representa un registro, por ejemplo, el registro con id 1 representa el vehículo Ford Fiesta, que cuesta 10000 euros.

Pero no solo eso, si no podemos encontrar en la base de datos, mas tablas relacionadas con la tabla vehículos, por ejemplo, una tabla de clientes, donde cada cliente tiene un id, nombre, apellidos, etc. Y otra tabla de ventas, donde cada venta tiene un id, id del cliente, id del vehículo, fecha, etc.

Al aprender SQL, el objetivo es aprender a responder preguntas específicas sobre estos datos, como, por ejemplo:
¿Cuántos vehículos hay en la base de datos?
¿Cuántos vehículos hay de cada marca?

### ¿Sabías que? 🤔

Hay muchas de bases de datos SQL populares, incluidas SQLite, MySQL, Postgres, Oracle y Microsoft SQL Server. Todos ellos admiten el estándar de lenguaje SQL común, cada implementación puede definir en las características adicionales y los tipos de almacenamiento que admite.

## Material de apoyo 📚

- https://fullstackopen.com/es/part13/uso_de_bases_de_datos_relacionales_con_sequelize
- https://sqlbolt.com/lesson/select_queries_introduction

### Donde puedo crear una base de datos? 🤔

- [ElephantSQL](https://www.elephantsql.com/)
- [Realway](http://www.railway.app)

Ademas que en esta repo encontraras un archivo llamado `database.sql` que contiene las tablas y datos que se usaran en el proyecto.

## Lecciones 📖

- [SQL Lección 1: Consultas SELECT 101](./Temas/Leccion_01.md)
- [SQL Lección 2: Consutlas con Restricciones P1 ](./Temas/Leccion_02.md)
- [SQL Lección 3: Consutlas con Restricciones P2](./Temas/Leccion_03.md)
- [SQL Lección 4: Filtrado y clasificación de resultados de consultas](./Temas/Leccion_04.md)

## Creando mi primera base de datos 📚

Para esta parte del proyecto usaremos Realway APP para crear nuestra base de datos, para crear una base de datos, usa el archivo `database.sql` que se encuentra en esta repo, puedes usar este base de datos para hacer los ejercicios de las lecciones y el proyecto.

## El Proyecto - my IMDB 🚀

En la carpeta de playground, encontrarás un proyecto basado en Nexjs (Node + React), que te ayudará a practicar lo que has aprendido hasta ahora. Para ejecutar el proyecto, sigue estos pasos:

    cd ReactSQL
    npm install
    npm run dev

El proyecto usa Primsa para conectarse a la base de datos

- [Prisma Get started](https://www.prisma.io/docs/getting-started)

---

## Guia para Integrar Prisma ![](assets/prisma-3.svg)

- Paso 1: Instalar Prisma

```bash
npm install prisma --save-dev

```

- Paso 2: Crear el archivo de configuración de Prisma

```bash
npx prisma init
```

- Paso 3: Conexion a la base de datos
- Añade tu url en el archivo `.env` y en el archivo `prisma/schema.prisma`

```javascript
    // 📂 prisma/schema.prisma
    datasource db {
        provider = "postgresql"
        url      = env("DATABASE_URL")
    }
```

## Introspección de la base de datos

- Paso 1: Introspección de la base de datos

La introspección de la base de datos en Prisma es un proceso mediante el cual se analiza la estructura de una base de datos existente y se genera automáticamente un esquema de datos en el lenguaje de programación utilizado en tu aplicación. Este esquema de datos es utilizado para interactuar con la base de datos mediante el cliente de Prisma.

```bash
npx prisma db pull
```

Este comando lee la variable de entorno DATABASE_URL que está definida en .env y se conecta a su base de datos. Una vez que se establece la conexión, realiza una introspección de la base de datos (es decir, lee el esquema de la base de datos). Luego traduce el esquema de la base de datos de SQL a un modelo de datos Prisma.

---

## ¿Por qué usar un ORM?

Un ORM (Object-Relational Mapping) es una técnica de programación que permite interactuar con una base de datos utilizando código en lenguaje de programación en lugar de utilizar consultas SQL. Los ORM son útiles por varias razones:

- Abstracción de la base de datos: Un ORM permite trabajar con una abstracción de la base de datos en lenguaje de programación en lugar de tener que escribir consultas SQL, lo que puede ser más fácil y legible para los desarrolladores.

- Portabilidad: Al utilizar un ORM, el código se vuelve menos dependiente del sistema de gestión de bases de datos subyacente, lo que facilita la migración a otro sistema de gestión de bases de datos en el futuro.

- Seguridad: Los ORM proporcionan mecanismos de seguridad incorporados para prevenir inyección SQL y otras vulnerabilidades de seguridad comunes.

- Productividad: Los ORM automatizan tareas comunes como la generación de código para realizar operaciones CRUD (crear, leer, actualizar y eliminar) en la base de datos, lo que puede ahorrar tiempo y esfuerzo para los desarrolladores.

- Mejora en el diseño: El uso de un ORM promueve el uso de patrones de diseño orientado a objetos, lo que puede mejorar la arquitectura y el diseño de la aplicación en general.

En resumen, los ORM son una herramienta muy útil para los desarrolladores ya que ayudan a simplificar el trabajo con bases de datos, mejoran la seguridad, aumentan la productividad, y mejoran el diseño de la aplicación.
