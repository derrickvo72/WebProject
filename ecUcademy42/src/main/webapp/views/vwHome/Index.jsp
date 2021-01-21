<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:main>
    <jsp:body>
        <div class="container-fluid">
            <div class=”row banner”>
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="width: 100%;">
                    <div class="carousel-inner">
                        <div class="carousel-caption">
                            <h1>
                                <div class="goo" contenteditable="false">
                                    Dream up <br>
                                    Ambition accepted. Learn the latest skills to reach your professional goals
                                </div>
                            </h1>
                            <a href="#" class="btn btn-lg btn-primary">Get started</a>
                        </div><!-- end carousel-caption -->
                        <div class="carousel-item active">
                            <img class="d-block w-100" style="width: 100%; height: 450px !important;"
                                 src="${pageContext.request.contextPath}/public/images/ct-on-phone-big.jpg"
                                 alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" style="width: 100%; height: 450px !important;"
                                 src="${pageContext.request.contextPath}/public/images/qc1.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" style="width: 100%; height: 450px !important;"
                                 src="${pageContext.request.contextPath}/public/images/qc2.jpg" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>

        <div class="container-lg" style="padding-top: 20px">
            <!-- tab -->
            <ul class="nav nav-pills">
                <li class="nav-item"><a href="#tab1" data-toggle="tab" class="nav-link active">Python</a></li>
                <li class="nav-item"><a href="#tab2" data-toggle="tab" class="nav-link">Web develop</a></li>
                <li class="nav-item"><a href="#tab3" data-toggle="tab" class="nav-link">Drawing</a></li>
                <li class="nav-item"><a href="#tab4" data-toggle="tab" class="nav-link">Design</a></li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane container active" id="tab1">
                    <div class="row mt-5 mb-5">
                        <c:forEach begin="1" end="4">
                            <div class="col-sm-3 mb-3">
                                <div class="card rounded shadow-sm border-0">
                                    <div class="card-body p-2"><img
                                            src="https://res.cloudinary.com/mhmd/image/upload/v1556485076/shoes-1_gthops.jpg"
                                            alt="" class=" card-img-top"/>
                                        <div class="overlay">
                                            <div class="row" style="color: yellow">
                                                <div class="col-sm-12">
                                                    <h5 class="card-title">
                                                        The Web Developer Bootcamp 2021
                                                    </h5>
                                                </div>
                                            </div>
                                            <div class="row" style="color: yellow">
                                                <div class="col-sm-4">
                                                    <h6 class="card-title" style="background-color: red">Best
                                                        seller</h6>
                                                </div>
                                                <div class="col-sm-8">
                                                    <h6 class="card-title" style="text-align: right;">Updated January
                                                        2021</h6>
                                                </div>
                                            </div>
                                            <div class="row pt-4" style="color: yellow">
                                                <div class="col-sm-12">
                                                    <h5 class="card-title"><i class="fa fa-thumbs-up"
                                                                              aria-hidden="true"></i>
                                                        COMPLETELY REDONE - The only course you need to learn web
                                                        development - HTML, CSS, JS, Node, and More!
                                                    </h5>
                                                </div>
                                            </div>
                                            <div class="row pt-2" style="color: yellow">
                                                <div class="col-sm-12">
                                                    <h5 class="card-title"><i class="fa fa-check-circle"
                                                                              aria-hidden="true"></i> 100 hourse</h5>
                                                </div>
                                                <div class="col-sm-12">
                                                    <h5 class="card-title"><i class="fa fa-check-circle"
                                                                              aria-hidden="true"></i> All level</h5>
                                                </div>
                                                <div class="col-sm-12">
                                                    <h5 class="card-title"><i class="fa fa-check-circle"
                                                                              aria-hidden="true"></i> Subtitles</h5>
                                                </div>
                                            </div>

                                        </div>
                                        <h5><a href="#" class="text-dark">Awesome product</a></h5>
                                        <h5 class="card-title text-danger">
                                            200.000 vnđ
                                        </h5>
                                        <p class="small text-muted font-italic">Lorem ipsum dolor sit amet, consectetur
                                            adipisicing elit.</p>
                                        <ul class="list-inline small">
                                            <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i>
                                            </li>
                                            <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i>
                                            </li>
                                            <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i>
                                            </li>
                                            <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i>
                                            </li>
                                            <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i>
                                            </li>
                                            <i class="fa fa-thumbs-o-up" aria-hidden="true" style="float: right">150</i>
                                        </ul>
                                    </div>
                                    <div class="card-footer text-muted">
                                        <a class="btn btn-sm btn-outline-primary" href="#" role="button">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                            Detail
                                        </a>
                                        <a class="btn btn-sm btn-outline-success" href="#" role="button">
                                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                            Add to cart
                                        </a>
                                        <a class="btn btn-sm btn-outline-danger" href="#" role="button">
                                            <i class="fa fa-heart" aria-hidden="true"></i>
                                            Favorite
                                        </a>
                                        <a class="btn btn-sm btn-outline-secondary" href="#" role="button">
                                            <i class="fa fa-thumbs-up" aria-hidden="true"></i>
                                            Like
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>


                <div class="tab-pane container fade" id="tab2">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h3>Product Slider</h3>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6 hidden-xs">
                            <div class="controls pull-right">
                                <a class="left fa fa-chevron-left btn btn-info " href="#carousel-example"
                                   data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-info"
                                                            href="#carousel-example" data-slide="next"></a>
                            </div>
                        </div>
                    </div>

                    <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel" data-type="multi">
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="row">
                                    <c:forEach begin="1" end="4">
                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                            <div class="slider-item">
                                                <div class="slider-image">
                                                    <img src="${pageContext.request.contextPath}/public/images/1_thumbs.jpg"
                                                         class="img-responsive" alt="a"/>
                                                </div>
                                                <div class="slider-main-detail">
                                                    <div class="slider-detail">
                                                        <div class="product-detail">
                                                            <h5>Product Name</h5>
                                                            <h5 class="detail-price">$187.87</h5>
                                                        </div>
                                                    </div>
                                                    <div class="cart-section">
                                                        <div class="row">
                                                            <div class="col-md-6 col-sm-12 col-xs-6 review">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                                            </div>
                                                            <div class="col-md-6 col-sm-12 col-xs-6">
                                                                <a href="#" class="AddCart btn btn-info"><i
                                                                        class="fa fa-shopping-cart"
                                                                        aria-hidden="true"></i> Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <div class="slider-item">
                                            <div class="slider-image">
                                                <img src="${pageContext.request.contextPath}/public/images/1_thumbs.jpg"
                                                     class="img-responsive" alt="a"/>
                                            </div>
                                            <div class="slider-main-detail">
                                                <div class="slider-detail">
                                                    <div class="product-detail">
                                                        <h5>Product Name</h5>
                                                        <h5 class="detail-price">$187.87</h5>
                                                    </div>
                                                </div>
                                                <div class="cart-section">
                                                    <div class="row">
                                                        <div class="col-md-6 col-sm-12 col-xs-6 review">
                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                                        </div>
                                                        <div class="col-md-6 col-sm-12 col-xs-6">
                                                            <a href="#" class="AddCart btn btn-info"><i
                                                                    class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                                Add To Cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane container fade" id="tab3"><p>Thử thay đổi gì đó khi chuyển tab.</p></div>
                <div class="tab-pane container fade" id="tab4"><p>Thử thay đổi gì đó khi chuyển tab.</p></div>
            </div>
        </div>
        <!-- Nội dung -->

        <div class="jumbotron jumbotron-fruid">
            <div class="container text-white" style="text-align: center">
                <h5 class="display-4"><b>Become an good developer</b></h5>
                    <%--<hr class="my-4">--%>
                <p style="font-size: medium" class="lead text-white">"No one in the brief history of computing has ever written a piece of perfect software. It's unlikely that you'll be the first." - Andy Hunt.</p>
                <p style="font-size: medium"  class="lead text-white">"One of the best programming skills you can have is knowing when to walk away for awhile." - Oscar Godson</p>
                <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
            </div>
        </div>

        <div class="container-lg" style="padding-top: 20px; padding-bottom: 20px;">
            <div class="row">
                <div class="col-md-12">
                    <h1 style="color: black;">Featured topics by category </h1>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="row">
                        <div class="col-sm-12 pt-5"><h4>Development</h4></div>
                        <c:forEach begin="1" end="4">
                            <div class="col-sm-12 pt-5">
                                <a style="text-decoration: none" href="#"><h5>Java</h5></a>
                                <p>23,692,500 students</p>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="row">
                        <div class="col-sm-12 pt-5"><h4>Business</h4></div>
                        <c:forEach begin="1" end="4">
                            <div class="col-sm-12 pt-5">
                                <a style="text-decoration: none" href="#"><h5>Java</h5></a>
                                <p>23,692,500 students</p>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="row">
                        <div class="col-sm-12 pt-5"><h4>IT and Software</h4></div>
                        <c:forEach begin="1" end="4">
                            <div class="col-sm-12 pt-5">
                                <a style="text-decoration: none" href="#"><h5>Java</h5></a>
                                <p>23,692,500 students</p>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="row">
                        <div class="col-sm-12 pt-5"><h4>Design</h4></div>
                        <c:forEach begin="1" end="4">
                            <div class="col-sm-12 pt-5">
                                <a style="text-decoration: none" href="#"><h5>Java</h5></a>
                                <p>23,692,500 students</p>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 pt-5">
                    <form method="get" action="https://fontawesome.com/v4.7.0/icon/thumbs-up">
                        <button type="submit" class="btn btn-primary btn-lg">Get more</button>
                    </form>
                </div>
            </div>
        </div>

        <%--        Intro our team--%>
        <div class="container-fluid">
            <div class="container py-5">
                <h2 class="font-weight-bold mb-2">Our Team</h2>
                <p class="font-italic text-muted mb-4">WEB DEVELOPER.</p>
                <div class="row mt-5 mb-5">
                    <div class="col-sm-3 mb-3">
                        <!-- Card-->
                        <div class="card border-dark">
                            <div class="card-body p-0 ">
                                <img
                                        src="${pageContext.request.contextPath}/public/images/" alt=""
                                        class="card-img-top">
                                <div class="p-4">
                                    <h5 class="mb-0">Admin</h5>
                                    <p class="small text-muted">18110101</p>
                                    <ul class="social mb-0 list-inline mt-3">
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-facebook-f"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-twitter"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-instagram"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 mb-3">
                        <!-- Card-->
                        <div class="card border-dark">
                            <div class="card-body p-0 ">
                                <img
                                        src="${pageContext.request.contextPath}/public/images/" alt=""
                                        class="card-img-top">
                                <div class="p-4">
                                    <h5 class="mb-0">Admin</h5>
                                    <p class="small text-muted">18110141</p>
                                    <ul class="social mb-0 list-inline mt-3">
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-facebook-f"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-twitter"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-instagram"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 mb-3">
                        <!-- Card-->
                        <div class="card border-dark">
                            <div class="card-body p-0 ">
                                <img
                                        src="${pageContext.request.contextPath}/public/images/" alt=""
                                        class="card-img-top">
                                <div class="p-4">
                                    <h5 class="mb-0">Associate</h5>
                                    <p class="small text-muted">References</p>
                                    <ul class="social mb-0 list-inline mt-3">
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-facebook-f"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-twitter"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-instagram"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 mb-3">
                        <!-- Card-->
                        <div class="card border-dark">
                            <div class="card-body p-0 ">
                                <img
                                        src="${pageContext.request.contextPath}/public/images/" alt=""
                                        class="card-img-top">
                                <div class="p-4">
                                    <h5 class="mb-0">Associate</h5>
                                    <p class="small text-muted">References</p>
                                    <ul class="social mb-0 list-inline mt-3">
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-facebook-f"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-twitter"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-instagram"></i></a></li>
                                        <li class="list-inline-item m-0"><a href="#" class="social-link"><i
                                                class="fa fa-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="jumbotron-teaching jumbotron-fruid-teaching" style="display: block;">
            <div class="context-white">
