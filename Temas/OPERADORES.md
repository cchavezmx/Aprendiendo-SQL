## SQL Lección 2: Consultas con restricciones (Pt. 1)

Los operaradores nos permiten comparar valores y devolver un valor booleano (verdadero o falso), algunos de estos operados son case sensitive, es decir, distinguen entre mayúsculas y minúsculas, veamos alugnos de ellos:

| Operador   | Condición                                                                                                                      | Ejemplo SQL                                                       |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------- |
| =          | Comparación de cadenas exactas con distinción entre mayúsculas y minúsculas ( observe que el único es igual )                  | col_name = "abc"                                                  |
| != o <>    | Comparación de desigualdad de cadena exacta sensible a mayúsculas y minúsculas                                                 | nombre_col != "abcd"                                              |
| LIKE       | Comparación de cadenas exactas que no distingue entre mayúsculas y minúsculas                                                  | col_name LIKE "ABC"                                               |
| NO LIKE    | Comparación de desigualdad de cadena exacta insensible a mayúsculas y minúsculas                                               | col_name NO LIKE "ABCD"                                           |
| %          | Se usa en cualquier parte de una cadena para hacer coincidir una secuencia de cero o más caracteres (solo con LIKE o NOT LIKE) | col_name LIKE "%AT%" (matches "AT", ATTIC", "CAT" or even "BATS") |
| \_         | Se usa en cualquier parte de una cadena para hacer coincidir un solo carácter (solo con LIKE o NOT LIKE)                       | col*name LIKE "AN*" (matches "AND", but not "AN")                 |
| IN (…)     | La cadena existe en una lista                                                                                                  | nombre_col IN ("A", "B", "C")                                     |
| NOT IN (…) | La cadena no existe en una lista                                                                                               | col_name NOT IN ("D", "E", "F")                                   |

### ¿sabes que? 🤔

Las cadenas de caracteres se definen entre comillas simples o dobles, por ejemplo:

```sql
SELECT * FROM mytable WHERE col_name = 'abc';
```

### Ejercicios 📝

- Encuentra todas las películas de Toy Story
- Encuentra todas las películas dirigidas por John Lasseter
- Encuentra todas las películas que no fueron dirigidas por John Lasseter
- Encuentra todas las películas de WALL-\*
