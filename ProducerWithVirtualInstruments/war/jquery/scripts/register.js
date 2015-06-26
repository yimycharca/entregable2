$(document).ready(function () {
    var usuarioreg =/^[a-z\d_]{4,15}$/i;
    var passwordreg=/(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/;
	  	//	De esta forma comprobaremos:
		//	Contraseñas que contengan al menos una letra mayúscula.
		//	Contraseñas que contengan al menos una letra minúscula.
		//	Contraseñas que contengan al menos un número o caracter especial.
		//	Contraseñas cuya longitud sea como mínimo 8 caracteres.
		//	Contraseñas cuya longitud máxima no debe ser arbitrariamente limitada.
    $(".boton").click(function (){
        $(".error").remove();
        if(!usuarioreg.test($(".nombre").val()) ){
        	if( $(".nombre").val() == "" ){
                $(".nombre").focus().after("<span class='error'>Ingrese su nombre  de usuario </span>");
                return false;
            }
        	else{
        	$(".nombre").focus().after("<span class='error'>Ingrese nombre de usuario valido <br> de 4 caracteres a mas</span>");
            return false;
        	}
        }if(!passwordreg.test($(".password").val()) ){
        	if( $(".password").val() == "" ){
                $(".password").focus().after("<span class='error'>Ingrese su password </span>");
                return false;
            }
        	else{
        	$(".password").focus().after("<span class='error'>Ingrese una password v&aacute;lida <br>al menos una letra <br> un smbolo <br> y un numero</span>");
            return false;
        	}
        }
    });
    $(".nombre, .password").keyup(function(){
        if( $(this).val() != "" ){
            $(".error").fadeOut();
            return false;
        }
    });
    $(".password").keyup(function(){
        if( $(this).val() != "" && passwordreg.test($(this).val()) ){
            $(".error").fadeOut();
            return false;
        }
    });
});
