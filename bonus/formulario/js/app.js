var app = angular.module('bonusApp', []);

app.controller('mainCtrl', ['$scope', function ($scope) {

    $scope.formData = {};

    $scope.guardar_datos = function ( valido ) {

        if (!valido) {
            return;
        }

        console.log("Guardar datos");
        console.log(valido);
    }

}]);
