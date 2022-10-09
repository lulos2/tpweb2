<?php


class CategoriaModel {
    
    private $db;

    function __construct(){
         $this->db = new PDO('mysql:host=localhost;'.'dbname=tapioca;charset=utf8', 'root', '');
    }

    public function getCategorias(){
        $sentencia= $this->db->prepare("SELECT * FROM tipo");
        $sentencia->execute();
        $categorias = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $categorias;
    }
}


