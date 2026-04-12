var app = angular.module('facturacionApp.clientesCtrl', []);

// =======================
// Controlador de clientes
// =======================
app.controller('clientesCtrl', ['$scope', 'Clientes', '$routeParams', function($scope, Clientes, $routeParams) {

    var pag = $routeParams.pag;
    console.log(pag);

    $scope.activar('mClientes', '', 'Clientes', 'Listado');
    $scope.clientes = {};
    $scope.clienteSel = {};

    $scope.moverA = function ( pag ) {
        Clientes.cargarPagina(pag).then(function(data) {
            $scope.clientes = data;
        });
    }

    $scope.moverA(pag);

    // ========================
    // Mostrar modal de edición
    // ========================
    $scope.mostrarModal = function ( cliente ) {
        console.log(cliente);
        angular.copy(cliente, $scope.clienteSel);
        $("#modal_cliente").modal();
    }

    // ========================
    // Mostrar modal de edición
    // ========================
    $scope.guardar = function ( cliente, frmCliente ) {
        var payload = angular.copy(cliente || {});

        Clientes.guardar(payload).then(function(data) {
            $scope.clientes = data.clientes;
            $("#modal_cliente").modal('hide');
            $scope.clienteSel = {};
            frmCliente.autoValidateFormOptions.resetForm();
        });
    }
}]);
