var app = angular.module('paginacionApp.controladores',[]);

app.controller('observadorCtrl', ['$scope', function ($scope) {
	
$scope.nombre = "Adrian Hoyos";

$scope.$watch('nombre', function (newVal, oldVal) {
    console.log(newVal);
    console.log(oldVal);
});


	

}]);