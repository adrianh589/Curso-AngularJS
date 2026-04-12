<?php
// Incluir el archivo de base de datos
include_once("../clases/class.Database.php");

if( isset( $_GET["pag"] ) ){
	$pag = $_GET["pag"];
}else{
	$pag = 1;
}


$respuesta = Database::get_todo_paginado( 'clientes', $pag );


echo json_encode( $respuesta );


?>