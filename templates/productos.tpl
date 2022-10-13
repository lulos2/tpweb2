
<div class="row justify-content-center">
    {foreach from=$products item=$product}
        <div class="col-3 m-4 ">
            <div class="card">
            {if $product->img}  
            <img src="{BASE_URL}{$product->img}" class="card-img-top" alt="{$product->nombre}">
            {/if}
                <div class= "card-body">
                    <h5 class="card-title">{$product->nombre}</h5>
                    {if $product->descripcion != null}
                    <p class="card-text">{$product->descripcion}</p>
                    {/if}
                    <div class="row">
                        <div class="text-end">
                            <a href="{BASE_URL}pdp/{$product->slug}/{$product->id}"name="id" class="btn btn-primary text-end">${$product->precio}</a>
                            {if $smarty.cookies.rol|default && $smarty.cookies.rol == "admin"}
                                <a href="{BASE_URL}deleteProduct/{$product->id}"name="id" class="btn btn-primary text-end">Borrar</a>
                                <a href="{BASE_URL}update/{$product->id}"name="id" class="btn btn-primary text-end">modificar</a>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    {/foreach}
</div>


