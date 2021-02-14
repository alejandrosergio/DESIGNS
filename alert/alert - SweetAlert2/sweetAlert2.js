/* Guardar el valor del formulario */

/* 
(async() => {
    const {value: pais} = await Swal.fire({

        //CODIGO DE LA ALERTA 

    });

    if (pais) {
        Swal.fire({
            title: `seleccionaste ${pais}`
        });
    }else{
        Swal.fire({
            title: `No seleccionaste un pais :C`
        });
    }
})();
*/

/* CONFIGURA TU ALERTA */
function Documentacion(){
    swal.fire({
        /* TITULO */
            title: "Bienvenido a sweetAlert2!",

        /* TEXTO */
            text: "Espero y comprendas estas alertas",

        /* AGREGAR HTML */
            //html: "<button>Cancelar</button>"

        /* ICONOS DE ALERTA*/
            icon: 'success',
            //icon: 'error',
            //icon: 'warning',
            //icon: 'question',
            //icon: 'info',

        /* MODIFICAR BOTONES */
            confirmButtonText: 'Aceptar',
            cancelButtonText: 'Cancelar',

        /* TEXTO AL PIE DE PAGINA - Se puede utilizar html */
            footer: 'Tus datos estaran seguros con nosotros',

        /* TAMAÑO DE LA VENTANA */
            //width: '35%',

        /* MARGENES DE CONTENIDO */
            padding: '2rem',

        /* COLOR DE LA VENTANA */
            background:'#fff',

        /* ESTABLECER EL CRECIMIENTO DE LA VENTANA */
            //grow: 'row',
            // grow: 'column',
            //grow: 'fullscreen',

        /* FONDO OSCURO O NO */
            backdrop: true,

        /* TIEMPO DE CIERRE */
            timer: 50000,
            timerProgressBar: true,

        /* TIPO DE NOTIFICACION PEQUEÑA */
            //toast: true,

        /* POSICION DE LA VENTANA */
            //position: 'bottom-end',

        /* USUARIO FUNCIONES */
            /* click para cerrar */
            allowOutsideClick: false,
            /* escape para salir */
            allowEscapeKey: false,
            /* dar enter dentro de la alerta para cerrar */
            allowEnterKey: true,
            /* parar la propagacion */
            stopKeydownPropagation: true,

        /* INPUT */
            input: 'select',
            inputPlaceholder: 'Pais',
            inputValue: '',
            inputOptions: {
                mexico: 'Mexico',
                españa: 'España'
            },

        /* AGREGAR NUESTRAS CLASES */
            customClass: {
                /* Le colocas el nombre y luego lo alteras en css */
                /* 
                container: ,
                popup: ,
                header: ,
                title: ,
                closeButton: ,
                icon: ,
                image: ,
                content: ,
                input: ,
                actions: ,
                confirmButton: ,
                cancelButton: ,
                footer:	, 
                */
            },

        /* BOTON DE CONFIRMAR */
            showConfirmButton: true,
            confirmButtonColor: '#000',
            confirmButtonAriaLabel:'Este boton confirma',
        
        /* BOTON DE CANCELAR */
            showCancelButton: true,
            cancelButtonColor: 'red',
            cancelButtonAriaLabel:'Este boton cancela',

        /* UTILIZAR O NO STYLES CSS EN BUTTON */
            buttonsStyling: true,
            /* boton cerrar ventana */
            showCloseButton: true,
            closeButtonAriaLabel: 'boton que cierra la ventana',

        /* IMAGENES */
        imageUrl: 'https://cn.i.cdn.ti-platform.com/content/343/showpage/historias-corrientes/es/regularshow-200x200.png',
        imageWidth: '200px',
        //imageHeight: '',
        imageAlt: 'Mordecai'
    });
}
