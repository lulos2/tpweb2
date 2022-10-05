<?php
require_once "controllers/BaseController.php";
require_once "models/CategoriaModel.php";
require_once "models/RopaModel.php";
require_once "views/TapiocaView.php";
require_once "helpers/Helper.php";

class ProductController extends BaseController{
    private $categoriaModel;
    private $ropaModel;
    private $view;
    private $max_size;
    private $helper;

    

    function __construct($max_size = 1000000){
        $this->categoriaModel = new CategoriaModel();
        $this->ropaModel = new RopaModel();
        $this->view = new TapiocaView();
        $this->helper = new Helper();
        $this->max_size = $max_size;
    }
    public function homeAction($categoria = null){
        $categorias = $this->categoriaModel->getCategorias();
        $products = (!$categoria) ? $this->ropaModel->getProductos() : $this->ropaModel->getProductsByCategory($categoria);
        $this->view->showHome($products,$categorias);
    }
    public function insertAction($price,$name,$description,$collection,$category){
       /*  var_dump($_FILES);die(); */
        $this->ropaModel->insertProduct($price,$name,$description,$this->getFilePath(),$collection,$category);
        $this->redirectRoute("home");
    }//comparar $_files ,files y form  
    public function getFilePath(){
        if ($this->helper->checkAdmin() && $this->valid_file()){
            $filePath = "uploads/" . uniqid("", false) . "."
            . strtolower(pathinfo($_FILES['img']['name'], PATHINFO_EXTENSION));
            move_uploaded_file($_FILES['img']['tmp_name'], $filePath);
            return $filePath;
        }
    }

    public function valid_file(){
        $file = $_FILES['img'];
        $file_name = $file['name'];
        $file_size = $file['size'];
        $file_error = $file['error'];
        $file_parts = explode('.', $file_name);
        $file_ext = strtolower(end($file_parts));
        $allowed = array('jpg', 'jpeg', 'png');
        if (in_array($file_ext, $allowed))
            if ($file_error === 0)
                if ($file_size <= $this->max_size)
                    return true;
                else{
                    echo "El archivo es demasiado grande";
                }
            else{
                echo "Error al subir el archivo";
            }
        else{
            echo "Extension invalida";
        }
    return false;
    } 
}