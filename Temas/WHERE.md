## [SQL Lección 2: Consultas con restricciones (Pt. 1)](https://sqlbolt.com/lesson/select_queries_with_constraints)

Ahora que ya sabemos cómo seleccionar datos de una tabla, vamos a aprender cómo filtrar los resultados de nuestras consultas. Para ello, usaremos la cláusula WHERE.

### Cláusula WHERE

La cláusula WHERE nos permite filtrar los resultados de una consulta basándonos en una o más condiciones. Las condiciones se especifican usando una expresión lógica. Las expresiones lógicas son una forma de escribir condiciones que pueden ser verdaderas o falsas. Por ejemplo, podemos escribir una expresión lógica que compruebe si un valor es mayor que otro, o que compruebe si un valor está incluido en un conjunto de valores.

```sql
--- Seleccionar consulta con una condición
SELECT column, another_column, … FROM mytable WHERE condition AND/OR another_condition AND/OR …;
```

### Operadores de comparación

| Operador            | Condición                                                     | Ejemplo SQL                   |
| ------------------- | ------------------------------------------------------------- | ----------------------------- |
| =, !=, < <=, >, >=  | Operadores numéricos estándar                                 | nombre_col != 4               |
| BETWEEN ... AND ... | El número está dentro del rango de dos valores (inclusive)    | col_name BETWEEN 1.5 AND 10.5 |
| NOT BETWEEN … AND … | El número no está dentro del rango de dos valores (inclusive) | col_name NOT BETWEEN 1 AND 10 |
| IN (…)              | El número existe en una lista                                 | col_name IN (2, 4, 6)         |
| NOT IN (…)          | El número no existe en una lista                              | col_name NOT IN (1, 3, 5)     |

### ¿Sabías que? 🤔

Como ya has notado SQL no requiere que escribas palabras clave en mayúsculas, pero es una buena práctica hacerlo. Esto hace que tu código sea más legible y fácil de entender.

### Ejercicios

- Encuentra la película con el id 10
- Encuentra el title y el director de cada película en la tabla que dure más de 90 minutos
- Encuentra el title y el director de cada película en la tabla que dure 150 minutos o más
- Ecuentra el title y el director de cada película en la tabla que fueron estrenadas en la década de 2000 a 2010
- Encuentra el title y el director de cada película en la tabla que fueron estrenadas antes de 2000 a 2010

- Encuentra las primeras 5 películas de pixar y su año de estreno

```sql
SELECT title, year FROM pixar_movies LIMIT 5;
```
