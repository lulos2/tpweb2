<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{BASE_URL}styles/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <title>tapioca</title>
</head>
<body>
<div class="row col-12 border border-4 m-1 d-flex justify-content-start">
    <h1 class="col-4">
        <span class="fw-bold">nike</span>
    </h1>
    <h3 class="text-end"> {if $smarty.cookies.name|default}Hola {$smarty.cookies.name}  {/if}</h3>
</div>