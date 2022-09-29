<?php
require_once "controllers/ProductController.php";
/* product.name like '%string%' */

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$tapiocaController = new ProductController();
$userController = new UserController();


$action = 'home';
if (isset($_GET['action']))
    $action = $_GET['action'];

$params = explode("/", $action);

    switch ($params[0]){
        case 'home':
            if(!empty($params[2])){
                $tapiocaController->homeAction($params[2]);
            }
            else{
                $tapiocaController->homeAction();
            }
        break;
        case 'login':
                $userController->loginAction();
        break;
     

        
        case 'default':
            $tapiocaController->homeAction();
        break; 
    }


?>
