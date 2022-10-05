<?php

class Helper{

    function checkAdmin(){
        session_start();
        $isLogged = (isset($_SESSION['rol'])&&($_SESSION['rol']=='admin'));        
        session_abort();
        return $isLogged;
    }

    function isLogged(){
        session_start();
        $isLogged = (isset($_SESSION['logged']));
        session_abort();
        return $isLogged;
    }
    
    function getUser(){
        $user = [];
        session_start();
        if (isset($_SESSION['logged'],$_SESSION['rol'])){
           $user['rol'] = $_SESSION['rol'];
           $user['logged'] = $_SESSION['logged'];
        }
        else {
            $user['rol'] = "invitado";
            $user['logged'] = $_SESSION['logged'];
        }
        session_abort();
        return $user;
    }   
}








?>