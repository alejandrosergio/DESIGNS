<?php

    require_once("models/usuarios_model.php");

    $usuarios = new Usuarios_model();
    $matrizUsuarios = $usuarios -> listar_usuarios_activo();

    require_once("views/viewUser.php");

?>