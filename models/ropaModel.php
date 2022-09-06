<?php
class RopaModel {
        private $db;
        private function connect()
        {
                $this->db = new PDO('mysql:host=localhost;'.'dbname=guiaTelefonica;charset=utf8', 'root', '');
        }
}