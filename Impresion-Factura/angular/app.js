var angular = angular.module('facturaApp',[]);


angular.controller('mainCtrl', ['$scope', function ($scope) {
	
	$scope.factura = {

		compania: 'Super Cafe',
		direccion: '654 alguna calle',
		ciudad: 'Ciudad',
		pais: 'Pais',
		telefono: '(506) 9975-9985',
		correo: 'fernando@gmail.com',
		ISV: 0.15,  // Impuesto sobre ventas
		cliente:{
			nombre: 'John Doe',
			direccion: 'Calle XYZ, avenida 123',
			correo: 'john.doe@gmail.com'
		},
		maestro:{
			id:'FAC-1234-2016',
			creada: '25-oct-2016'
		},
		detalle:[{
			producto:'Producto 123',
			descripcion: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
			cantidad: 30,
			precio: 40
		},
		{
			producto:'Producto 456',
			descripcion: 'Lorem ipsum dolor sit amet, consectetur.',
			cantidad: 80,
			precio: 30
		},
		{
			producto:'Producto 789',
			descripcion: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, voluptates..',
			cantidad: 10,
			precio: 30
		}],
		subtotal: function(){

			var detalles = this.detalle;
			var subtotal = 0;

			for( i in detalles ){
				subtotal += detalles[i].cantidad * detalles[i].precio ;
			}

			return subtotal;
		},
		impuesto: function(){

			var subTotal = this.subtotal();
			return subTotal * this.ISV;

		},
		granTotal:function(){

			return this.subtotal() + this.impuesto();

		}

	}


	// Funcion que se encarga de mandar a imprimir la pagina
	// igual que presionar CTR+P 
	$scope.imprimir = function(){
		window.print();
	}


	$scope.cliente = $scope.factura.cliente;
	$scope.maestro = $scope.factura.maestro;


}]);