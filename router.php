<?php
require_once "controllers/ProductController.php";
require_once "controllers/UserController.php";
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
        case 'checkIn':
            $userController->checkInAction();
        break;
        case 'register':
            if((!empty($_POST["nombre"])) && (!empty($_POST["email"]))&&(!empty($_POST["password"]))){                
               $userController->registerAction($_POST["nombre"],$_POST["email"],$_POST["password"]);
            }
            else{
                $userController->checkInAction("faltan datos");
            }
        break;
        case 'admin':
            $userController->adminAction();
        break;
        case 'logout':
            $userController->logoutAction();
        break;
        case'verify':
            $userController->verifyAction($_POST['email'], $_POST['password']);
        break;
        case 'insertProduct':
            if((!empty($_POST["precio"])) && (!empty($_POST["nombre"]))){
                $tapiocaController->insertAction($_POST["precio"],$_POST["nombre"],$_POST["descripcion"],$_POST["coleccion"],$_POST["categoria"]);
            }
        break;
        case 'modifyRol':
            if(!empty($_POST["user"])&&!(empty($_POST["rol"]))){
                $userController->updateAdminAction($_POST["user"],$_POST["rol"]);
            }
        break;
        case 'search':
            $tapiocaController->searchAction($_POST["search"]);
        break;
        case 'pdp':
            $tapiocaController->pdpAction(end($params));
        break;
        default:
            $tapiocaController->homeAction();
        break; 
        }
        


?>
