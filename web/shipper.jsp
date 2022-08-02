<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Norda - Minimal eCommerce HTML Template</title>
        <meta name="robots" content="noindex, follow" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png">

        <!-- All CSS is here
            ============================================ -->

        <link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/vendor/signericafat.css">
        <link rel="stylesheet" href="assets/css/vendor/cerebrisans.css">
        <link rel="stylesheet" href="assets/css/vendor/simple-line-icons.css">
        <link rel="stylesheet" href="assets/css/vendor/elegant.css">
        <link rel="stylesheet" href="assets/css/vendor/linear-icon.css">
        <link rel="stylesheet" href="assets/css/plugins/nice-select.css">
        <link rel="stylesheet" href="assets/css/plugins/easyzoom.css">
        <link rel="stylesheet" href="assets/css/plugins/slick.css">
        <link rel="stylesheet" href="assets/css/plugins/animate.css">
        <link rel="stylesheet" href="assets/css/plugins/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/plugins/jquery-ui.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    </head>

    <body>

        <div class="main-wrapper">
            <header class="header-area transparent-bar section-padding-1">
                <div class="container-fluid">
                    <div class="header-large-device">
                        <div class="header-bottom">
                            <div class="row align-items-center">

                                <div class="col-xl-12">
                                    <div class="header-action header-action-flex header-action-mrg-right">

                                        <c:if test="${sessionScope.Account ==null}">
                                            <div class="same-style-2">
                                                <div class="dropdown show">
                                                    <a class=" dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="icon-user"></i></a>
                                                    </a>

                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                        <a class="dropdown-item" href="login?do=login">Login</a>
                                                        <a class="dropdown-item" href="login?do=Register">Register</a>

                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${sessionScope.Account !=null}">
                                            <div class="same-style-2">
                                                <div class="dropdown show">
                                                    <a class=" dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <img src="${sessionScope.Account.imageURL}" class="rounded-circle" alt="A girl" height="30" width="30"/> ${sessionScope.Account.displayname} 
                                                    </a>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                        <a class="dropdown-item" href="login?do=logout">Logout</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>       
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="cart-main-area pt-115 pb-120">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6"></div>



                    </div>

                    <h1 class="cart-page-title" style="text-align: center; padding-bottom: 5%">Status of orders</h1>
                    <form action="shipperController?do=searchOrder" method="POST" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input name="keySearch" type="text" class="form-control bg-light border-2 small" placeholder="Search by address..."
                                   aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button name="submit" class="btn btn-primary" type="submit">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="table-content table-responsive cart-table-content">
                                <table class="">

                                    <thead>
                                        <tr>
                                            <th >ID</th>
                                            <th scope="col">Order date</th>
                                            <th scope="col">Address</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Phone</th>
                                            <th scope="col">Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${list}" var="l">
                                            <tr>
                                                <th style="text-align: center">${l.orderID}</th>
                                                <td>${l.orderDate}</td>
                                                <td>${l.address}</td>
                                                <td>${l.email}</td>
                                                <td >
                                                    <form action="shipperController?do=updateStatus&page=${page}&search=${keySearch}" method="POST">
                                                        <input type="hidden" name="odId" value="${l.orderID}">
                                                        <select name="status" onchange="this.form.submit()" style="background-color: whitesmoke;color: black;border: 1px solid black; width: 55%">
                                                            <option value="1" ${l.status == 1 ? " selected" : ""}><b style="color: red">Wait</b></option>
                                                            <option value="2" ${l.status == 2 ? " selected" : ""}>Process</option>

                                                        </select>
                                                    </form>
                                                </td>
                                                <td>${l.phone}</td>
                                                <td><a href="shipperController?do=details&odID=${l.orderID}">Details</a></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination" style="display: flex; justify-content: center;">
                                    <c:choose>
                                        <c:when test="${search!=null}">
                                            <c:choose>
                                                <c:when test="${list ==null || list.size() ==0}">
                                                    <h2 style="color: red">NOT FOUND</h2>
                                                </c:when> 
                                                <c:otherwise>
                                                    <c:if test="${page!=1}">
                                                        <li class="page-item"><a class="page-link" href="shipperController?do=searchOrder&page=${page-1}&keySearch=${keySearch}">Previous</a></li>   
                                                        </c:if>
                                                        <c:forEach begin="1" end="${totalPage}" var="i">
                                                        <li  class="page-item ${page==i?"active":""}"><a class="page-link"  href="shipperController?do=searchOrder&page=${i}&keySearch=${keySearch}">${i}</a></li>
                                                        </c:forEach>
                                                        <c:if test="${page !=totalPage}">
                                                        <li class="page-item"><a class="page-link" href="shipperController?do=searchOrder&page=${page+1}&keySearch=${keySearch}">Next</a></li>
                                                        </c:if>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:if test="${page!=1}">
                                                <li class="page-item"><a class="page-link" href="shipperController?do=load&page=${page-1}">Previous</a></li>   
                                                </c:if>
                                                <c:forEach begin="1" end="${totalPage}" var="i">
                                                <li  class="page-item ${page==i?"active":""}"><a class="page-link"  href="shipperController?do=load&page=${i}">${i}</a></li>
                                                </c:forEach>
                                                <c:if test="${page!=totalPage}">
                                                <li class="page-item"><a class="page-link" href="shipperController?do=load&page=${page+1}">Next</a></li>
                                                </c:if>
                                            </c:otherwise>
                                        </c:choose>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>            
            <%@include file="component/FooterComponent.jsp" %>
        </div>

        <!-- All JS is here
    ============================================ -->

        <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
        <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
        <script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
        <script src="assets/js/vendor/bootstrap.bundle.min.js"></script>
        <script src="assets/js/plugins/slick.js"></script>
        <script src="assets/js/plugins/jquery.syotimer.min.js"></script>
        <script src="assets/js/plugins/jquery.instagramfeed.min.js"></script>
        <script src="assets/js/plugins/jquery.nice-select.min.js"></script>
        <script src="assets/js/plugins/wow.js"></script>
        <script src="assets/js/plugins/jquery-ui-touch-punch.js"></script>
        <script src="assets/js/plugins/jquery-ui.js"></script>
        <script src="assets/js/plugins/magnific-popup.js"></script>
        <script src="assets/js/plugins/sticky-sidebar.js"></script>
        <script src="assets/js/plugins/easyzoom.js"></script>
        <script src="assets/js/plugins/scrollup.js"></script>
        <script src="assets/js/plugins/ajax-mail.js"></script>

        <!-- Use the minified version files listed below for better performance and remove the files listed above  
    <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>  -->
        <!-- Main JS -->
        <script src="assets/js/main.js"></script>

    </body>

</html>