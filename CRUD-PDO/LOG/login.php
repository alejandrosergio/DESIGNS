<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN MALLA VIAL</title>
    <!-- CSS -->
    <link rel="stylesheet" href="../css/login.css">
</head>
<body>
    <section>
        <!-- SLIDER -->
        <div class="container-slider">
            <div class="slider" id="slider">
                <div class="slider__section">
                    <img src="../assets/img/login/img1.jpg" class="slider__img">
                </div>
    
                <div class="slider__section">
                    <img src="../assets/img/login/img2.jpg" class="slider__img">
                </div>
    
                <div class="slider__section">
                    <img src="../assets/img/login/img3.jpg"class="slider__img">
                </div>
    
                <div class="slider__section">
                    <img src="../assets/img/login/img4.jpg" class="slider__img">
                </div>
                <div class="slider__section">
                    <img src="../assets/img/login/img5.jpg" class="slider__img">
                </div>
                <div class="slider__section">
                    <img src="../assets/img/login/img6.jpg" class="slider__img">
                </div>
            </div>
            <div class="slider__btn slider__btn--rigth" id="btn-rigth">&#62;</div>
            <div class="slider__btn slider__btn--left" id="btn-left">&#60;</div>
        </div>
        <!--  TITLE -->
        <div class="contentBx">
            <div class="formBx">
                <h2>Malla Vial</h2>
                <!-- FORM -->
                <form action="validate.php" method="POST">
                    <div class="inputBx">
                        <!-- <span><i class="fas fa-address-card"></i> Rol del Usuario</span>
                        <select required>
                            <option>Seleccione Rol</option>
                            <option>Administrador</option>
                            <option>Sub Secretario</option>
                            <option>Gestor Vial</option>
                            <option>Jefe Bodega</option>
                        </select> -->
                        
                        <div class="inputBx">
                            <span><i class="fas fa-envelope"></i> Correo Electronico</span>
                            <input type="email" name="email" required>
                        </div>
                        <div class="inputBx">
                            <span><i class="fas fa-lock"></i> Contraseña</span>
                            <input type="password" name="password" required>
                        </div>
                        <div class="checkbox remember">
                            <input type="checkbox" class="input-assumpte" id="input-confidencial" />
                            <label for="input-confidencial" style="font-size: 17px;"> Recordarme </label>
                        </div>
                        <div class="inputBx">
                            <button type="submit" class="btn"> Ingresar </button>
                        </div>
                        <div class="inputBx">
                            <p> Olvidaste tus Datos? <a href="#"> Click acá</a></p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- BUTTON FLOTANTE -->
    </section>
    <div class="button-float">
        <input type="checkbox" id="btn-mas">
        <div class="opciones">
            <a href="https://www.facebook.com/">Y</a>
            <a href="https://www.facebook.com/">X</a>
        </div>
        <div class="btn-mas">
            <label for="btn-mas" class="button-desplegable">?</label>
        </div>
    </div>

    <!-- SCRIPT -->
    <script src="../js/login.js"></script>
</body>
</html>