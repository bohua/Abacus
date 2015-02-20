angular.module('sales', [])
    .config(['$routeProvider', function ($routeProvider) {
        $routeProvider.
            when('/', {
                templateUrl: 'Scripts/partials/sales/sales-view.tpl.html',
                controller: 'salesController'
            });
    }])
	.controller('salesController', ['$scope', function ($scope) {

	}]);