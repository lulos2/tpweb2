<?php
/* Smarty version 4.2.1, created on 2022-09-28 23:40:18
  from 'C:\xampp\htdocs\tpweb2\templates\home.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.2.1',
  'unifunc' => 'content_6334bf42bccfb6_42038694',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f2d0cc719d7e4538aef34617fd17a97224e960b8' => 
    array (
      0 => 'C:\\xampp\\htdocs\\tpweb2\\templates\\home.tpl',
      1 => 1664401160,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header.tpl' => 1,
    'file:nav.tpl' => 1,
    'file:productos.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
),false)) {
function content_6334bf42bccfb6_42038694 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('titulo'=>"Home - Ropa"), 0, false);
?> 
<?php $_smarty_tpl->_subTemplateRender("file:nav.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('categories'=>$_smarty_tpl->tpl_vars['categories']->value), 0, false);
$_smarty_tpl->_subTemplateRender("file:productos.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('products'=>$_smarty_tpl->tpl_vars['products']->value), 0, false);
$_smarty_tpl->_subTemplateRender("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
