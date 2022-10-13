{include file="header.tpl" titulo="Home - Ropa" }
{include file="nav.tpl" categories=$categories }

<div class="row">
  <div class="col-4 m-5">
    <figure class="figure">
      <img src="{BASE_URL}{$producto->img}" class="figure-img img-fluid rounded" alt="{$producto->nombre}">
      <figcaption class="figure-caption text-center">{$producto->nombre}</figcaption>
    </figure>
  </div>
  <div class="col-7 mt-5">
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