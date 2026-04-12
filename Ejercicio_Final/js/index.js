var app = angular.module('vehiculosApp',['ngRoute']);

app.controller('mainCtrl', ['$scope','$http', function($scope,$http){

    $scope.menuSuperior = "pages/menu.html";

}]);