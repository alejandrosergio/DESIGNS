<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="container_table">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Documento</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Correo</th>
                    <th>Rol</th>
                    <th>Telefono</th>
                    <th>OPCIONES</th>
                </tr>
            </thead>
            <tbody>
        <?php
        foreach ($matrizUsuarios as $registro) {
            echo("<tr><td>" . $registro["usu_numero_documento"] . "</td>");
            echo("<td>" . $registro["usu_nombre1"] . "</td>");
            echo("<td>" . $registro["usu_apellido1"] . "</td>");
            echo("<td>" . $registro["usu_correo"] . "</td>");
            echo("<td>" . $registro["rol_descripcion"] . "</td>");
            echo("<td>" . $registro["usu_telefono"] . "</td>");
            echo("<td><button class='btn btn-primary'>Detalle</button><button class='btn btn-warning text-white'>Editar</button><button class='btn btn-danger'>Eliminar</button></td></tr>");
        }
        ?>
            </tbody>    
            <tfoot>
                <tr>
                    <td colspan="7">+ insertar</td>
                </tr>
            </tfoot>
        </table>
    </div>
</body>
</html>