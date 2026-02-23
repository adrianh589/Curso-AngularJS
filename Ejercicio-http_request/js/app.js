(function () {

    var app = angular.module('ejemplosApp', []);


    app.controller('mainCtrl', ['$scope', '$http', function ($scope, $http) {

        $scope.profesores = {};

        $http.get("json/profesores.json").then(function (res) {
            // Código cuando es correcta la petición
            $scope.profesores = res.data
        })

    }]);


})();
