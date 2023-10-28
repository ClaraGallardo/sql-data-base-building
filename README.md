# PROYECTO:

![alt text](https://github.com/ClaraGallardo/sql-data-base-building/blob/main/image/1366_2000.jpg)

## Introdución:

¡Hi Bob!🧔‍♂️

Bob Gunderson de Machasuchet nos ha contactado para reabrir un antiguo videoclub 🎞️ con el que ha estado soñando siempre.
Parece que Bob tiene las ideas claras cuando nos cuenta su historia. Quiere recuperar una antigua base de datos de un viejo ordenador que encontró en la tienda que pertencia al señor Montgomery Bumblebritches,el antiguo dueño de la tienda. 

Nos pide que recuperemos las antiguas fichas de la base de datos y de clientes, además quiere saber que películas fueron las mas populares. Además quiere saber el inventario actual de la tienda y si algún cliente se quedo con alguna película.


# Objetivo:

Nos ha pasado varios archivos que formaban parte de una base de datos. Debemos hacer una limpieza de datos y construir nuestra base de datos para Bob. Así podrá tener todas sus películas al día y acceder a ella facilmente.

Haremos un breve analaisis para ver que información podemos proporcinar a Bob. 💻

Tras hechar un vistazo a los archivos csv vamos a limpiarlos.

*******NOTA PERSONAL: va abrir una tienda nueva. Pensar que relación puede tener... si la tiene.

### Limpieza:

Cargamos los archivos csv al jupyter notebbok.Tras echar un vistazo a los archivos csv vamos a limpiarlos.
Creamos nuestra librería con las funciones de limpieza 🧽🧹.

Los dataframe revisidos y limpiados:

-Actors: 

Sin,valores nulos. Ponemos bonitos los títulos de las columnas.
Al sacar duplicados pone False, pero si buscamos por nombre y apellido no aparece uno 🔎🔎. 
Lo quitamos y ponemos actor id bien para que no haya salto y reseteamos index.
Convertimos la columna Last Update de dataTime.

-Category:

Igual,ponemos bien los títulos,sin valores nulos ni duplicados.Covertimos las fechas a dataTime.

-Film:

Ponemos bien los títulos , tenemos una columna(Original Language Id) llena de nulos, la borramos.
El resto igual sin nulos ni dupplicados.

-Inventory:

Idem 🟰

-Language:

Idem 🟰

-old_HDD:

Idem, los duplicados los filtro de manera diferente, miro si el actor aparece mas de una vez en una misma película.

-Rental:

Idem, reviso que las fechas de devolución sean mayores a las adquisición.




