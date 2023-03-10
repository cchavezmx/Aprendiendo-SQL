## [SQL Lección 4: Filtrado y clasificación de resultados de consultas](https://sqlbolt.com/lesson/filtering_sorting_query_results)

Anque los datos en una base de datos pueden ser únicos, hay ocaciones donde es necesarios agruparlos o filtrar datos repetidos, exploremos algunas de estas técnicas.

### DISTINCT

La cláusula `DISTINCT` se usa para devolver solo valores distintos en una columna. Esto es conveniente para descargar filas que tienen un valor de columna duplicado en la tabla.

```sql
SELECT DISTINCT column, another_column, … FROM mytable WHERE condition(s);
```

Dado que 'DISTINCT' eliminará ciegamenta las filas duplicadas, aprenderemos más adelante cómo usar 'GROUP BY' para agrupar filas que tienen valores de columna duplicados.

### ORDER BY

Aveces es necesario ordenar los resultados de una consulta. Esto se puede hacer con la cláusula `ORDER BY`.

```sql
SELECT column, another_column, … FROM mytable WHERE condition(s) ORDER BY column ASC|DESC;
```

### LIMIT y OFFSET

Aveces es necesario limitar los resultados de una consulta. Esto se puede hacer con la cláusula `LIMIT`.

```sql
SELECT column, another_column, … FROM mytable WHERE condition(s) ORDER BY column ASC|DESC LIMIT num_limit OFFSET num_offset;
```

`OFFSET` especifica el número de filas a omitir antes de comenzar a devolver filas.

### Ejercicios 🏋️‍♀️

- Lista de todos los directores de películas de Pixar (alfabéticamente), sin duplicados ✓
- Enumere las últimas cuatro películas de Pixar lanzadas (ordenadas de la más reciente a la menos) ✓
- Enumere las primeras cinco películas de Pixar ordenadas alfabéticamente ✓
- Enumere las próximas cinco películas de Pixar ordenadas alfabéticamente ✓
