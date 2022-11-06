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
        $query = $this->db->prepare("SELECT * FROM peliculas WHERE id_peliculas = ?");
        $query->execute([$id]);
        $pelicula = $query->fetchAll(PDO::FETCH_OBJ);
        foreach ($pelicula as $genre) {
            $query = $this->db->prepare("SELECT * FROM generos WHERE id_genero = ?");
            $query->execute([$genre->id_genero]);
            $genero = $query->fetch(PDO::FETCH_OBJ);
            $genre->id_genero = $genero->genero;
        }
        return $pelicula;
    }
}
