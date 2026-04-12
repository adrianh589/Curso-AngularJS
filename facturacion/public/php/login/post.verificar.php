<?php
session_start();
require_once("../clases/class.Database.php");


$postdata = file_get_contents("php://input");

$request = json_decode($postdata);
$request =  (array) $request;


$respuesta = array(
				'err' => true,
				'mensaje' => 'Usuario/Contraseña incorrectos',
			);


// ================================================
//   Encriptar la contraseña maestra (UNICA VEZ)
// ================================================




if(  isset( $request['usuario'] ) && isset( $request['contrasena'] ) ){ // ACTUALIZAR

	$user = addslashes( $request['usuario'] );
	$pass = addslashes( $request['contrasena'] );

	$user = strtoupper($user);


	// Verificar que el usuario exista
	$sql = "SELECT count(*) as existe FROM users where username = '$user'";
	$existe = Database::get_valor_query( $sql, 'existe' );


	if( $existe == 1 ){

		$sql = "SELECT password FROM users where username = '$user'";
		$data_pass = Database::get_valor_query( $sql, 'password' );


		// Encriptar usando el mismo metodo
		$pass = Database::uncrypt( $pass, $data_pass );

		// Verificar que sean iguales las contraseñas
		if( $data_pass == $pass ){

			$respuesta = array(
				'err' => false,
				'mensaje' => 'Login válido',
				'url' => '../fac/'
			);

			$_SESSION['user'] = $user;

			// actualizar ultimo acceso
			$sql = "UPDATE users set last_login = NOW() where user = '$user'";
			Database::ejecutar_idu($sql);
		}


	}

}


// sleep(1.5);
echo json_encode( $respuesta );





// Esto se puede borrar despues
// ================================================
//   Funcion para Encriptar
// ================================================
/* function encriptar_usuario(){

 	$usuario_id = '1';
 	$contrasena = '123456';
 	$contrasena_crypt = Database::crypt( $contrasena );

	$sql = "UPDATE users set contrasena = '$contrasena_crypt' where id = '$usuario_id'";
 	Database::ejecutar_idu($sql);

}
*/

?>
