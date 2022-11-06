<?php
require_once './app/models/peliculaModel.php';
require_once './app/views/peliculaView.php';

class PeliculasController
{
    private $model;
    private $view;
    private $data;


    function __construct()
    {
        $this->model = new PeliculasModel();
        $this->view = new PeliculasView();
        // lee el body del request
        $this->data = file_get_contents("php://input");
    }
    private function getData()
    {
        return json_decode($this->data);
    }

    public function obtenerTodasLasPeliculas($params = null)
    {
        $peliculas = $this->model->conseguirTodasLasPeliculas();
        $this->view->respuesta($peliculas);
    }
    public function obtenerUnaPelicula($params = null)
    {
        $id = $params[':ID'];
        $pelicula = $this->model->conseguirPeliculaDB($id);

        if ($pelicula){
            $this->view->respuesta($pelicula);
        }else{
            $this->view->respuesta("La tarea con el id=$id no existe", 404);
        }
    }
}
