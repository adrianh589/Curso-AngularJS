// var app = angular.module( "app", [ ] );
app.config(function ($routeProvider) {

    $routeProvider
        .when('/', {
            templateUrl: 'pages/home.html'
        })
        .when('/marcas', {
            templateUrl: 'pages/marcas.html',
            controller: 'marcasCtrl'
        })
        .when('/modelos', {
            templateUrl: 'pages/modelos.html',
            controller: 'modelosCtrl'
        })
        .when('/automoviles', {
            templateUrl: 'pages/automoviles.html',
            controller: 'automovilesCtrl'
        })
        .otherwise({
            redirectTo: '/'
        })

})
