<?php
 

class RopaModel {
    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=tapioca;charset=utf8', 'root', '');
    }
    
    //Operacion auxiliar
    function getProductos(){
        $sentencia= $this->db->prepare("SELECT * FROM ropa");
        $sentencia->execute();
        $productos = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $productos;
    }
    function getProductsByCategory($category){
        $sentencia= $this->db->prepare("SELECT id , precio , nombre , descripcion FROM ropa WHERE id_tipo_fk = ?");
        $sentencia ->execute([$category]);
        $productsByCategory = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $productsByCategory;
    }

   
}