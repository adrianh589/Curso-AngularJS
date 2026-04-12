
var app = angular.module('bonusApp',['ngTouch']);

app.controller('mainCtrl', ['$scope', function($scope){

    $scope.mostrarAlerta = function(){
        alert("Mostrar alerta")
    }
	
}]);
