{include file="header.tpl"} 
{include file="nav.tpl" categories=$categories}

<div class="accordion" id="accordionPanelsStayOpenExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
        cargar producto
      </button>
    </h2>
    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
      <div class="accordion-body">
        <form method="POST" action="insertProduct" enctype="multipart/form-data" >
          <fieldset>
            <div class="mb-5">
              <input type="text" name="nombre" class="form-control" placeholder="nombre" required>
            </div>
            <div class="mb-5">
              <input type="text" name="descripcion" class="form-control" placeholder="descripcion" required>
            </div>
            <div class="input-group mb-5">
              <span class="input-group-text">$</span>
              <input type="text" name="precio" class="form-control" placeholder="precio" required>
              <span class="input-group-text">.00</span>
            </div>
            <div class="row">
              <div class="col-1">
                <label class="input-group-text" for="inputGroupFile02">categoria</label>
              </div>
              <div class="col-11 mb-5">
                <select name="categoria" class="form-select">
                  <option value = ""></option>
                  {foreach from=$categories item=$category}
                    <option value="{$category->id}">{$category->nombre}</option>
                  {/foreach}
                </select>
              </div>
              <div class="col-1">
                <label class="input-group-text" for="inputGroupFile02">coleccion</label>
              </div>
              <div class="col-11 mb-5">
                <select name="coleccion" class="form-select">
                  <option value = ""></option>
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
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
        cargar categoria
      </button>
    </h2>
    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
      <div class="accordion-body">
        <form action="insertCategory" method="post">
          <div class="mb-5">
            <input type="text" name="newCategory" class="form-control" placeholder="nueva categoria" required>
          </div>
          <button type="submit" class="btn btn-primary col-10 m-5">cargar categoria</button>
        </form>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
        borrar categoria
      </button>
    </h2>
    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
      <div class="accordion-body">
        <div class="adminUserPanel">
          {foreach from=$categories item=$category}
            <a href="{BASE_URL}deleteCategory/{$category->id}" class="deleteButton"><button type="button" class="btn btn-danger">borrar<option value="{$category->id}">{$category->nombre}</option></button></a>
          {/foreach}
        </div>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
        modificar categoria
      </button>
    </h2>
    <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFour">
      <div class="accordion-body">
        <form action="updateCategory" method="post">
          <div class="col-11 m-5">
            <select name="categoryId" class="form-select">
              <option value=""> </option>
              {foreach from=$categories item=$category}
                <option value="{$category->id}">{$category->nombre}</option>
              {/foreach}
            </select>
            <input type="text" name="newCategory" class="form-control" placeholder="nueva categoria" required>
            <button type="submit" class="btn btn-primary col-10 m-5">modificar categoria</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingFive">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
        modificar rol
      </button>
    </h2>
    <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFive">
      <div class="accordion-body">
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
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingSix">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix" aria-expanded="false" aria-controls="panelsStayOpen-collapseSix">
        borrar usuario
      </button>
    </h2>
    <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSix">
      <div class="accordion-body">
        <div class="adminUserPanel">
          {foreach from=$users item=$user}
            <a href="{BASE_URL}deleteUser/{$user->id}" class="deleteButton"><button type="button" class="btn btn-danger">borrar<option value="{$user->id}">{$user->nombre} {$user->email} {$user->rol}</option></button></a>
          {/foreach}
        </div>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingSeven">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSeven" aria-expanded="false" aria-controls="panelsStayOpen-collapseSeven">
        agregar coleccion
      </button>
    </h2>
    <div id="panelsStayOpen-collapseSeven" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSeven">
      <div class="accordion-body">
        <form action="insertCollection" method="post">
          <div class="mb-5">
            <input type="text" name="nameCollection" class="form-control" placeholder="nombre de la coleccion" required>
          </div>
          <div class="mb-5">
            <input type="text" name="yearCollection" class="form-control" placeholder="anio de la coleccion" required>
          </div>
          <div class="mb-5">
            <input type="text" name="authorCollection" class="form-control" placeholder="autor de la coleccion" required>
          </div>
          <div class="mb-5">
            <input type="text" name="stationCollection" class="form-control" placeholder="estacion de la coleccion" required>
          </div>
          <button type="submit" class="btn btn-primary col-10 m-5">cargar coleccion</button>
        </form>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingEight">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseEight" aria-expanded="false" aria-controls="panelsStayOpen-collapseEight">
        modificar coleccion
      </button>
    </h2>
    <div id="panelsStayOpen-collapseEight" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingEight">
      <div class="accordion-body">
        <form action="updateCollection" method="post">
          <div class="col-11 m-5">
            <select name="collectionId" class="form-select">
              <option value="">seleccione la coleccion a modificar</option>
              {foreach from=$collections item=$collection}
                <option value="{$collection->id_coleccion}">{$collection->nombre_coleccion}</option>
              {/foreach}
            </select>
            <div class="mb-5 mt-5">
              <input type="text" name="nameCollection" class="form-control" placeholder="nombre coleccion" required>
            </div>
            <div class="mb-5">
              <input type="text" name="stationCollection" class="form-control" placeholder="estacion de la coleccion" required>
            </div>
            <div class="mb-5">
              <input type="text" name="yearCollection" class="form-control" placeholder="a??o de la coleccion" required>
            </div>
            <div class="mb-5">
              <input type="text" name="authorCollection" class="form-control" placeholder="autor de la coleccion" required>
            </div>
            <button type="submit" class="btn btn-primary col-10 m-5">modificar collecion</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingNine">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseNine" aria-expanded="false" aria-controls="panelsStayOpen-collapseNine">
        borrar coleccion
      </button>
    </h2>
    <div id="panelsStayOpen-collapseNine" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingNine">
      <div class="accordion-body">
        <div class="adminUserPanel">
          {foreach from=$collections item=$collection}
            <a href="{BASE_URL}deleteCollection/{$collection->id_coleccion}" class="deleteButton"><button type="button" class="btn btn-danger">borrar<option value="{$collection->id_coleccion}">{$collection->nombre_coleccion}</option></button></a>
          {/foreach}
        </div>
      </div>
    </div>
  </div>
</div>
{include file="footer.tpl"}
{*
    TODO
        update collection:
        cuando seleccione un option del select
        precarge los datos en los imputs con sus valores actules
*}
