var app = angular.module('facturacionApp.clientes', []);


app.factory('Clientes', ['$http', '$q', function ($http, $q) {

    var self = {
        'cargando'      : false,
        'err'     		: false,
        'conteo' 		: 0,
        'pag_actual'    : 1,
        'pag_siguiente' : 1,
        'pag_anterior'  : 1,
        'total_paginas' : 1,
        'paginas'	    : [],

        guardar: function (cliente) {
            var d = $q.defer();
            var esActualizacion = !!(cliente && cliente.id);

            $http.post('public/php/clientes/post.clienteguardar.php', cliente)
                .then(function (response) {
                    var paginaDestino = esActualizacion ? self.pag_actual : 999999;

                    self.cargarPagina(paginaDestino).then(function (data) {
                        d.resolve({
                            respuesta: response.data,
                            clientes: data
                        });
                    });
                });

            return d.promise;
        },

        cargarPagina: function ( pag ) {
            var d = $q.defer();

            $http.get('public/php/clientes/get.clientes.php?pag=' + pag)
                .success(function (data) {
                    angular.extend(self, data, {'cargando': false});
                    return d.resolve(self);
                });
            return d.promise;
        }
    };


    return self;


}]);
