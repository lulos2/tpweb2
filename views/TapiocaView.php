<?php 
include_once "libs/smarty/libs/Smarty.class.php";

class TapiocaView{
    
    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }
    
    public function showHome($ropa,$categorias){
        $this->smarty->assign("categories",$categorias);
        $this->smarty->assign("products",$ropa);
        $this->smarty->display("home.tpl");
    }
    
    public function showLogin($categorias){
        $this->smarty->assign("categories",$categorias);
        $this->smarty->display("login.tpl");
    }
    
    public function showAdmin($categorias,$colecciones,$users){
        $this->smarty->assign("categories",$categorias);
        $this->smarty->assign("collections",$colecciones);
        $this->smarty->assign("users",$users);
        $this->smarty->display("admin.tpl");    
    }
    
    public function showcheckIn($categorias,$error){
        $this->smarty->assign("categories",$categorias);
        $this->smarty->assign("error",$error);
        $this->smarty->display("checkin.tpl");

    }
    
    public function showPdp($producto, $categorias){
        $this->smarty->assign("categories",$categorias);
        $this->smarty->assign("producto",$producto[0]);
        $this->smarty->display("pdp.tpl");
    }
}

?>