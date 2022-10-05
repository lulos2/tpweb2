<?php


class ColeccionModel {
    private $db;

    function __construct(){
         $this->db = new PDO('mysql:host=localhost;'.'dbname=tapioca;charset=utf8', 'root', '');
    }
    public function getColecciones(){
        $sentencia= $this->db->prepare("SELECT * FROM coleccion");
        $sentencia->execute();
        $colecciones = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $colecciones;
    }
}
?>