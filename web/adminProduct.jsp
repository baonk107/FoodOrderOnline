<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>SB Admin 2 - Dashboard</title>
        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/mains.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    </head>
    <body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <%@include file="component/AdminSlidebarComponent.jsp" %>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Topbar -->
                <%@include file="component/AdminTopbarComponent.jsp" %>
                <!-- End of Topbar -->
                <h1 class="text-center text-primary">List All Product</h1>
                <!--Main COntent-->
                <div id="content">
                    <div class="d-flex justify-content-between" style="background-color: #ccc; padding:10px 0;">
                        <div class="same-style-2 header-search-1">
                            <!-- Topbar Search -->
                            <form action="adminProduct?do=searchProduct" method="POST" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                <div class="input-group">
                                    <input name="searchKey" type="text" value="${keySearch}" class="form-control bg-light border-2 small" placeholder="Search product name..."
                                           aria-label="Search" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button name="submit" class="btn btn-primary" type="submit">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div>
                            <button type="button" class="btn btn-outline-success"><a href="adminProduct?do=createProduct" style="text-decoration: none;"><i class="fas fa-plus"></i> Add new Product</a></button>
                        </div>
                    </div>
                    <c:if test="${mess != null}"> 
                        <br>
                        <div class="alert alert-danger" role="alert">
                            ${mess}
                        </div> 
                    </c:if>
                    <!-- Main Content -->
                    <div class="col col-md-12">
                        <table class="border table table-striped table-hover table-bordered border-primary text-center" style="margin-top: 10px">
                            <thead class="bg-info" >
                                <tr>
                                    <th>ProductID 
                                        <c:if test="${typePid == \"up\"}">
                                            <a href="adminProduct?do=sort&col=ProductID&type=asc&page=${page}">
                                                <i class="fas fa-sort-numeric-up"></i>
                                            </a>
                                        </c:if>
                                        <c:if test="${typePid != \"up\"}">
                                            <a href="adminProduct?do=sort&col=ProductID&type=desc&page=${page}">
                                                <i class="fas fa-sort-numeric-down"></i>
                                            </a>
                                        </c:if>
                                    </th>
                                    <th>Product Name
                                        <c:if test="${typePname == \"up\"}">
                                            <a href="adminProduct?do=sort&col=ProductName&type=asc&page=${page}">
                                                <i class="fas fa-sort-alpha-up"></i>
                                            </a>
                                        </c:if>
                                        <c:if test="${typePname != \"up\"}">
                                            <a href="adminProduct?do=sort&col=ProductName&type=desc&page=${page}">
                                                <i class="fas fa-sort-alpha-down"></i>
                                            </a>
                                        </c:if>   
                                    </th>
                                    <th>Supplier
                                        <c:if test="${typeSup == \"up\"}">
                                            <a href="adminProduct?do=sort&col=SupplierID&type=asc&page=${page}">
                                                <i class="fas fa-sort-alpha-up"></i>
                                            </a>
                                        </c:if>
                                        <c:if test="${typeSup != \"up\"}">
                                            <a href="adminProduct?do=sort&col=SupplierID&type=desc&page=${page}">
                                                <i class="fas fa-sort-alpha-down"></i>
                                            </a>
                                        </c:if>
                                    </th>
                                    <th>Category
                                        <c:if test="${typeCate == \"up\"}">
                                            <a href="adminProduct?do=sort&col=CategoryID&type=asc&page=${page}">
                                                <i class="fas fa-sort-alpha-up"></i>
                                            </a>
                                        </c:if>
                                        <c:if test="${typeCate != \"up\"}">
                                            <a href="adminProduct?do=sort&col=CategoryID&type=desc&page=${page}">
                                                <i class="fas fa-sort-alpha-down"></i>
                                            </a>
                                        </c:if>
                                    </th>
                                    <th>Quantity</th>
                                    <th>Price
                                        <c:if test="${typePrice == \"up\"}">
                                            <a href="adminProduct?do=sort&col=UnitPrice&type=asc&page=${page}">
                                                <i class="fas fa-sort-numeric-up"></i>
                                            </a>
                                        </c:if>
                                        <c:if test="${typePrice != \"up\"}">
                                            <a href="adminProduct?do=sort&col=UnitPrice&type=desc&page=${page}">
                                                <i class="fas fa-sort-numeric-down"></i>
                                            </a>
                                        </c:if>
                                    </th>
                                    <th>Discount
                                        <c:if test="${typeDis == \"up\"}">
                                            <a href="adminProduct?do=sort&col=Discount&type=asc&page=${page}">
                                                <i class="fas fa-sort-numeric-up"></i>
                                            </a>
                                        </c:if>
                                        <c:if test="${typeDis != \"up\"}">
                                            <a href="adminProduct?do=sort&col=Discount&type=desc&page=${page}">
                                                <i class="fas fa-sort-numeric-down"></i>
                                            </a>
                                        </c:if>
                                    </th>
                                    <th>UnitInStock
                                        <c:if test="${typeStock == \"up\"}">
                                            <a href="adminProduct?do=sort&col=UnitInStock&type=asc&page=${page}">
                                                <i class="fas fa-sort-numeric-up"></i>
                                            </a>
                                        </c:if>
                                        <c:if test="${typeStock != \"up\"}">
                                            <a href="adminProduct?do=sort&col=UnitInStock&type=desc&page=${page}">
                                                <i class="fas fa-sort-numeric-down"></i>
                                            </a>
                                        </c:if>
                                    </th>
                                    <th>Description</th>
                                    <th>Images</th>
                                    <th>IsActive
                                        <c:if test="${typeActive == \"up\"}">
                                            <a href="adminProduct?do=sort&col=IsActive&type=asc&page=${page}">
                                                <i class="fas fa-sort"></i>
                                            </a>
                                        </c:if>
                                        <c:if test="${typeActive != \"up\"}">
                                            <a href="adminProduct?do=sort&col=IsActive&type=desc&page=${page}">
                                                <i class="fas fa-sort"></i>
                                            </a>
                                        </c:if>
                                    </th>
                                    <th>Edit</th>
                                    <th>Delete</th>    
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listProduct}" var="l">
                                    <tr>
                                        <td style="text-align: right;">${l.productID}</td>
                                        <td style="text-align: left;">${l.productName}</td>
                                        <c:forEach items="${listSup}" var="ls">
                                            <c:if test="${l.supplierID == ls.supplierID}">
                                                <td style="text-align: left;">${ls.companyName}</td>
                                            </c:if>
                                        </c:forEach>
                                        <c:forEach items="${listCate}" var="lc">
                                            <c:if test="${l.categoryID == lc.categoryID}">
                                                <td style="text-align: left;">${lc.categoryName}</td>
                                            </c:if>
                                        </c:forEach>
                                        <td style="text-align: right;">${l.quantity}</td>
                                        <td style="text-align: right;">${l.unitPrice}$</td>
                                        <td style="text-align: right;">${l.discount}</td>
                                        <td style="text-align: right;">${l.unitInStock}</td>
                                        <td style="text-align: left;">${l.description}</td>
                                        <td><img src="${l.imageURL}" style="width: 100px"></td>
                                        <td>
                                            <c:if test="${l.isActive == 1}">
                                                <i style="color: green;" class="fas fa-toggle-on"></i>
                                            </c:if>
                                            <c:if test="${l.isActive == 0}">
                                                <i style="color: red;" class="fas fa-toggle-off"></i>
                                            </c:if>
                                        </td>
                                        <td><a href="adminProduct?do=updateProduct&pID=${l.productID}"><i class="fas fa-edit"></i></a></td>
                                        <td>
                                            <button style="color: red; border: none;" type="button" data-toggle="modal" data-target="#myModal${l.productID}">
                                                <i class="fas fa-trash"></i>
                                            </button>

                                            <!-- The Modal -->
                                            <div class="modal" id="myModal${l.productID}">
                                                <div class="modal-dialog">
                                                    <div class="modal-content" style="width: 60%;margin: auto;text-align: center;">
                                                        <!-- Modal Header -->
                                                        <div class="modal-header">
                                                            <h4 class="modal-title">Delete product</h4>
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        </div>
                                                        <!-- Modal body -->
                                                        <div class="modal-body">
                                                            Are you sure you want to delete the product?
                                                        </div>
                                                        <!-- Modal footer -->
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-info" data-dismiss="modal">No</button>
                                                            <button type="button" class="btn btn-danger"><a style="text-decoration: none; color: white;" href="adminProduct?do=deleteProduct&pID=${l.productID}">Yes</a></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <!--Paging-->
                        <!--Paging Product-->
                        <c:if test="${sessionScope.backToUrl eq \"adminProduct\"}">
                            <c:choose>
                                <c:when test="${listProduct == null || listProduct.size() == 0}">
                                    Not FOUND
                                </c:when>
                                <c:otherwise>
                                    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                        <ul class="pagination">
                                            <c:if test="${page > 1}">
                                                <li class="page-item"><a class="page-link" href="adminProduct?do=ProductHome&page=${page - 1}">Previous</a></li>
                                                </c:if>
                                                <c:if test="${totalPage != 1}">
                                                    <c:forEach begin="1" end="${totalPage}" var="i">
                                                    <li class="page-item ${i == page?" active":""}"><a class="page-link" href="adminProduct?do=ProductHome&page=${i}">${i}</a></li>
                                                    </c:forEach>
                                                </c:if>
                                                <c:if test="${page < totalPage}">
                                                <li class="page-item"><a class="page-link" href="adminProduct?do=ProductHome&page=${page + 1}">Next</a></li>
                                                </c:if>
                                        </ul>
                                    </nav>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                        <!--Paging Search-->
                        <c:if test="${sessionScope.backToUrl eq \"adminProduct?do=searchProduct\"}">
                            <c:choose>
                                <c:when test="${listProduct == null || listProduct.size() == 0}">
                                    Not FOUND
                                </c:when>
                                <c:otherwise>
                                    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                        <ul class="pagination">
                                            <c:if test="${page > 1}">
                                                <li class="page-item"><a class="page-link" href="adminProduct?do=searchProduct&page=${page - 1}&searchKey=${keySearch}">Previous</a></li>
                                                </c:if>
                                                <c:if test="${totalPage != 1}">
                                                    <c:forEach begin="1" end="${totalPage}" var="i">
                                                    <li class="page-item ${i == page?" active":""}"><a class="page-link" href="adminProduct?do=searchProduct&page=${i}&searchKey=${keySearch}">${i}</a></li>
                                                    </c:forEach>
                                                </c:if>
                                                <c:if test="${page < totalPage}">
                                                <li class="page-item"><a class="page-link" href="adminProduct?do=searchProduct&page=${page + 1}&searchKey=${keySearch}">Next</a></li>
                                                </c:if>
                                        </ul>
                                    </nav>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                    </div>
                </div>
                <!-- End of Main Content -->
                <!-- Footer -->
                <%@include file="component/AdminFooterComponent.jsp" %>
                <!-- End of Footer -->
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>
        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="adminProfile?do=logout">Logout</a>
                    </div>
                </div>
            </div>
        </div>


        <!--Scrip Jquery modal-->
        <!--        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>-->  
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>
        <!-- Page level plugins -->
        <script src="vendor/chart.js/Chart.min.js"></script>
        <!-- Page level custom scripts -->
        <script src="js/demo/chart-area-demo.js"></script>
        <script src="js/demo/chart-pie-demo.js"></script>
        <script src="js/demo/chart-bar-demo.js"></script>
    </body>
</html>