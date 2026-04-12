var app = angular.module('bonusApp', []);

app.controller('mainCtrl', ['$scope', function ($scope) {

    $scope.mensaje = "mensaje";
    $scope.titulo = "Este es el titulo";
    $scope.subtitulo = "Este es el subtitulo";

    $scope.borradoMensaje = '';

    $scope.mostrarAlerta = function () {
        swal($scope.mensaje);
    }

    $scope.mostrarSubtitulo = function () {
        swal($scope.titulo, $scope.subtitulo);
    }

    $scope.mostrarConfirmacion = function () {
        swal({
                title: $scope.titulo,
                text: "You won't be able to revert this!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Si, borrarlo",
                closeOnConfirm: false
            },
            function () {
                $scope.borradoMensaje = "Archivo borrado";
                $scope.$apply();
                swal("Borrado!", "Tu archivo imaginario ha sido borrado.", "success");
            });
    }

    $scope.mostrarInput = function () {
        swal({
                title: $scope.titulo,
                text: "Write something interesting",
                type: "input",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Aceptar",
                closeOnConfirm: false,
                animation: "slide-from-top",
                inputPlaceholder: "Write something interesting"
            },
            function (inputValue ) {
                if (inputValue === false) return false;
                if (inputValue === "") {
                    swal.showInputError("You need to specify something");
                    return false;
                }

                swal("Nice!", "You write: " + inputValue, "success");
            });
    }

}]);
