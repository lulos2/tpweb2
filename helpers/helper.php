<?php

class Helper{

    public static function checkAdmin(){
        if(!session_id()) session_start(['read_and_close' => 'true']);
        if(isset($_SESSION['rol'])&&($_SESSION['rol']=='admin'))
            return true;
        return false;
    }

    function isLogged(){
        if(!session_id()) session_start(['read_and_close' => 'true']);
        $isLogged = (isset($_SESSION['logged']));
        return $isLogged;
    }
    
    function getUser(){
        if(!session_id()) session_start(['read_and_close' => 'true']);
        $user = [];
        if (isset($_SESSION['logged'],$_SESSION['rol'])){
           $user['rol'] = $_SESSION['rol'];
           $user['logged'] = $_SESSION['logged'];
        }
        else {
            $user['rol'] = "invitado";
            $user['logged'] = $_SESSION['logged'];
        }
        return $user;
    }   
}








?>