<?php
require_once "models/UserModel.php";
require_once "views/TapiocaView.php";


class UserController{
    private $userModel;
    private $userView;
    public function __construct(){
        $this->userModel = new UserModel();
        $this->userView = new TapiocaView();
    }

    public function registerAction($nombre, $inputEmail, $password){
        try{
            $hashPasword = password_hash($password, PASSWORD_BCRYPT);
            $this->userModel->loadUser($nombre,$inputEmail,$hashPasword);
        }
        catch{
            $this->loginAction("este email ya existe");
        }
    }

    public function loginAction($error = null){
        




    }


}





?>