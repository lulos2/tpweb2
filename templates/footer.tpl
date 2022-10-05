<div class="card text-center">
  <div class="card-header">
    nombre
  </div>
  <div class="card-body">
    <h5 class="card-title">vuelvas prontos</h5>
    <p class="card-text">gracias por su visita</p>
    <a href="{BASE_URL}home" class="btn btn-dark">go home</a>
    {if $smarty.cookies.logged|default && $smarty.cookies.logged}
      <a href="{BASE_URL}logout" class="btn btn-dark">cerrar sesion</a>
    {/if}
  </div>
  <div class="card-footer text-muted">
    tapioca
  </div>
</div>
<script src="https://kit.fontawesome.com/d3b466b5b4.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>