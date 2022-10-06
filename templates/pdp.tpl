{include file="header.tpl" titulo="Home - Ropa" }
<figure class="figure">
  <img src="{BASE_URL}images/{$producto->img}" class="figure-img img-fluid rounded" alt="{$producto->nombre}">
  <figcaption class="figure-caption text-center">{$producto->nombre}</figcaption>
</figure>


<div class="row">
  <div class="col-4">
    <div id="list-example" class="list-group">
      <a class="list-group-item list-group-item-action" href="#list-item-1">{$producto->precio}</a>
      <a class="list-group-item list-group-item-action" href="#list-item-1">{$producto->descripcion}</a>
      <a class="list-group-item list-group-item-action" href="#list-item-2">{$producto->anio}</a>
      <a class="list-group-item list-group-item-action" href="#list-item-3">{$producto->nombre_coleccion}</a>
      <a class="list-group-item list-group-item-action" href="#list-item-4">{$producto->estacion}</a>
    </div>
  </div>
  <div class="col-8">
  <div data-bs-spy="scroll" data-bs-target="#list-example" data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0">
      <h4 id="list-item-2">precio</h4>
      <p>{$producto->precio}</p>
      <h4 id="list-item-2">año</h4>
      <p>{$producto->anio}</p>
      <h4 id="list-item-3">coleccion</h4>
      <p>{$producto->nombre_coleccion}</p>
      <h4 id="list-item-4">estacion</h4>
      <p>{$producto->estacion}</p>
      <h4 id="list-item-1">descripcion</h4>
      <p>{$producto->descripcion}</p>
    </div>
  </div>
</div>






{include file="footer.tpl"} 

