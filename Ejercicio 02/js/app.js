//                        Nombre de la app  , argumentos como librerias etc.
var app = angular.module('universidadApp'   , [  ]);

// Los controladores son los que se encargan de controlar la pagina una parte o la totalidad de la misma
// deben estar encapsulados, es decir, este por ejemplo es de profesor entonces unicamente debe enfocarse en profesores
// si creamos un controlador de estudiantes entocnes deberemos crear uno especifico para estudiantes

// $scope = Es como una variable global, vive dentro de angularjs
app.controller('profesorCtrl', function($scope, $http) {
    $scope.profesor = profesorData;
    $scope.editando = {};
    $scope.mostrarCaja = false;

    $scope.editarProfesor = function() {
        angular.copy( $scope.profesor, $scope.editando );
        $scope.mostrarCaja = true;
    };

    $scope.guardarCambios = function(data){
        angular.copy( $scope.editando, $scope.profesor );
        $scope.mostrarCaja = false;
    }

    $scope.cancelarCambios = function(data){
        $scope.editando = {};
        $scope.mostrarCaja = false;
    }
});

var profesorData = {
    nombre: "Juan Carlos Pineda",
    bio: "Saludos estudiante, mi nombre es Juan Carlos, encantado de conocerte, soy un apasionado instructor de matemáticas aplicada a cuántica.",
    edad: 47,
    foto: "img/juancarlos.jpg"
};
