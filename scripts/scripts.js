window.addEventListener('DOMContentLoaded',function(){
    listenerPasswords()
});

function listenerPasswords(){
    let mensaje;
    document.getElementById("pasword2").addEventListener("keyup", function(){
        if(corroborarPassword()){
            mensaje = "contraseña valida";
        }
        else{
            mensaje = "las contraseñas deben coincidir";
        }
        error(mensaje);
    });
}

function corroborarPassword(){
    let password1 = document.getElementById("pasword1").value;
    let password2 = document.getElementById("pasword2").value;
    if(password1 !== password2){
        return false;
    }
    return true;
}

function error(mensaje){ // muestra errores en inputs
    let contenedor = document.getElementById('error');
    let exist = document.getElementById("cartelError");
    if(!exist){
        let h3 = document.createElement('h3');
        h3.id = "cartelError";
        if(mensaje){
            contenedor.appendChild(h3).innerHTML = mensaje;
            exist = true;
            contenedor.className = "";
        }
        else{
            contenedor.className = "";
            contenedor.querySelectorAll('h3').forEach( n => n.remove());
        }
    }
    else{
        document.getElementById("cartelError").innerHTML = mensaje;
    }
}

