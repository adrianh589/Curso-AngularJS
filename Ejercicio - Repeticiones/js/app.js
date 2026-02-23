(function () {
    var app = angular.module('universidadApp', [ ]);

    app.controller('listadoCtrl', ['$scope', function($scope, $http) {

        $scope.listado = ["Adrian Hoyos", "Camila Hoyos", "Aida Marquez", "Antonio Hoyos"];

        $scope.listadoProfesores = {
            profesores: [
                {
                    nombre: "Adrian Hoyos",
                    edad: 29,
                    clase: "PEE"
                },
                {
                    nombre: "Camila Hoyos",
                    edad: 28,
                    clase: "ICE"
                },
                {
                    nombre: "Antonio Hoyos",
                    edad: 20,
                    clase: "PEN"
                }
            ]
        }


    }]);

})();