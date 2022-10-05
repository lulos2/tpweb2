<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    {if !$smarty.cookies.logged|default}
      <a class="navbar-brand me-4" href="{BASE_URL}login">iniciar sesion</a>
    {/if}
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="-bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{BASE_URL}home">home</a>
        </li>
        {foreach from=$categories item=$category}
            
        <li class="nav-item">
          <a class="nav-link" href="{BASE_URL}home/{$category->nombre}/{$category->id}">{$category->nombre}</a>
        </li>
        {/foreach}
        {if $smarty.cookies.logged|default && $smarty.cookies.logged && $smarty.cookies.rol == "admin"}
        <li class="nav-item">
          <a class="nav-link" href="{BASE_URL}admin">admin</a>
        </li>
        {/if}
        
      </ul>
      <form role="search" {if $smarty.get.action == "login"||$smarty.get.action == "checkIn"} hidden {else}class="d-flex" {/if} >
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">buscar</button>
      </form>
     
    </div>
  </div>
</nav>