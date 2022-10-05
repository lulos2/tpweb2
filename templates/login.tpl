{include file="header.tpl"} 
{include file="nav.tpl" categories=$categories}
 
    <div class="col-8">
        <form class="row g-3" method="POST" action="verify">
            <div class="col-12 m-5">
                <input type="email" class="form-control" name="email" placeholder="e-mail"required>
            </div>
            <div class="col-12 m-5">
                <input type="password" class="form-control" name="password" placeholder="contraseña"required>
            </div>
            <div class="col-12 m-5">
                <button type="submit" class="btn btn-primary mb-3">iniciar sesion</button>
            </div>
            <div class="col-12 m-5">
                <a href="{BASE_URL}checkIn" class="btn btn-primary mb-3">registrarse</a>
            </div>
        </form>
    </div>

{include file="footer.tpl"}