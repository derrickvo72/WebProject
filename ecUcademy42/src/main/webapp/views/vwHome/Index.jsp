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
                        <img class="d-block w-100" style="width: 100%; height: 450px !important;" src="${pageContext.request.contextPath}/public/images/ct-on-phone-big.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" style="width: 100%; height: 450px !important;" src="${pageContext.request.contextPath}/public/images/qc1.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" style="width: 100%; height: 450px !important;" src="${pageContext.request.contextPath}/public/images/qc2.jpg" alt="Third slide">
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

        <div class="container-lg">
            <!-- tab -->
            <ul class="nav nav-pills">
                <li class="nav-item"><a href="#tab1" data-toggle="tab" class="nav-link active">Python</a></li>
                <li class="nav-item"> <a href="#tab2" data-toggle="tab" class="nav-link">Web develop</a></li>
                <li class="nav-item"><a href="#tab3" data-toggle="tab" class="nav-link">Drawing</a></li>
                <li class="nav-item"><a href="#tab4" data-toggle="tab" class="nav-link">Design</a></li>
            </ul>
<%--                <li class="nav-item">--%>
<%--                    <a href="#tab4" data-toggle="tab" class="nav-link disabled">Tab đầu tiên</a>--%>
<%--                </li>--%>
            <div class="tab-content">
                <div class="tab-pane container active" id="tab1"> <p>Thêm nội dung của bạn vào đây.</p> </div>
                <div class="tab-pane container fade" id="tab2"> <p>Thử thay đổi gì đó khi chuyển tab.</p></div>
                <div class="tab-pane container fade" id="tab3"> <p>Thử thay đổi gì đó khi chuyển tab.</p></div>
                <div class="tab-pane container fade" id="tab4"> <p>Thử thay đổi gì đó khi chuyển tab.</p></div>
            </div>
        </div>
        <!-- Nội dung -->



        <div class="container py-5">
            <div class="jumbotron text-white jumbotron-image shadow  d-flex "
                 style="background-image: url(https://images.unsplash.com/photo-1552152974-19b9caf99137?fit=crop&w=1350&q=80);
width: 100%; flex-wrap: wrap; align-content: center">
                <p class="mb-4 w-50" style="margin-left: auto">
                    <iframe width="50%" height="345" src="https://www.youtube.com/embed/tgbNymZ7vqY">
                    </iframe>
                </p>
                <p class="mb-4 w-50" style="margin-left: auto">
                    <iframe width="50%" height="345" src="https://www.youtube.com/embed/tgbNymZ7vqY">
                    </iframe>
                </p>
            </div>
        </div>


    </jsp:body>
</t:main>