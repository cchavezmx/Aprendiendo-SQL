## [SQL Lección 1: Consultas SELECT 101](https://sqlbolt.com/lesson/select_queries_introduction)

### Comando SELECT

El comando SELECT es el comando más básico en SQL. Con él, podemos seleccionar datos de una tabla.

```sql
-- Seleccionar consulta para una tabla específica
    SELECT column, another_column, … FROM mytable;
```

El resultado de esta consulta será un conjunto bidimensional de filas y columnas, efectivamente una copia de la tabla, pero solo con las columnas que solicitamos.

Si quieremos recuperar todos los datos de una tabla, podemos usar el carácter especial `*` en lugar de enumerar las columnas.

```sql
-- Seleccionar todo de una tabla
    SELECT * FROM mytable;
```

## Ejercicios 📝

- Encuentra cada title de cada película en la tabla
- Encuentra el title y el director de cada película en la tabla
- Encuentra el title y el year de cada película en la tabla
- Encuentra toda la información de cada película en la tabla

- Encuentra cada title de cada película en la tabla que dure más de 90 minutos
