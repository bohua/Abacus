angular.module('product', ['$api'])
    .config(['$routeProvider', function ($routeProvider) {
        $routeProvider.
            when('/ProductView', {
                templateUrl: 'Scripts/partials/basic/product/product-view.tpl.html',
                controller: 'productController'
            });
    }])
	.controller('productController', ['$scope', '$http', '$api', function ($scope, $http, $api) {
	    $api.get("/api/Product")
            .success(function (data) {
                //$scope.Products = data;

                var dto = $.map(data, function(n){
                    return {
                        Id: n.Id,
                        ProductName: n.ProductName,
                        ProductPrice: n.ProductPrice
                    };
                });

                console.log(dto);

                $('#product-list').bootstrapTable({
                    sortName: 'ProductName',
                    sortOrder: 'asc',
                    columns: [{
                        field: 'Id',
                        title: '代码'
                    }, {
                        field: 'ProductName',
                        title: '产品',
                        sortable: true,
                        editable: {
                            type: 'text'
                        }
                    }, {
                        field: 'ProductPrice',
                        title: '价格',
                        sortable: true,
                        editable: {
                            type: 'text'
                        }
                    }],
                    data: dto
                });
            });

	}]);