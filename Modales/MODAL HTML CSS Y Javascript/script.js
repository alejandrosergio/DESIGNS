let cerrar = document.querySelectorAll(".close_modal")[0];
let abrir = document.querySelectorAll(".llamar_modal")[0];
let modal = document.querySelectorAll(".modal_mod")[0];
let modalC = document.querySelectorAll(".main-modal_container")[0];

abrir.addEventListener("click", function(e){
    e.preventDefault();
    modalC.style.opacity = "1";
    modalC.style.visibility = "visible";
    modal.classList.toggle("modal-close");
});

cerrar.addEventListener("click",function(){
    modal.classList.toggle("modal-close");

    setTimeout(function(){
        modalC.style.opacity = "0";
        modalC.style.visibility = "hidden";
    },700)
});

window.addEventListener("click",function(e){
    if (e.target == modalC) {
        modal.classList.toggle("modal-close");

    setTimeout(function(){
        modalC.style.opacity = "0";
        modalC.style.visibility = "hidden";
    },600)
    }
});
