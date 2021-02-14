/* DATOS CORRECTOS */

function datosCorrectos(){
    Swal.fire({
        type:'success',
        title:'¡Conexión exitosa!',
        confirmButtonColor:'#56FF66',
        text: "Tus datos se encuentran registrados",
        icon:'success',
        confirmButtonText: 'Aceptar',
        footer: 'Datos seguros',
        width: '30%'
    }).then((result) => {
        if(result.value){
            //window.location.href = "dashboard/index.php";
        }
    });
}



/* DATOS INCORRECTOS */

function datosIncorrectos(){
    Swal.fire({
        type:'error',
        title:'¡Conexión invalida :c!',
        confirmButtonColor:'#f27474',
        text: "Tus datos no se encuentran registrados",
        icon:'error',
        confirmButtonText: 'Aceptar',
        footer: 'Verifica tus datos',
        width: '30%'
    }).then((result) => {
        if(result.value){
            //window.location.href = "dashboard/index.php";
        }
    });
}



/* BIENVENIDO */

function Bienvenido(){
    swal.fire({
        title: "Bienvenido a MallaVial",
        text: '¡Las vias estan en tus manos!',
        backdrop: false,
        padding: '2rem',
        timer: 2000,
        timerProgressBar: true,
        allowOutsideClick: true,
        allowEscapeKey: true,
        allowEnterKey: true,
        position: 'top',
        showConfirmButton: false
    });
}




/* HASTA LUEGO */

function hastaLuego(){
    swal.fire({
        title: "Hasta luego",
        text: '¡Gracias por cuidar las vias!',
        backdrop: false,
        padding: '2rem',
        timer: 2000,
        timerProgressBar: true,
        allowOutsideClick: true,
        allowEscapeKey: true,
        allowEnterKey: true,
        position: 'top',
        showConfirmButton: false,
    });
}


/* DATOS ACTUALIZADOS */

function datosActualizados(){
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    })
    Toast.fire({
        icon: 'success',
        title: 'Datos actualizados con exito'
    });
}





/* ERROR AL ACTUALIZAR */

function errorActualizar(){
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    })
    Toast.fire({
        icon: 'error',
        title: 'Error actualizando datos',
    }); 
}


/* ELIMINAR */

function eliminar(){
    const swalWithBootstrapButtons = Swal.mixin({
        customClass: {
            confirmButton: 'btn btn-success',
            ancelButton: 'btn btn-danger'
        },
        buttonsStyling: true,
        confirmButtonText: 'Aceptar',
    })
    swalWithBootstrapButtons.fire({
        title: '¿Seguro quieres eliminar el registro?',
        text: "¡No podrás revertir esto!",
        icon: 'question',
        showCancelButton: true,
        cancelButtonColor: '#56FF66',
        confirmButtonColor: '#f27474',
        confirmButtonText: 'Si, eliminar!',
        cancelButtonText: 'No, cancelar!',
        allowOutsideClick: false,
        allowEscapeKey: false,
        allowEnterKey: false,
        padding: '1rem',
        width: '42%',
        iconColor: '#f27474'
    
    }).then((result) => {
        if (result.isConfirmed){
            swalWithBootstrapButtons.fire(
            'Eliminado!',
            'Tu registro se elimino con exito.',
            'success',
        )} else if (
        result.dismiss === Swal.DismissReason.cancel
        ){
        swalWithBootstrapButtons.fire(
            'Cancelado',
            'Tu registro aún esta seguro :)',
            'error'
        )}
    });
}





