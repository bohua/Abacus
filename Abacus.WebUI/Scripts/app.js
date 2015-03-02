var Abacus = angular.module('Abacus', [
    //ngModels
    'ngRoute',
    //Services
    '$api',
    //Partials
    'sales',
    'product'
    ]);

Abacus.controller('abacusController', ['$api', function () {
    //$api.init("http://localhost:40001");
}]);