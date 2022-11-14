# Leo api imdb

# Idea de la api

<p>
Esta api rinde homenaje a la famosa base de datos en linea "imdb" (famosa base de datos sobre series y peliculas). La idea de la misma es para que sirva para otros aficionados al septimo arte a crear proyectos relacionados al cine. La api cuenta con una variedad de peliculas (con sus respectivos generos) a los cuales se le puede dar uso para tu proyecto.
</p>

# Endpoints basicos del servicio:

## GET (get general, todas las peliculas de la tabla) 
<p>Endpoint</p>

<p> http://localhost/leo-api-imdb/api/peliculas/ </p>

## GET/:ID (trae la pelicula con :ID)
<p>Endpoint</p>

<p> http://localhost/leo-api-imdb/api/peliculas/:ID </p>

<p>Ejemplo</p>

<p> http://localhost/leo-api-imdb/api/peliculas/21 </p>

## POST (Informacion (pelicula) a insertarse en formato JSON, validaciones por si se encuentra incompleta o erronea hecha)

<p>Endpoint</p>

<p> http://localhost/leo-api-imdb/api/peliculas/ </p>

<p>Ejemplo</p>
<p>Formato JSON, via raw:</p>
<p>
{
    "nombre": "nombre_de_la_pelicula",
    "anio": "0000",
    "produccion": "costo_de_produccion", 
    "recaudacion": "recaudacion", 
    "id_genero": "genero" 
}
</p>

<p>
    Datos a tener a en cuenta para un POST.

    nombre:campo tipo string y obligatorio.
    anio:campo tipo number y obligatorio.
    produccion:campo tipo string y no obligatorio.
    recaudacion:campo tipo string y no obligatorio.
    id_genero:/campo tipo number y obligatorio.
</p>


