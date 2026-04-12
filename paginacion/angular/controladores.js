var app = angular.module('paginacionApp.controladores',[]);

app.controller('paisesCtrl', ['$scope','Paises', function($scope,Paises){
		
	$scope.paises = Paises;

	$scope.irPrimera = function(){
		Paises.cargarPrimera();
	}

	$scope.irUltimo = function(){
		Paises.cargarUltima();
	}

	$scope.irA = function(pagina){
		Paises.irA(pagina);
	}

	$scope.arrPaginas = function( num ){
		const arr = [];
		for (let i = 0; i < num; i++) {
			arr.push(i);
		}
		return arr;
	}

}]);