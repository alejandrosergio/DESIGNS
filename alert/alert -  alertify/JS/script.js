$(document).ready(function(){
    $('#exito').click(function(){
        alertify.success("Este es un mensaje de exito");
    });
});

$(document).ready(function(){
    $('#error').click(function(){
        alertify.error("Este es un mensaje de error");
    });
});

$(document).ready(function(){
    $('#mensaje').click(function(){
        alertify.confirm('Eliminar Cliente', 'Si eliminas este cliente ya no habra vuelta atras', 
        function(){ alertify.success('Eliminado') }, 
        function(){ alertify.error('Cancelado')});
    });
});

$(document).ready(function(){
    $('#semantico').click(function(){
		alertify.defaults.transition = "slide";
		alertify.defaults.theme.ok = "btn btn-primary";
		alertify.defaults.theme.cancel = "btn btn-danger";
		alertify.defaults.theme.input = "form-control";
		$(function(){			
			$('#alert').click(function(){
				alertify.alert('Bootstrap');
			});
			
			$('#confirm').click(function(){
				alertify.confirm('Bootstrap');
			});
			
			$('#prompt').click(function(){
				alertify.prompt('Bootstrap');
			});
		});
    });
});
