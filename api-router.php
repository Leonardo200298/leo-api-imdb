<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

require_once './libs/router.php';
require_once './app/controllers/peliculaController.php';

// crea el router
$router = new Router();

// defina la tabla de ruteo
$router->addRoute('api/peliculas', 'GET', 'PeliculasController', 'obtenerTodasLasPeliculas');



// ejecuta la ruta (sea cual sea)
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
