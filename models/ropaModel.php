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
        $sentencia= $this->db->prepare("SELECT id , precio , nombre , descripcion , img FROM ropa WHERE id_tipo_fk = ?");
        $sentencia ->execute([$category]);
        $productsByCategory = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $productsByCategory;
    }
    public function insertProduct($precio,$nombre,$descripcion,$img,$coleccion = null,$categoria = null){
        
        $template = $this->db->prepare("INSERT INTO ropa(precio, nombre, descripcion, img, id_coleccion_fk, id_tipo_fk) VALUES(?, ?, ?, ?, ?, ?)");
        $template->execute(array($precio,$nombre,$descripcion,$img,$coleccion,$categoria));
    }

   
}