   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Kool Form Pack | Login page</title>

        <!-- CSS FILES -->                
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com">

        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,400;0,700;1,200&family=Unbounded:wght@400;700&display=swap" rel="stylesheet">
        
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-icons.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/tooplate-kool-form-pack.css" rel="stylesheet">
    </head>
    
    <body>

        <main>
            <header class="site-header">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-lg-12 col-12 d-flex">
                            <a class="site-header-text d-flex justify-content-center align-items-center me-auto" href="index.jsp">
                                <i class="bi-box"></i>
                                <span>Kool Form Pack</span>
                            </a>

                            <ul class="social-icon d-flex justify-content-center align-items-center mx-auto">
                                <span class="text-white me-4 d-none d-lg-block">Stay connected</span>
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-instagram"></a>
                                </li>
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-twitter"></a>
                                </li>
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-whatsapp"></a>
                                </li>
                            </ul>

                            <div>
                                <a href="#" class="custom-btn custom-border-btn btn" data-bs-toggle="modal" data-bs-target="#subscribeModal">Notify me
                                    <i class="bi-arrow-right ms-2"></i>
                                </a>
                            </div>

                            <a class="bi-list offcanvas-icon" data-bs-toggle="offcanvas" href="#offcanvasMenu" role="button" aria-controls="offcanvasMenu"></a>
                        </div>
                    </div>
                </div>
            </header>

            <div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasMenu" aria-labelledby="offcanvasMenuLabel">                
                <div class="offcanvas-header">                    
                    <button type="button" class="btn-close ms-auto" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                
                <div class="offcanvas-body d-flex flex-column justify-content-center align-items-center">
                    <nav>
                        <ul>
                            <li>
                                <a class="active" href="login.jsp">Login Form</a>
                            </li>
                            <li>
                                <a href="register.jsp">Create an account</a>
                            </li>
                            <li>
                                <a href="password-reset.jsp">Password Reset</a>
                            </li>
                            <li>
                                <a href="404.jsp">404 Page</a>
                            </li>
                            <li>
                                <a href="contact.jsp">Contact Form</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="subscribeModal" tabindex="-1" aria-labelledby="subscribeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                 

                        <div class="modal-footer justify-content-center">
                            <p>By signing up, you agree to our Privacy Notice</p>
                        </div>
                    </div>
                </div>
            </div>

            <section class="hero-section d-flex justify-content-center align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-12 mx-auto">
                            <form:form class="custom-form login-form" role="form" method="post" action="dologin" modelAttribute="loginObj">
                                <h2 class="hero-title text-center mb-4 pb-2">Login Form</h2>

                                <div class="form-floating mb-4 p-0">
                                    <form:input path="email" type="email" name="email" id="email" class="form-control" placeholder="Email address"/>
                                    <label for="email">Email address</label>
                                </div>

                                <div class="form-floating p-0">
                                    <form:input path="password" type="password" name="password" id="password" class="form-control" placeholder="Password" required=""/>
                                    <label for="password">Password</label>
                                </div>

                                <div class="form-check mb-4">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">Remember me</label>
                                </div>

                                <div class="row justify-content-center align-items-center">
                                    <div class="col-lg-5 col-12">
                                        <button type="submit" class="form-control">Login</button>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <a href="register.jsp" class="btn custom-btn custom-border-btn">Register</a>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>

                <div class="video-wrap">
                    <video autoplay="" loop="" muted="" class="custom-video" poster="">
                        <source src="${pageContext.request.contextPath}/resources/videos/video.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>
            </section>
        </main>

        <!-- JAVASCRIPT FILES -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/resourecs/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/countdown.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/init.js"></script>
    </body>
</html>
