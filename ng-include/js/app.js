(function(){

var app = angular.module('ejemplosApp',[ ]);



app.controller('mainCtrl', ['$scope','$http', function($scope,$http){
  
  
	$scope.profesores = {};
	$scope.tablaProfesores = 'parciales/tablaProfesores.html';

  
  	$http.get('json/profesores.json').success(function(data){
  		//Codigo cuando es correcta la petición
  		$scope.profesores = data.profesores;

  	});



}]);





})();
