<?php
// Incluir el archivo de DB
include_once("../clases/class.Database.php");

$postdata = file_get_contents("php://input");
$request = json_decode($postdata, true);
$request = is_array($request) ? $request : array();

$campos = array('nombre', 'correo', 'zip', 'telefono1', 'telefono2', 'pais', 'direccion');
$cliente = array();

foreach ($campos as $campo) {
    $cliente[$campo] = array_key_exists($campo, $request) ? $request[$campo] : null;
}

if (empty($cliente['nombre']) || empty($cliente['correo'])) {
    echo json_encode(array(
        'err' => true,
        'Mensaje' => 'Los campos nombre y correo son obligatorios.'
    ));
    exit;
}

$db = Database::getInstancia();
$conexion = $db->getConnection();
$respuesta = array();
$esActualizacion = isset($request['id']) && $request['id'] !== '' && is_numeric($request['id']);

if ($esActualizacion) {
    $sql = "UPDATE clientes
            SET nombre = ?, correo = ?, zip = ?, telefono1 = ?, telefono2 = ?, pais = ?, direccion = ?
            WHERE id = ?";
    $stmt = $conexion->prepare($sql);

    if ($stmt === false) {
        $respuesta = array(
            'err' => true,
            'Mensaje' => $conexion->error
        );
    } else {
        $id = (int) $request['id'];
        $stmt->bind_param(
            "sssssssi",
            $cliente['nombre'],
            $cliente['correo'],
            $cliente['zip'],
            $cliente['telefono1'],
            $cliente['telefono2'],
            $cliente['pais'],
            $cliente['direccion'],
            $id
        );

        if ($stmt->execute()) {
            $respuesta = array(
                'err' => false,
                'Mensaje' => 'Registro actualizado'
            );
        } else {
            $respuesta = array(
                'err' => true,
                'Mensaje' => $stmt->error
            );
        }

        $stmt->close();
    }
} else {
    $sql = "INSERT INTO clientes (nombre, correo, zip, telefono1, telefono2, pais, direccion)
            VALUES (?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conexion->prepare($sql);

    if ($stmt === false) {
        $respuesta = array(
            'err' => true,
            'Mensaje' => $conexion->error
        );
    } else {
        $stmt->bind_param(
            "sssssss",
            $cliente['nombre'],
            $cliente['correo'],
            $cliente['zip'],
            $cliente['telefono1'],
            $cliente['telefono2'],
            $cliente['pais'],
            $cliente['direccion']
        );

        if ($stmt->execute()) {
            $respuesta = array(
                'err' => false,
                'Mensaje' => 'Registro insertado'
            );
        } else {
            $respuesta = array(
                'err' => true,
                'Mensaje' => $stmt->error
            );
        }

        $stmt->close();
    }
}

echo json_encode($respuesta);
?>
