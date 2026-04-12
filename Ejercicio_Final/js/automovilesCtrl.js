app.controller('automovilesCtrl', ['$scope','$http', function($scope,$http){
    $scope.automoviles = [];
    $scope.marcas = [];
    $scope.modelos = [];
    $scope.marcaSeleccionada = '';
    $scope.modeloSeleccionado = '';

    $scope.busqueda = {
        marca: '',
        modelo: ''
    };

    // Get all cars
    $http.get('php/servicios/automoviles/automoviles.listado.php').then(function(data){
        $scope.automoviles = data.data;
    });

    // Get all brands
    $http.get('php/servicios/marcas/marcas.listado.php').then(function(data){
        $scope.marcas = data.data;
        console.log($scope.marcas);
    });

    // Get all models
    $http.get('php/servicios/modelos/modelos.listado.php').then(function(data){
        $scope.modelos = data.data;
        console.log($scope.modelos);
    });
}]);