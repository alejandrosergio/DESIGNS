<?php
    session_start();
    require_once("../controller/controller_login.php");

	if (isset($_POST['email']) && isset($_POST['password'])) {

		if ($con->connect_errno) {
			echo "Lo sentimos, la conexion no fue exitosa <br>";
			echo "Error,".$con->connect_errno."<br>";
			die();
		}
		else {
			$email = $_POST['email'];
			$password = $_POST['password'];

			$sql = "SELECT usuario,email,contraseña FROM usuario WHERE  email='$email' AND contraseña ='$password' AND estado = 'activo' ";
			if (!$respuesta = $con -> query($sql)) {
			echo "Lo sentimos, la consulta no pudo efectuarse <br>";
			echo "Query ". $sql ."<br>";
			echo "Error," . $con->connect_errno . "<br>";
			die();	
			}
			if ($respuesta -> num_rows === 0) {
				echo "<script>alert('tus datos no existen en la base de datos, intenta de nuevo! ')</script>";
				echo "<script>window.open('login.php  ','_self')</script>";
			}

			while ($email = $respuesta->fetch_assoc()) {

				/* $_SESSION['usuario']=$usuario['usuario'];
				$_SESSION['email']=$usuario['email'];
				$_SESSION['password']=$usuario['contraseña']; */

				/* $StringFoto = $usuario['usu_foto'];
				$rest = substr($StringFoto, 3);
					
				$_SESSION['foto']=$rest; */
				
				echo "<script>alert('Bienvenido  A MallaVial! ')</script>";
				echo "<script>window.open('../index.php   ','_self')</script>";
			}
		}
		
			} else {
			echo "No entraste correctamente al sistema";
			header("location: logout.php");
			exit();
	}
?>