(function () {

    var app = angular.module('ejemplosApp', []);

    app.controller('mainCtrl', ['$scope', '$http', function ($scope, $http) {
        // https://pokeapi.co/api/v2/pokemon/ditto
        $scope.pokemon = {};

        // PokeAPI no expone JSONP; se consume con GET (CORS).
        $http.get('https://pokeapi.co/api/v2/pokemon/ditto')
            .then(function (res) {
                $scope.pokemon = res.data;
                console.log(res.data);
            })
            .catch(function (err) {
                console.error('Error consultando API:', err);
            });
    }]);

})();
