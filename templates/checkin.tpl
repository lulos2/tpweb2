{include file="header.tpl"} 
{include file="nav.tpl" categories=$categories}
 
<div class="col-8">
    <h2>{$error}</h2>
    <form class="row g-3" method="POST" action="register">
        <div class="col-12 m-5">
            <input type="text" class="form-control" name="nombre" placeholder="nombre de usuario"required>
        </div>
        <div class="col-12 m-5">
            <input type="email" class="form-control" name="email" placeholder="e-mail"required>
        </div>
        <div class="col-12 m-5">
            <input type="password" class="form-control" id="pasword1" placeholder="contraseña"required>
        </div>
        <div class="col-12 m-5">
            <input type="password" class="form-control" id="pasword2" name="password" placeholder="confirmar contraseña"required>
        </div>
        <div class="col-12 m-5" id="error">
        </div>
        <div class="col-12 m-5">
            <button type="submit" class="btn btn-primary mb-3">registrarse</button>
        </div>
    </form>
</div>

{include file="footer.tpl"}