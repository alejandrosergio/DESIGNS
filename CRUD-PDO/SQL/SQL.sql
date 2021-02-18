
/* BASE DE DATOS PROYECTO MALLA VIAL COSTOS E INVENTARIO*/

    /*BASE DE DATOS*/

        CREATE DATABASE MallaVial

    /*TABLAS*/

        /*TABLA MOVIMIENTO #1*/
        
        /*TABLA PROVEEDOR #2*/
            CREATE TABLE tblproveedor(
                pro_id INT(30)unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
                pro_nit INT(10)unsigned NOT NULL,
                pro_razon_social VARCHAR(50) NOT NULL,
                pro_correo VARCHAR(100) NOT NULL,
                pro_direccion VARCHAR(50) NOT NULL,
                pro_telefono INT(20)unsigned NOT NULL,
                pro_fecha_registro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
            );

        /*TABLA MOVIMIENTO INVENTARIO #3*/

        /*TABLA INVENTARIO #4*/

        /*TABLA HERRAMIENTA #5*/

        /*TABLA TIPO HERRAMIENTA #6*/

        /*TABLA MATERIAL #7*/

        /*TABLA TIPO MATERIAL #8*/

        /*TABLA MAQUINARIA #9*/

        /*TABLA TIPO MAQUINARIA #10*/

        /*TABLA BODEGA #11*/


        /*TABLA TIPO ZONA #12*/


        /*TABLA ESTADO #13*/

        CREATE TABLE tblestado(
                est_id INT(30)unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
                est_nombre VARCHAR(50) NOT NULL,
                est_fecha_registro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                /* Foraneas en tabla 8 */
                tbltipo_estado_tip_est_id INT(30)unsigned NOT NULL
            );
        
        /*TABLA TIPO ESTADO #14*/
        CREATE TABLE tbltipo_estado(
                tip_est_id INT(30)unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
                tip_est_descripcion VARCHAR(50) NOT NULL
            );

        /*TABLA TIPO ESTADO #15*/
            CREATE TABLE tblusuario(
                    usu_id INT(30)unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
                    usu_numero_documento INT(20)unsigned NOT NULL,
                    usu_nombre1 VARCHAR(30) NOT NULL,
                    usu_nombre2 VARCHAR(30) NOT NULL,
                    usu_apellido1 VARCHAR(30) NOT NULL,
                    usu_apellido2 VARCHAR(30) NOT NULL,
                    usu_correo VARCHAR(50) NOT NULL,
                    usu_contraseña VARCHAR(50) NOT NULL,
                    usu_direccion VARCHAR(50) NOT NULL,
                    usu_telefono INT(30)unsigned NOT NULL,
                    usu_fecha_registro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                    /*Foraneas en tabla 9*/
                    tbltipo_documento_tip_doc_id INT(30)unsigned NOT NULL,
                    tblrol_rol_id INT(30)unsigned NOT NULL,
                    tblestado_est_id INT(30)unsigned NOT NULL
            );

        /*TABLA TIPO DOCUMENTO #16*/
            CREATE TABLE tbltipo_documento(
                tip_doc_id INT(30)unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
                tip_doc_descripcion VARCHAR(50) NOT NULL
            );

        /*TABLA ROL #17*/
            CREATE TABLE tblrol(
                rol_id INT(30)unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
                rol_descripcion VARCHAR(50) NOT NULL
            );

        /*TABLA TERCERO #18*/
            CREATE TABLE tbltercero(
                    ter_id INT(30)unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
                    ter_numero_documento INT(20)unsigned NOT NULL,
                    ter_nombre1 VARCHAR(50) NOT NULL,
                    ter_nombre2 VARCHAR(50) NOT NULL,
                    ter_apellido1 VARCHAR(50) NOT NULL,
                    ter_apellido2 VARCHAR(50) NOT NULL,
                    ter_correo VARCHAR(100) NOT NULL,
                    ter_direccion VARCHAR(50) NOT NULL,
                    ter_telefono INT(50)unsigned NOT NULL,
                    ter_fecha_registro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                    /*Foraneas en tabla 10*/
                    tbltipo_documento_tip_doc_id INT(30)unsigned NOT NULL,
                    tblrol_rol_id INT(30)unsigned NOT NULL,
                    tblestado_est_id INT(30)unsigned NOT NULL
            );

        /*TABLA ROL #19*/


        /*LLAVES FORANEAS*/

            /*foraneas  tabla estado 8*/ 
                ALTER TABLE tblestado
                ADD FOREIGN KEY(tbltipo_estado_tip_est_id) 
                REFERENCES tbltipo_estado(tip_est_id);

            /*foraneas tabla usuario 9*/
                ALTER TABLE tblusuario 
                ADD FOREIGN KEY(tbltipo_documento_tip_doc_id) 
                REFERENCES tbltipo_documento(tip_doc_id);
            
                ALTER TABLE tblusuario
                ADD FOREIGN KEY(tblrol_rol_id) 
                REFERENCES tblrol(rol_id);

                ALTER TABLE tblusuario 
                ADD FOREIGN KEY(tblestado_est_id) 
                REFERENCES tblestado(est_id);

            /*foraneas tabla tercero 10*/
                ALTER TABLE tbltercero 
                ADD FOREIGN KEY(tbltipo_documento_tip_doc_id) 
                REFERENCES tbltipo_documento(tip_doc_id);

                ALTER TABLE tbltercero
                ADD FOREIGN KEY(tblrol_rol_id) 
                REFERENCES tblrol(rol_id);

                ALTER TABLE tbltercero
                ADD FOREIGN KEY(tblestado_est_id) 
                REFERENCES tblestado(est_id);

            /*foraneas tabla usuario 11*/

