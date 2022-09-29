<?php
require_once "models/CategoriaModel.php";
require_once "models/RopaModel.php";

require_once "views/TapiocaView.php";

class ProductController{
    private $categoriaModel;
    private $ropaModel;
    private $view;

    function __construct()
    {
        $this->categoriaModel = new CategoriaModel();
        $this->ropaModel = new RopaModel();
        $this->view = new TapiocaView();
    }



    public function homeAction($categoria = null){
        $categorias = $this->categoriaModel->getCategorias();
        $products = (!$categoria) ? $this->ropaModel->getProductos() : $this->ropaModel->getProductsByCategory($categoria);
        $this->view->showHome($products,$categorias);
    }
}