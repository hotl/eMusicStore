<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">More Product Information</p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png"/>" alt="image"
                         style="width:100%; height: 300px" />
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                       <strong>Manufacturer</strong> : ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Category</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Condition</strong> : ${product.productCondition}
                    </p>
                    <h4>${product.productPrice} USD</h4>

                    <br>

                    <c:set var="role" scope="page" value="${pageContext.request.userPrincipal.name}" />
                    <c:set var="url" scope="page" value="/product/productList/all" />
                    <c:if test="${role == 'admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl">

                        <%--Should be redirected back to productList page--%>
                        <a href="<c:url value="${url}"/>" class="btn btn-default">Back</a>
                            <c:if test="${role != 'admin'}">
                                <a href="#" class="btn btn-warning btn-large"
                                   ng-click="addToCart('${product.productId}')">
                                    <span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart</a>
                                <a href="<spring:url value="/customer/cart"/>" class="btn btn-default">
                                    <span class="glyphicon glyphicon-hand-right"></span> View Cart</a>
                            </c:if>


                    </p>
                </div>
            </div>
        </div>


        <script src="<c:url value="/resources/js/controller.js"/>"></script>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
