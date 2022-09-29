<?php
/* Smarty version 4.2.1, created on 2022-09-29 16:34:37
  from 'C:\xampp\htdocs\tpweb2\templates\productos.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.2.1',
  'unifunc' => 'content_6335acfd45a120_68173292',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a711f7d6eec4a8742aec7b7c7ce4daa2c826c81b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\tpweb2\\templates\\productos.tpl',
      1 => 1664462072,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6335acfd45a120_68173292 (Smarty_Internal_Template $_smarty_tpl) {
?>

<div class="row justify-content-center">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['products']->value, 'product');
$_smarty_tpl->tpl_vars['product']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['product']->value) {
$_smarty_tpl->tpl_vars['product']->do_else = false;
?>
    <div class="col-3 m-4 ">
        <div class="card ">
            <img src="<?php echo BASE_URL;?>
/images/MR6BK34NABGRB7BKKLLMQT23VM.jpg" class="card-img-top" alt="<?php echo $_smarty_tpl->tpl_vars['product']->value->nombre;?>
">
            <div class="card-body">
                <h5 class="card-title"><?php echo $_smarty_tpl->tpl_vars['product']->value->nombre;?>
</h5>
                <?php if ($_smarty_tpl->tpl_vars['product']->value->descripcion != null) {?>
                <p class="card-text"><?php echo $_smarty_tpl->tpl_vars['product']->value->descripcion;?>
</p>
                <?php }?>
                <div class="text-end">
                    <a href="<?php echo BASE_URL;
echo $_smarty_tpl->tpl_vars['product']->value->nombre;?>
/<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
" class="btn btn-primary text-end">$<?php echo $_smarty_tpl->tpl_vars['product']->value->precio;?>
</a>
                </div>
            </div>
        </div>
    </div>
    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</div>


<?php }
}
