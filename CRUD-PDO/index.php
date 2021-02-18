<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MallaVial</title>
    <!-- CSS BOOTSTRAP -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- CSS -->
        <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <h1>MODEL VIEWS CONTROLLER</h1>
    <?php
        echo("<h4>Tabla usuarios</4>");
        require_once("controllers/usuario_controller.php");
    ?>


    <!-- SCRIPTS BOOTSTRAP-->
        <script src="bootstrap/js/popper.min.js"></script>
        <script src="bootstrap/js/jquery-3.5.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- SCRIPTS -->
</body>
</html>