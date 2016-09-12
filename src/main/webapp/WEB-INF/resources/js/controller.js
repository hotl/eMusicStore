var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http) {

    $scope.refreshCart = function()
    {
        $http.get("/eMusicStore/rest/cart/" + $scope.cartId).success(function(data)
            {
                // On success, the response body (data) is passed in JSON format to this function
                $scope.cart = data;
            });
    };

    $scope.clearCart = function()
    {
        $http.delete('/eMusicStore/rest/cart/' + $scope.cartId).success($scope.refreshCart($scope.cartId));
    };

    $scope.initCartId = function(cartId)
    {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function(productId)
    {
        $http.put('/eMusicStore/rest/cart/add/' + productId).success(function()
        {
            alert("Product has been successfully added to cart");
        });
    };

    $scope.removeFromCart = function(productId)
    {
        $http.put('/eMusicStore/rest/cart/remove/' + productId).success(function(data)
        {
            $scope.refreshCart();
        });
    };

    $scope.calGrandTotal = function()
    {
        var grandTotal = 0;
        for (var i = 0; i < $scope.cart.cartItems.length; i++)
        {
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    }

});
