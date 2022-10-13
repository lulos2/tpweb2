{include file="header.tpl"} 
{include file="nav.tpl" categories=$categories}

{*---------------------------------update product-------------------------------------------*}
<form method="POST" action="updateProduct" enctype="multipart/form-data" >
  <fieldset>
    <legend class="m-4">modificar producto</legend>
    <input type="hidden" name="id" value="{$product->id}" class="form-control">
    <div class="mb-5">
      <input type="text" name="nombre" class="form-control" value="{$product->nombre}">
    </div>
    <div class="mb-5">
      <input type="text" name="descripcion" class="form-control" value="{$product->descripcion}">
    </div>
    <div class="input-group mb-5">
      <span class="input-group-text">$</span>
      <input type="text" name="precio" class="form-control" value="{$product->precio}" >
      <span class="input-group-text">.00</span>
    </div>
    <div class="row">
      <div class="col-1">
        <label class="input-group-text" for="inputGroupFile02">categoria</label>
      </div>
      <div class="col-11 mb-5">
        <select name="categoria" class="form-select">
          <option value=" {$product->id_tipo_fk}"></option>
          {foreach from=$categories item=$category}
            <option value="{$category->id}">{$category->nombre}</option>    
          {/foreach}
        </select>
      </div>
      <div class="col-11 mb-5">
        <select name="coleccion" class="form-select">
          <option value="{$product->id_coleccion_fk}"></option>
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
    <button type="submit" class="btn btn-primary col-10 m-5">modificar producto</button>
  </fieldset>
</form>
{include file="footer.tpl"}