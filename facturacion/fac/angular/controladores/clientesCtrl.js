var app = angular.module('facturacionApp.clientesCrtl', []);

// ================================================
//   Controlador de clientes
// ================================================
app.controller('clientesCtrl', ['$scope','$routeParams', 'Clientes', function($scope, $routeParams, Clientes){

	var pag = $routeParams.pag;


	$scope.activar('mClientes','','Clientes','listado');
	$scope.clientes   = {};
	$scope.clienteSel = {};


	$scope.moverA = function( pag ){

		Clientes.cargarPagina( pag ).then( function(){
			$scope.clientes = Clientes;
		});

	};


	$scope.moverA(pag);


	// ================================================
	//   Mostrar modal de edicion
	// ================================================
	$scope.mostrarModal = function( cliente ){

		// console.log( cliente );
		angular.copy( cliente, $scope.clienteSel );
		$("#modal_cliente").modal();

	}


	// ================================================
	//   Funcion para guardar
	// ================================================
	$scope.guardar = function( cliente, frmCliente){
		var payload = angular.copy( cliente || {} );

		Clientes.guardar( payload ).then(function(){
			$scope.clientes = Clientes;

			// codigo cuando se actualizo
			$("#modal_cliente").modal('hide');
			$scope.clienteSel = {};

			frmCliente.autoValidateFormOptions.resetForm();

		});


	}










}]);
