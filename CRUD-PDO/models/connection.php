<?php 
class Connection
	{
		public static function Connect(){

			try{
				
				$connect = new PDO('mysql:host=localhost; dbname=MallaVial', 'root' , '');
				$connect->setAttribute(PDO::ATTR_ERRMODE , PDO::ERRMODE_EXCEPTION);
				$connect->exec("SET CHARACTER SET UTF8");

			} catch (Exception $e) {
				
				die("error" . $e->getMessage());
				echo("linea del error " . $e->getLine);
			}
				return $connect;
		}
    }
?>