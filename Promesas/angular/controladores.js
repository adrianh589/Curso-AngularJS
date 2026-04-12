var app = angular.module('promesaApp.controladores', []);

app.controller('mainCtrl', ['$scope', '$q', function ($scope, $q) {
    $scope.miVar = 0;

    $scope.sumar = function (num) {
        // Diferido, significa que es algo que no sucedio en el momento.
        var q = $q.defer();
        var valido = false;

        num++;

        setTimeout(function () {
            if (valido) {
                q.resolve(num);
            } else {
                q.reject(num);
            }
        }, 2000)


        return q.promise;
    }

    $scope.promise = $scope.sumar(1);
    $scope.promise.then(function (result) {
        console.log("Promesa cumplida");
        $scope.miVar = result;
    }, function (error) {
        console.error(error);
        $scope.miVar = "Ërror!!!";
    })

}]);
