<?php

class PeliculasModel
{
    private $db;

    function __construct()
    {
        $this->db = new PDO("mysql:host=localhost;" . "dbname=db_peliculas_pe;" . "charset=utf8", "root", "");
    }

    public function conseguirTodasLasPeliculas()
    {
        $query = $this->db->prepare("SELECT * FROM peliculas");
        $query->execute();
        $peliculas = $query->fetchAll(PDO::FETCH_OBJ);
        return $peliculas;
    }
    public function conseguirPeliculaDB($id)
    {
        $query = $this->db->prepare("SELECT * FROM peliculas LEFT JOIN generos ON peliculas.id_genero = generos.id_genero WHERE id_peliculas = ?");
        $query->execute([$id]);
        $pelicula = $query->fetch(PDO::FETCH_OBJ);
        return $pelicula;
        /* "SELECT * FROM peliculas LEFT JOIN generos ON id_genero = id_genero WHERE id_peliculas = ?" */
    }
    public function borrarPelicula($id){
        $query = $this->db->prepare("DELETE FROM peliculas WHERE id_peliculas = ?");
        $query->execute([$id]);
    }
    public function insertarPeliculaDB($nombre, $anio, $id_genero){
        $query = $this->db->prepare("INSERT INTO peliculas (nombre, anio, id_genero) VALUES (?, ?, ?)");
        $query->execute([$nombre, $anio, $id_genero]);
        return $this->db->lastInsertId();
    }
}
