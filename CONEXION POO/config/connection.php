<?php 

	class Connection
	{
		private    $server;
		private    $username;
		private    $password;
		private    $database;
		protected  $connection;
		
		function __construct()
		{
			$this->SetDataConnection();
			$this->EstablishConnection();
		}

        private function EstablishConnection()
        {

			require_once('connectiondata.php');
			$this->server=$server;
			$this->username=$username;
			$this->password=$password;
			$this->database=$database;

		}

        private function SetDataConnection()
        {
			$this->connection = mysqli_connect($this->server,$this->username,$this->password,$this->database);

            if (!$this->connection)
            {
				exit('Error con la conexion a la base de datos');
                
			}else{
				echo("Se conecto exitosamente");
			}
		}
    }
?>