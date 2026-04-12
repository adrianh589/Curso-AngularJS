<?php
// ======================================================
// Clase: class.Database.php
// Funcion: Se encarga del manejo con la base de datos
// Descripcion: Tiene varias funciones utiles para
//              el manejo de registros.
//
// Ultima Modificacion: 17 de marzo de 2015
// ======================================================

class Database
{
    private $_connection;
    private $_host = "localhost";
    private $_user = "facturacion_user";
    private $_pass = "123456";
    private $_db = "facturacion_db";

    // Almacenar una unica instancia
    private static $_instancia;

    // ================================================
    // Metodo para obtener instancia de base de datos
    // ================================================
    public static function getInstancia()
    {
        if (!isset(self::$_instancia)) {
            self::$_instancia = new self();
        }

        return self::$_instancia;
    }

    // ================================================
    // Constructor de la clase Base de datos
    // ================================================
    private function __construct()
    {
        $this->_connection = new mysqli($this->_host, $this->_user, $this->_pass, $this->_db);

        // Manejar error en base de datos
        if ($this->_connection->connect_error) {
            trigger_error(
                'Falla en la conexion de base de datos: ' . $this->_connection->connect_error,
                E_USER_ERROR
            );
        }

        $this->_connection->set_charset("utf8");
    }

    private function __clone()
    {
    }

    public function __wakeup()
    {
        trigger_error('No se permite deserializar la clase Database.', E_USER_WARNING);
    }

    // Metodo para obtener la conexion a la base de datos
    public function getConnection()
    {
        return $this->_connection;
    }

    // Metodo que revisa el String SQL
    private static function es_string($valor, $nombre = 'valor')
    {
        if (!is_string($valor)) {
            trigger_error('class.Database.php: ' . $nombre . ' enviado no es un string.', E_USER_WARNING);
            return false;
        }

        return true;
    }

    private static function es_entero($valor, $nombre = 'valor')
    {
        if (!is_numeric($valor)) {
            trigger_error('class.Database.php: ' . $nombre . ' enviado no es numerico.', E_USER_WARNING);
            return false;
        }

        return true;
    }

    private static function es_identificador_sql($valor, $nombre = 'identificador')
    {
        if (!self::es_string($valor, $nombre)) {
            return false;
        }

        if (!preg_match('/^[A-Za-z0-9_]+$/', $valor)) {
            trigger_error('class.Database.php: ' . $nombre . ' contiene caracteres no permitidos.', E_USER_WARNING);
            return false;
        }

        return true;
    }

    private static function ejecutarQuery($sql)
    {
        if (!self::es_string($sql, 'sql')) {
            return false;
        }

        $db = self::getInstancia();
        $mysqli = $db->getConnection();
        $resultado = $mysqli->query($sql);

        if ($resultado === false) {
            return "class.Database.php: error " . $mysqli->error;
        }

        return $resultado;
    }

    // ==================================================
    // Funcion que ejecuta el SQL y retorna un ROW
    // Esta funcion esta pensada para SQLs que retornen
    // unicamente una sola linea
    // ==================================================
    public static function get_row($sql)
    {
        $resultado = self::ejecutarQuery($sql);
        if (!($resultado instanceof mysqli_result)) {
            return is_string($resultado) ? $resultado : array();
        }

        $row = $resultado->fetch_assoc();
        $resultado->free();

        return $row ? $row : array();
    }

    // ==================================================
    // Funcion que ejecuta el SQL y retorna un CURSOR
    // Esta funcion esta pensada para SQLs que retornen
    // multiples lineas (1 o varias)
    // ==================================================
    public static function get_cursor($sql)
    {
        return self::ejecutarQuery($sql);
    }

    // ==================================================
    // Funcion que ejecuta el SQL y retorna un JSON
    // data: [{...}] con N cantidad de registros
    // ==================================================
    public static function get_json_rows($sql)
    {
        $registros = self::get_arreglo($sql);

        if (!is_array($registros)) {
            return $registros;
        }

        return json_encode($registros);
    }

    // ==================================================
    // Funcion que ejecuta el SQL y retorna un Arreglo
    // ==================================================
    public static function get_arreglo($sql)
    {
        $resultado = self::ejecutarQuery($sql);
        if (!($resultado instanceof mysqli_result)) {
            return is_string($resultado) ? $resultado : array();
        }

        $registros = array();

        while ($row = $resultado->fetch_assoc()) {
            $registros[] = $row;
        }

        $resultado->free();

        return $registros;
    }

