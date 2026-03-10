<?php
// Incluir la clase de base de datos
include_once("../classes/class.Database.php");

// Retorna un json
header('Content-Type: application/json; charset=utf-8');

$sql = "SELECT * FROM alumnos ORDER BY nombre ASC";

$db = Database::getInstancia();
echo $db->get_json_rows($sql);

?>
