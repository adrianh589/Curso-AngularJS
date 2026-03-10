app.controller('alumnoCtrl', ['$scope', '$routeParams', '$http', function($scope, $routeParams, $http){

    $scope.setActive('mAlumnos');
    var codigo = $routeParams.codigo;
    $scope.creando = false;
    $scope.alumno = {};


    $scope.actualizado = false;

    if(codigo === 'nuevo'){
        $scope.creando = true;
    } else {
        $http.get('php/servicios/alumnos.getAlumno.php?c='  + codigo).success(function(data){

            if(data.err){
                window.location.href = '#/alumnos';
                return;
            }

            $scope.alumno = data;
        });
    }

    $scope.guardarAlumno = function(){

        if($scope.creando){
            $http.post('php/servicios/alumnos.crear.php', $scope.alumno).success(function(data){

                console.log(data);

                if(!data.err){
                    $scope.actualizado = true;
                    setTimeout(function(){
                        $scope.actualizado = false;
                        $scope.$apply(); // Como la funcion timeout es de JS necesitamos decirle a angular que se actualice, para eso es el apply
                    }, 3500);

                }

            });
        } else {
            $http.post('php/servicios/alumnos.guardar.php', $scope.alumno).success(function(data){

                console.log(data);

                if(!data.err){
                    $scope.actualizado = true;
                    setTimeout(function(){
                        $scope.actualizado = false;
                        $scope.$apply(); // Como la funcion timeout es de JS necesitamos decirle a angular que se actualice, para eso es el apply
                    }, 3500);

                }

            });
        }
    }

}]);