<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

require_once './libs/router.php';
require_once './app/controllers/peliculaController.php';

// crea el router
$router = new Router();

// defina la tabla de ruteo
$router->addRoute('api/peliculas', 'GET', 'PeliculasController', 'obtenerTodasLasPeliculas');
$router->addRoute('api/peliculas/:ID', 'GET', 'PeliculasController', 'obtenerUnaPelicula');
$router->addRoute('api/peliculas/:ID', 'DELETE', 'PeliculasController', 'borrarUnaPelicula');
$router->addRoute('api/peliculas', 'POST', 'PeliculasController', 'insertarPelicula');



// ejecuta la ruta (sea cual sea)
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
