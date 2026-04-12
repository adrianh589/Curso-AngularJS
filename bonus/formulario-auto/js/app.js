
var app = angular.module('bonusApp',['jcs-autoValidate']);

angular.module('bonusApp')
	.run([
		'defaultErrorMessageResolver',
		function (defaultErrorMessageResolver) {
			defaultErrorMessageResolver.setCulture('es-co');
			// passing a culture into getErrorMessages('fr-fr') will get the culture specific messages
			// otherwise the current default culture is returned.
			defaultErrorMessageResolver.getErrorMessages().then(function (errorMessages) {
				errorMessages['edadMinima'] = 'Debe de ser mayor a {0} años de edad';
				errorMessages['edadMaxima'] = 'Debe de ser menor a {0} años de edad';
			});
		}
	]);

app.controller('mainCtrl', ['$scope', function($scope){

	$scope.formData = {};


	$scope.guardar_datos = function( valido ){

		if( !valido ){
			return;
		}



		console.log("Posteando...");


	}


	
}]);