    // ==================================================
    // Funcion que ejecuta el SQL y retorna un JSON
    // de una sola linea. Ideal para imprimir un
    // Query que solo retorne una linea
    // ==================================================
    public static function get_json_row($sql)
    {
        $row = self::get_row($sql);

        if (!is_array($row)) {
            return $row;
        }

        if (empty($row)) {
            return "{}";
        }

        return json_encode($row);
    }

    // ====================================================================
    // Funcion que ejecuta el SQL y retorna un valor
    // Ideal para count(*), sum, cosas que retornen una fila y una columna
    // ====================================================================
    public static function get_valor_query($sql, $columna)
    {
        if (!self::es_string($sql, 'sql') || !self::es_string($columna, 'columna')) {
            return null;
        }

        $row = self::get_row($sql);
        if (!is_array($row) || empty($row)) {
            return null;
        }

        return array_key_exists($columna, $row) ? $row[$columna] : null;
    }

    // ====================================================================
    // Funcion que ejecuta el SQL de insercion, actualizacion y eliminacion
    // ====================================================================
    public static function ejecutar_idu($sql)
    {
        $resultado = self::ejecutarQuery($sql);
        if (is_string($resultado) || $resultado === false) {
            return $resultado;
        }

        return true;
    }

    // ====================================================================
    // Funciones para encryptar y desencryptar data
    // ====================================================================
    public static function crypt($aEncryptar, $digito = 7)
    {
        $set_salt = './1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
        $salt = sprintf('$2a$%02d$', (int) $digito);
        $maxIndex = strlen($set_salt) - 1;

        for ($i = 0; $i < 22; $i++) {
            $salt .= $set_salt[mt_rand(0, $maxIndex)];
        }

        return crypt($aEncryptar, $salt);
    }

    public static function uncrypt($evaluar, $contra)
    {
        return crypt($evaluar, $contra) === $contra;
    }

    // ================================================
    // Funcion que pagina cualquier TABLA
    // ================================================
    public static function get_todo_paginado($tabla, $pagina = 1, $por_pagina = 20)
    {
        if (!self::es_identificador_sql($tabla, 'tabla')) {
            return array(
                'err' => true,
                'mensaje' => 'Nombre de tabla invalido.'
            );
        }

        if (!self::es_entero($pagina, 'pagina') || !self::es_entero($por_pagina, 'por_pagina')) {
            return array(
                'err' => true,
                'mensaje' => 'Los parametros de paginacion son invalidos.'
            );
        }

        $pagina = max(1, (int) $pagina);
        $por_pagina = max(1, (int) $por_pagina);

        $sql = "SELECT COUNT(*) AS cuantos FROM $tabla";
        $cuantos = (int) self::get_valor_query($sql, 'cuantos');
        $total_paginas = max(1, (int) ceil($cuantos / $por_pagina));

        if ($pagina > $total_paginas) {
            $pagina = $total_paginas;
        }

        $pagina_actual_indice = $pagina - 1;
        $desde = $pagina_actual_indice * $por_pagina;

        if ($pagina >= $total_paginas) {
            $pag_siguiente = 1;
        } else {
            $pag_siguiente = $pagina + 1;
        }

        if ($pagina <= 1) {
            $pag_anterior = $total_paginas;
        } else {
            $pag_anterior = $pagina - 1;
        }

        $sql = "SELECT * FROM $tabla LIMIT $desde, $por_pagina";
        $datos = self::get_arreglo($sql);

        if (!is_array($datos)) {
            return array(
                'err' => true,
                'mensaje' => $datos
            );
        }

        $arrPaginas = array();
        for ($i = 1; $i <= $total_paginas; $i++) {
            $arrPaginas[] = $i;
        }

        return array(
            'err' => false,
            'conteo' => $cuantos,
            $tabla => $datos,
            'pag_actual' => $pagina,
            'pag_siguiente' => $pag_siguiente,
            'pag_anterior' => $pag_anterior,
            'total_paginas' => $total_paginas,
            'paginas' => $arrPaginas
        );
    }
}

?>
