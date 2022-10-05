

<div class="row justify-content-center">
    {foreach from=$products item=$product}
    <div class="col-3 m-4 ">
        <div class="card">
        {if $product->img}  
        <img src="{BASE_URL}images/{$product->img}" class="card-img-top" alt="{$product->nombre}">
        {/if}
            <div class= "card-body">
                <h5 class="card-title">{$product->nombre}</h5>
                {if $product->descripcion != null}
                <p class="card-text">{$product->descripcion}</p>
                {/if}
                <div class="text-end">
                    <a href="{BASE_URL}{$product->nombre}/{$product->id}" class="btn btn-primary text-end">${$product->precio}</a>
                </div>
            </div>
        </div>
    </div>
    {/foreach}
</div>


