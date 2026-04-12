var app = angular.module('promesaApp.servicios', []);

app.factory('Personas', ['$http', '$q', '$rootScope', function ($http, $q, $rootScope) {
    var self = {
        "cargando": false,
        "mensaje": "",
        "data": []
    };

    self.cargarData = function () {
        var q = $q.defer();

        self.cargando = true;
        console.log("Funcion llamada");

        $http.get("https://mocki.io/v1/aeb04c43-b43e-41f7-8a99-8acf9c6f3b7f")
            .then(function success(response) {
                q.resolve(response.data);
            }, function error(error) {
                console.log(":(");
                q.reject("Error al cargar: " + error);
            });

        return q.promise;
    };

    $rootScope.promise = self.cargarData();
    $rootScope.promise.then(
        function (data) {
            self.cargando = false;
            self.mensaje = "Información cargada correctamente";
            self.data = data;
        },
        function (error) {
            self.cargando = false;
            self.mensaje = "Error al cargar data";
            console.error(error);
        });

    return self;
}]);
