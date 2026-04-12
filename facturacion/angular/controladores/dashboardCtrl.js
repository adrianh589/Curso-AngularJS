var app = angular.module('facturacionApp.dashboardCtrl', []);

// =======================
// Controlador de dashboard
// =======================
app.controller('dashboardCtrl', ['$scope', '$http', function($scope, $http) {
    $scope.activar('mDashboard', '', 'Dashboard', 'Información');
}]);