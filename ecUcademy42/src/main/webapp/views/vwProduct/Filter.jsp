<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:main>
    <jsp:body>

        <style>
            <%@include file="/WEB-INF/css/Filter.css"%>
        </style>


        <div class="container-fluid" style=" border: 4px solid red; height: auto; width: 100%;padding-top: 5rem">
            <div class="row">
                <div style="border: 4px solid blue;  text-align: left" class="col-lg-3">
                    <div class="card-item">

                        <div class="processor p-2">
                            <div class="heading d-flex justify-content-between align-items-center">
                                <h6 class="text-uppercase">Categories</h6>
                            </div>

                            <div class="profile-usermenu">
                                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                    <a class="nav-link active" id="v-pills-profile-tab" data-toggle="pill"
                                       href="#v-pills-profile" role="tab" aria-controls="v-pills-home"
                                       aria-selected="true">
                                        <i class="fa fa-star" aria-hidden="true"></i>&ensp;  Lập trình Web</a>

                                    <a class="nav-link" id="v-pills-total-tab" data-toggle="pill"
                                       href="#v-pills-total" role="tab" aria-controls="v-pills-total"
                                       aria-selected="false">
                                        <i class="fa fa-star" aria-hidden="true"></i>&ensp; Lập trình C</a>
                                </div>
                            </div>

                        </div>


                    </div>
                </div>

<%-- Display theo loai               --%>
                <div style="padding:0; border: 4px solid green;  text-align: center" class="col-lg-9">


                    <div class="card-item">
                        <div class="col-md-12">
                            <div class="profile-content">
                                <div class="tab-content" id="v-pills-tabContent">

                                    <div class="tab-pane fade show active" id="v-pills-profile" role="tabpanel"
                                         aria-labelledby="v-pills-profile-tab">
                                        <h3>Lap trinh Web</h3>
                                        <hr style="border-top: 3px double #8c8b8b;">

                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="product py-4"> <span class="off bg-success">-25% OFF</span>
                                                        <div class="text-center"> <img src="https://i.imgur.com/nOFet9u.jpg" width="200"> </div>
                                                        <div class="about text-center">
                                                            <h5>XRD Active Shoes</h5> <span>$1,999.99</span>
                                                        </div>
                                                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                                            <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="product py-4"> <span class="off bg-warning">SALE</span>
                                                        <div class="text-center"> <img src="https://i.imgur.com/VY0R9aV.png" width="200"> </div>
                                                        <div class="about text-center">
                                                            <h5>Hygen Smart watch </h5> <span>$123.43</span>
                                                        </div>
                                                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                                            <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="product py-4">
                                                        <div class="text-center"> <img src="https://i.imgur.com/PSGrLdz.jpg" width="200"> </div>
                                                        <div class="about text-center">
                                                            <h5>Acer surface book 2.5</h5> <span>$1,999.99</span>
                                                        </div>
                                                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                                            <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="product py-4"> <span class="off bg-success">-10% OFF</span>
                                                        <div class="text-center"> <img src="https://i.imgur.com/OdRSpXG.jpg" width="200"> </div>
                                                        <div class="about text-center">
                                                            <h5>Dell XPS Surface</h5> <span>$1,245.89</span>
                                                        </div>
                                                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                                            <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div  class="tab-pane fade" id="v-pills-total" role="tabpanel"
                                         aria-labelledby="v-pills-total-tab">
                                                <h3> Lap trinh C</h3>
                                        <hr style="border-top: 3px double #8c8b8b;">

                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="product py-4">
                                                        <!-- <span class="off bg-success">-25% OFF</span> -->
                                                        <div class="text-center"> <img src="https://i.imgur.com/X2AwTCY.jpg" width="200"> </div>
                                                        <div class="about text-center">
                                                            <h5>Acer surface book 5.5</h5> <span>$2,999.99</span>
                                                        </div>
                                                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                                            <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="product py-4"> <span class="off bg-success">-5% OFF</span>
                                                        <div class="text-center"> <img src="https://i.imgur.com/QQwcBpF.png" width="200"> </div>
                                                        <div class="about text-center">
                                                            <h5>Xps smart watch 5.0</h5> <span>$999.99</span>
                                                        </div>
                                                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                                            <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="product py-4"> <span class="off bg-warning">SALE</span>
                                                        <div class="text-center"> <img src="https://i.imgur.com/PSGrLdz.jpg" width="200"> </div>
                                                        <div class="about text-center">
                                                            <h5>Acer surface book 8.5</h5> <span>$3,999.99</span>
                                                        </div>
                                                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                                            <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="product py-4">
                                                        <div class="text-center"> <img src="https://i.imgur.com/OdRSpXG.jpg" width="200"> </div>
                                                        <div class="about text-center">
                                                            <h5>Dell surface book 5</h5> <span>$1,999.99</span>
                                                        </div>
                                                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                                            <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
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

            </div>
        </div>



    </jsp:body>

</t:main>