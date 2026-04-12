var app = angular.module('paginacionApp.servicios',[]);

app.factory('Paises', ['$http', function($http){

	var self = {
		cargando: false,
		pagina: 1,
		total: 0,
		totalPaginas: 0,
		data: [],

		irA: function (pagina) {
			self.cargarData({pagina});
		},

		cargarPrimera: function () {
			self.cargarData({pagina: 1});
		},

		cargarUltima: function () {
			self.cargarData({pagina: self.totalPaginas});
		},

		paginaSiguiente: function () {
			console.log('paginaSiguiente');
			if (defecto.pagina <= self.totalPaginas){
				defecto.pagina = defecto.pagina + 1;
				self.cargarData(defecto);
			}
		},

		paginaAnterior: function () {
			console.log('paginaAnterior');
			if (defecto.pagina >= 0){
				defecto.pagina = defecto.pagina - 1;
				self.cargarData(defecto);
			}
		},

		cargarData: function( opciones ){
			self.cargando = true;
			self.pagina = opciones.pagina;
			$http.post('php/servicios/paises.getPaises.php', opciones)
				.success(function(data){
					console.log(data);
					self.cargando = false;
					self.total = data.total;
					self.totalPaginas = data.totalpaginas;
					self.data = data.data;
				})
			.error(function(error){
				console.log(error);
			})
		}
	};

	var defecto = {
		pagina: 1
	}

	self.cargarData( defecto );

		return self;

}])