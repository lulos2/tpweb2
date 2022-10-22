<?php
require_once "controllers/ProductController.php";
require_once "controllers/UserController.php";

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$tapiocaController = new ProductController();
$userController = new UserController();
$userController->checkTimeOut();
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
            if((!empty($_POST["precio"])) && (!empty($_POST["nombre"])) && (!empty($_POST["descripcion"])) && (!empty($_POST["coleccion"]))){
                $tapiocaController->insertAction($_POST["precio"],$_POST["nombre"],$_POST["descripcion"],$_POST["coleccion"],$_POST["categoria"]);
            }
            else{
                $tapiocaController->redirectRoute("admin");
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

        case 'deleteProduct':
            $tapiocaController->deleteProductAction(end($params));
        break;

        case 'deleteUser':
            $userController->deleteUserAction(end($params));
        break;

        case 'update':
            if(!empty($params[1])&&($params[1]=='updateProduct')){
                    $tapiocaController->updateProductAction($_POST["id"],$_POST["precio"],$_POST["nombre"],$_POST["descripcion"],$_POST["coleccion"],$_POST["categoria"]);
            }
            else{
                $tapiocaController->updateAction(end($params));
            }
        break;

        case 'updateProduct':
            $tapiocaController->updateProductAction($_POST["id"],$_POST["precio"],$_POST["nombre"],$_POST["descripcion"],$_POST["coleccion"],$_POST["categoria"]);
        break;

        case 'insertCategory':
            if (!empty($_POST['newCategory'])){
                $tapiocaController->insertCategoryAction($_POST['newCategory']);
            }
            else{
                $tapiocaController->redirectRoute("admin");
            }
        break;

        case 'deleteCategory':
            $tapiocaController->deleteCategoryAction(end($params));
        break;

        case 'updateCategory':
            if ((!empty($_POST["categoryId"]))&&(!empty($_POST["newCategory"]))){
            $tapiocaController->modifyCategoryAction($_POST["categoryId"],$_POST["newCategory"]);
            }
            else{
                $tapiocaController->redirectRoute("admin");
            }
        break;

        case 'insertCollection':
            if (!empty($_POST['nameCollection'])&&(!empty($_POST['yearCollection'])&&(!empty($_POST['authorCollection']))&&(!empty($_POST['stationCollection'])))){
                $tapiocaController->insertCollectionAction($_POST["nameCollection"],$_POST["yearCollection"],$_POST["authorCollection"],$_POST["stationCollection"]);
            }
            else{
                $tapiocaController->redirectRoute("admin");
            }
        break;

        case 'updateCollection':
            if ((!empty($_POST["collectionId"]))&&(!empty($_POST['nameCollection']))&&(!empty($_POST['yearCollection'])&&(!empty($_POST['authorCollection']))&&(!empty($_POST['stationCollection'])))) {
                $tapiocaController->updateCollectionAction($_POST["collectionId"], $_POST["nameCollection"], $_POST["yearCollection"], $_POST["authorCollection"], $_POST["stationCollection"]);
            }
            else{
                $tapiocaController->redirectRoute("admin");
            }
        break;

        case 'deleteCollection':
            $tapiocaController->deleteCollectionAction(end($params));
        break;

        default:
            $tapiocaController->homeAction();
        break; 
        }

        /*TODO :
                grab the superglobals in the controller to not have functions with so many arguments */