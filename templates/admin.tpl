{include file="header.tpl"} 
{include file="nav.tpl" categories=$categories}
{*-------------------insert product-------------------------*}
<form method="POST" action="insertProduct" enctype="multipart/form-data" >
  <fieldset>
    <legend class="m-4">cargar producto</legend>
    <div class="mb-5">
      <input type="text" name="nombre" class="form-control" placeholder="nombre">
    </div>
    <div class="mb-5">
      <input type="text" name="descripcion" class="form-control" placeholder="descripcion">
    </div>
    <div class="input-group mb-5">
      <span class="input-group-text">$</span>
      <input type="text" name="precio" class="form-control" placeholder="precio" >
      <span class="input-group-text">.00</span>
    </div>
    <div class="row">
      <div class="col-1">
        <label class="input-group-text" for="inputGroupFile02">categoria</label>
      </div>
      <div class="col-11 mb-5">
        <select name="categoria" class="form-select">
          <option value="null"></option>
          {foreach from=$categories item=$category}
            <option value="{$category->id}">{$category->nombre}</option>    
          {/foreach}
        </select>
      </div>
      <div class="col-11 mb-5">
        <select name="coleccion" class="form-select">
          <option value="null"></option>
          {foreach from=$collections item=$collection}
            <option value="{$collection->id_coleccion}">{$collection->nombre_coleccion}</option>    
          {/foreach}
        </select>
      </div>
    </div>
    <div class="input-group mb-3">
      <input type="file" class="form-control" name="img" placeholder="imagen">
      <label class="input-group-text" for="inputGroupFile02">seleccione imagen</label>
    </div>
    <button type="submit" class="btn btn-primary col-10 m-5">cargar producto</button>
  </fieldset>
</form>

{* -------------------------------user panel-------------------- *}
{* me traigo a todos los usuarios y selecciono los que quiero darle autoridad de admin o no*}

  <div class="col-12 text-center">
    <h3>modificar rol</h3>
  </div>
  <form action="modifyRol" method="post">
    <div class="col-11 m-5">
      <select name="user" class="form-select">
        <option value="null"> </option>
        {foreach from=$users item=$user}
          <option value="{$user->id}">{$user->nombre} {$user->email} {$user->rol}</option>   
        {/foreach}
      </select>
      <select name="rol" class="form-select">
        <option value="user">usuario</option> 
        <option value="admin">admin</option> 
      </select>
      <button type="submit" class="btn btn-primary col-10 m-5">modificar rol</button>
    </div>
  </form>
  <div class="col-12 text-center">
    <h3>borrar usuario</h3>
  </div>
  <div class="adminUserPanel">
    {foreach from=$users item=$user}
      <a href="{BASE_URL}deleteUser/{$user->id}" class="deleteButton"><button type="button" class="btn btn-danger">borrar<option value="{$user->id}">{$user->nombre} {$user->email} {$user->rol}</option></button></a>   
    {/foreach}
  </div>
 


 
{include file="footer.tpl"}
    