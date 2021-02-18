<?php

    class Usuarios_model{
        private $bd;
        private $usuarios;

        public function __construct()
        {
            require_once("models/connection.php");
            $this->bd=Connection::Connect();
            $this->usuarios=array();
        }

        public function listar_usuarios_inactivos(){
        
            $consulta=$this->bd->query("SELECT usu_numero_documento,usu_nombre1,usu_apellido1,usu_correo,tblrol_rol_id,usu_telefono,rol_descripcion FROM tblusuario,tblrol WHERE tblestado_est_id = 2 ");
            while ($filas = $consulta->fetch(PDO::FETCH_ASSOC)) {
                $this->usuarios[]=$filas;
            }
            return $this->usuarios;
        }

        public function listar_usuarios_activo(){
        
            $consulta=$this->bd->query("SELECT usu_numero_documento,usu_nombre1,usu_apellido1,usu_correo,tblrol_rol_id,usu_telefono,rol_descripcion FROM tblusuario,tblrol WHERE tblestado_est_id = 1 ");
            while ($filas = $consulta->fetch(PDO::FETCH_ASSOC)) {
                $this->usuarios[]=$filas;
            }
            return $this->usuarios;
        }


        
    }
?>