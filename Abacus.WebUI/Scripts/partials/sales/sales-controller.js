angular.module('sales', ['$api'])
    .config(['$routeProvider', function ($routeProvider) {
        $routeProvider.
            when('/', {
                templateUrl: 'Scripts/partials/sales/sales-view.tpl.html',
                controller: 'salesController'
            });
    }])
	.controller('salesController', ['$scope', '$http', '$api', function ($scope, $http, $api) {
	    $api.get("/api/Product")
            .success(function (data) {
                $scope.Products = data;
            });

	}]);