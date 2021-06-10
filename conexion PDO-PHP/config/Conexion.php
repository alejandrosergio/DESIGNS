<?php 

class Connection
	{

		private $server;
		private $username;
		private $password;
		private $databasename;
		protected $conection;
		
		function __construct()
		{
			$this->SetDataConnection();
			$this->establishConnection();
		}

        protected function SetDataConnection()
        {

			require('Config.php');
			$this->server=$server;
			$this->username=$username;
			$this->password=$password;
			$this->databasename=$databasename;

		}

        protected function establishConnection()
        {
            $connectionString = "mysql:hos=".$this->server.";dbname=".$this->databasename.";charset=utf8";

            try{
                $this->conection = new PDO($connectionString,$this->username,$this->password);
                $this->conection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                //echo "CONEXION EXITOSA!!";
            }catch (Exception $e){
                $this->conection = 'Error de conexión';
                echo "ERROR: " . $e->getMessage();
            }
		}
    }

    //$obj = new Connection();
