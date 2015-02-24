angular.module('sales', [])
    .config(['$routeProvider', function ($routeProvider) {
        $routeProvider.
            when('/', {
                templateUrl: 'Scripts/partials/sales/sales-view.tpl.html',
                controller: 'salesController'
            });
    }])
	.controller('salesController', ['$scope', '$http', function ($scope, $http) {
	    $http.get("http://localhost:40001/api/Product")
            .success(function (data) {
                $scope.Products = data;
            });

	}]);