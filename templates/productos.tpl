
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
                                <a href="{BASE_URL}update/{$product->id}"name="id">
                                    <lord-icon
                                            src="https://cdn.lordicon.com/alzqexpi.json"
                                            trigger="hover"
                                            colors="primary:#121331,secondary:#c71f16,tertiary:#ffc738,quaternary:#e8308c,quinary:#c67d53"
                                            stroke="60"
                                            state="hover-1"
                                            style="width:65px;height:65px">
                                    </lord-icon>
                                </a>
                                <a href="{BASE_URL}deleteProduct/{$product->id}"name="id">
                                    <lord-icon
                                        src="https://cdn.lordicon.com/qjwkduhc.json"
                                        trigger="hover"
                                        colors="primary:#646e78,secondary:#848484,tertiary:#e83a30"
                                        style="width:65px;height:65px">
                                    </lord-icon>
                                </a>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    {/foreach}
</div>


