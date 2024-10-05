<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <title>Lugx Gaming - Shop Page</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/vendor1/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="<c:url value='/assets1/css/fontawesome.css' />">
    <link rel="stylesheet" href="<c:url value='/assets1/css/templatemo-lugx-gaming.css' />">
    <link rel="stylesheet" href="<c:url value='/assets1/css/owl.css' />">
    <link rel="stylesheet" href="<c:url value='https://unpkg.com/swiper@7/swiper-bundle.min.css' />">
</head>

<body>

    <!-- ***** Preloader Start ***** -->
    <div id="js-preloader" class="js-preloader">
        <div class="preloader-inner">
            <span class="dot"></span>
            <div class="dots">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
    <!-- ***** Preloader End ***** -->

    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="<c:url value='/index.jsp' />" class="logo">
                            <img src="<c:url value='/resources/images/logo.png' />" alt="" style="width: 158px;">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li><a href="<c:url value='/index.jsp' />">Home</a></li>
                            <li><a href="<c:url value='/shop.jsp' />" class="active">Our Shop</a></li>
                            <li><a href="<c:url value='/product-details.jsp' />">Product Details</a></li>
                            <li><a href="<c:url value='/contact.jsp' />">Contact Us</a></li>
                            <li><a href="#">Sign In</a></li>
                        </ul>
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <div class="page-heading header-text">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3>Our Shop</h3>
                    <span class="breadcrumb"><a href="#">Home</a> > Our Shop</span>
                </div>
            </div>
        </div>
    </div>

    <div class="section trending">
        <div class="container">
            <ul class="trending-filter">
                <li>
                    <a class="is_active" href="#!" data-filter="*">Show All</a>
                </li>
                <li>
                    <a href="#!" data-filter=".adv">Adventure</a>
                </li>
                <li>
                    <a href="#!" data-filter=".str">Strategy</a>
                </li>
                <li>
                    <a href="#!" data-filter=".rac">Racing</a>
                </li>
            </ul>
            <div class="row trending-box">
                <!-- Sample Dynamic Product List -->
                <c:forEach var="product" items="${products}">
                    <div class="col-lg-3 col-md-6 align-self-center mb-30 trending-items ${product.category}">
                        <div class="item">
                            <div class="thumb">
                                <a href="<c:url value='/product-details.jsp?id=${product.id}' />"><img src="<c:url value='/assets1/images/${product.image}' />" alt="${product.name}"></a>
                                <span class="price"><em>$${product.originalPrice}</em>$${product.discountPrice}</span>
                            </div>
                            <div class="down-content">
                                <span class="category">${product.category}</span>
                                <h4>${product.name}</h4>
                                <a href="<c:url value='/product-details.jsp?id=${product.id}' />"><i class="fa fa-shopping-bag"></i></a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="pagination">
                        <li><a href="#"> &lt; </a></li>
                        <li><a href="#">1</a></li>
                        <li><a class="is_active" href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#"> &gt; </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="col-lg-12">
                <p>Copyright © 2048 LUGX Gaming Company. All rights reserved. &nbsp;&nbsp;
                    <a rel="nofollow" href="https://templatemo.com" target="_blank">Design: TemplateMo</a>
                </p>
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->
    <script src="<c:url value='/vendor1/jquery/jquery.min.js' />"></script>
    <script src="<c:url value='/vendor1/bootstrap/js/bootstrap.min.js' />"></script>
    <script src="<c:url value='/assets1/js/isotope.min.js' />"></script>
    <script src="<c:url value='/assets1/js/owl-carousel.js' />"></script>
    <script src="<c:url value='/assets1/js/counter.js' />"></script>
    <script src="<c:url value='/assets1/js/custom.js' />"></script>

</body>

</html>
