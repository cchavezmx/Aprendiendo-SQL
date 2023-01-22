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

- [SQL Lección 1: Consultas SELECT 101](./Temas/SELECT.md)
- [SQL Lección 2: Consutlas con Restricciones P1 ](./Temas/SELECT%20FROM%20MULTIPLE%20TABLES.md)

## El Proyecto 🚀

En la carpeta de ReactSQL, encontrarás un proyecto basado en Node, Express y React, que te ayudará a practicar lo que has aprendido hasta ahora. Para ejecutar el proyecto, sigue estos pasos:

    cd ReactSQL
    npm install
    npm start
