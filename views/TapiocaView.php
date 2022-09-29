<?php 
include_once "libs/smarty/libs/Smarty.class.php";

class TapiocaView{
    private $smarty;

    function __construct()
    {
        $this->smarty = new Smarty();
    }
    public function showHome($ropa,$categorias){
        $this->smarty->assign("categories",$categorias);
        $this->smarty->assign("products",$ropa);
        $this->smarty->display("home.tpl");
    }
}







?>