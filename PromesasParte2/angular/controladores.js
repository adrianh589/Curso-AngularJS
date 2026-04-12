var app = angular.module('promesaApp.controladores', []);

app.controller('personasCtrl', ['$scope', 'Personas', function ($scope, Personas) {
    $scope.personas = Personas;


}]);