<%--                <div class="row">--%>

                        <img src="https://s.udemycdn.com/home/non-student-cta/udlite-lohp-promo-teacher.jpg" alt=""
                            style="width: 400px; height: 400px;">

<%--                </div>--%>
            </div>

            <div class="container-fluid">
                <div class="res-text">
                    <div class="res-content">
                        <p style="font-size: medium; color: black;"  class="lead">
                        <h5 class="display-4" style="color: black"><b>Become an instructor</b></h5>
                            Top instructors from around the world teach millions of students on Udemy. We provide the tools and skills to teach what you love</p>
                        <a style="background-color: #003640;" class="btn btn-primary btn-lg" href="#" role="button"><b>Start teaching today</b></a>
                    </div>
                </div>
            </div>
        </div>


        <%--        Jumbotron cu--%>
<%--        <div class="container py-5">--%>
<%--            <div class="jumbotron text-white jumbotron-image shadow  d-flex "--%>
<%--                 style="background-image: url(https://images.unsplash.com/photo-1552152974-19b9caf99137?fit=crop&w=1350&q=80);--%>
<%--                    width: 100%; flex-wrap: wrap; align-content: center">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-md-2">--%>
<%--                        <c:forEach begin="1" end="10">--%>
<%--                            <br>--%>
<%--                        </c:forEach>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-5">--%>
<%--                        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/tgbNymZ7vqY">--%>
<%--                        </iframe>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-5" style="align-items: center">--%>
<%--                        <c:forEach begin="1" end="3">--%>
<%--                            <br>--%>
<%--                        </c:forEach>--%>
<%--                        <h3 style="color: white">Transform your life through education</h3>--%>
<%--                        <h5>Mohamad Alaloush launched a new career in software development by taking courses on Udemy.--%>
<%--                            What will you be able to do?</h5>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

    </jsp:body>
</t:main>