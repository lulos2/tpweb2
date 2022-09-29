

<div class="row justify-content-center">
    {foreach from=$products item=$product}
    <div class="col-3 m-4 ">
        <div class="card ">
            <img src="{BASE_URL}/images/MR6BK34NABGRB7BKKLLMQT23VM.jpg" class="card-img-top" alt="{$product->nombre}">
            <div class="card-body">
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


