window.addEventListener("keypress", function(event){
    if (event.keyCode == 13){
        event.preventDefault();
    }
}, false);

const suma = document.getElementById('suma');
const resta = document.getElementById('resta');
const multi = document.getElementById('multi');
const divicion = document.getElementById('divicion');

var valor = document.getElementById('valor');

valor.oninput=function(){

    var valoresAceptados = /^[0-9]+$/;

    if (!valor.value.match(valoresAceptados)){
        valor.value='';
    }

}

var res = 0;

// SUMA
suma.addEventListener('click', (e) => {
    e.preventDefault();
    var valor = document.getElementById('valor').value;

    if (valor != 0) {
        res = parseInt(res) + parseInt(valor); 
        var resultado = document.getElementById('resultado').innerText=res;
        var valor = document.getElementById('valor').value='';
    }else{
        alert("Debes dijitar un valor mayor a 0");
    }

});

// RESTA
resta.addEventListener('click', (e) => {
    e.preventDefault();
    var valor = document.getElementById('valor').value;

    if (valor != 0) {
        res = parseInt(res) - parseInt(valor); 
        var resultado = document.getElementById('resultado').innerText=res;
        var valor = document.getElementById('valor').value='';
    }else{
        alert("Debes dijitar un valor mayor a 0");
    }
});

// MULTIPLICACION
multi.addEventListener('click', (e) => {
    e.preventDefault();
    var valor = document.getElementById('valor').value;

    if (valor != 0) {
        res = parseInt(res) * parseInt(valor); 
        var resultado = document.getElementById('resultado').innerText=res;
        var valor = document.getElementById('valor').value='';
    }else{
        alert("Debes dijitar un valor mayor a 0");
    }
});

// DIVICION
divicion.addEventListener('click', (e) => {
    e.preventDefault();
    var valor = document.getElementById('valor').value;

    if (valor != 0) {
        res = parseInt(res) / parseInt(valor); 
        var resultado = document.getElementById('resultado').innerText=res;
        var valor = document.getElementById('valor').value='';
    }else{
        alert("Debes dijitar un valor mayor a 0");
    }
});