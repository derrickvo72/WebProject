<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="course" scope="request" type="beans.course"/>
<jsp:useBean id="authUser" scope="session" type="beans.user"/>

<t:main>
    <jsp:body>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
        <style>
            <%@include file="/WEB-INF/css/InfoProduct.css"%>
        </style>


        <div class="container-fluid" style=" height: auto; width: 100%;padding-top: 5rem">
            <div class="row">

                <div style="text-align: left" class="col-lg-6">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="container-fliud">
                                <div class="wrapper row">
                                    <div class="preview col-md-12">

                                        <div style="border: 4px solid #428bca;" class="preview-pic tab-content">
                                            <div class="tab-pane active" id="pic-1"><img src="${pageContext.request.contextPath}/public/course/${course.course_id}/${course.img}" /></div>
<%--                                            <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>--%>
<%--                                            <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>--%>
<%--                                            <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>--%>
<%--                                            <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>--%>
                                        </div>
<%--                                        <ul class="preview-thumbnail nav nav-tabs">--%>
<%--                                            <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>--%>
<%--                                            <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>--%>
<%--                                            <li><a data-target="#pic-3" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>--%>
<%--                                            <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>--%>
<%--                                            <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>--%>
<%--                                        </ul>--%>

                                    </div>
                                    <div class="details col-md-12">
                                        <div style="margin-top: 10px;" class="rating">
<%--                                            <fmt:formatDate value="${course.created_at}" pattern="dd-MM-yyyy" />--%>
                                            <span class="review-no"><fmt:formatDate value="${course.created_at}" pattern="dd-MM-yyyy" /></span> &ensp;
                                            <span class="review-no"><i class="fa fa-eye" aria-hidden="true"></i> 1000 reviews</span>
                                        </div>

                                        <h5 class="sizes">Tác giả:
                                            <span class="size" data-toggle="tooltip" title="small">${course.teacher_name}</span>
                                        </h5>
                                        <h5 class="sizes">Loại:
                                            <span class="size" data-toggle="tooltip" title="small">${course.category_name}</span>
                                        </h5>
                                        <h5 class="sizes">Liên kết:
                                            <span class="size" data-toggle="tooltip" title="small">
                                                <a style="color: black" href="${course.course_link}">${course.course_link}</a>
                                            </span>
                                        </h5>

                                        <h3 style="margin-top: 10px;" class="product-title">
                                            ${course.course_name}
                                        </h3>

                                        <p class="product-description">
                                            ${course.course_fullinfo}
                                        </p>
                                        <p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>

<%--                                        <h5 class="colors">colors:--%>
<%--                                            <span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>--%>
<%--                                            <span class="color green not-available" data-toggle="tooltip" title="Not In store"></span>--%>
<%--                                            <span class="color blue"></span>--%>
<%--                                        </h5>--%>
                                        <h4 class="price">current price: <span>$${course.course_price}</span></h4>

                                        <div class="action">
                                            <form id="frmBuy" method="get" action="${pageContext.request.contextPath}/Home/Buy">
                                                <input type="hidden" name="course_id" value="${course.course_id}">
                                                <input type="hidden" name="user_id" value="${authUser.user_id}">
                                            </form>
                                            <button style="background-color: red" class="add-to-cart btn btn-default" onclick="javascript: $('#frmBuy').submit();" type="button">Buy</button>
                                            <button class="add-to-cart btn btn-default" type="button">Add to cart</button>
                                            <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12" style="padding-top: 50px;">
                        <h2 style="font-family: monospace">All lessions</h2>
                        <div class="card p-3">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="user d-flex flex-row align-items-center">
                                    <i style="padding-right: 10px" class="fa fa-play" aria-hidden="true"></i><span>
                                    <a href="#"><small style="font-size:18px;font-family:monospace " class="font-weight-bold text-primary">Lap trinh vui nhon</small>
                                    </a><small style="font-size:18px; padding-left: 10px" class="font-weight-bold">c#</small></span></div>
                            </div>
                            <div class="action d-flex justify-content-between mt-2 align-items-center">
                            </div>
                        </div>
                    </div>
                </div>

                <div style="text-align: center" class="col-lg-6">
                        <div class="card">
                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <div style="margin-bottom: 0px" class="well well-sm">
                                <div class="row">
                                    <div class="col-xs-12 col-md-6 text-center">
                                        <h1 class="rating-num">
                                            ${course.course_rate}</h1>
                                        <div class="rating">
                                            <c:set var="rating" value="${course.course_rate}"/>
                                            <fmt:formatNumber value="${rating}" maxFractionDigits="0"
                                                              var="whole"/>
                                            <c:set var="fraction" value="${rating-whole}"/>
                                            <c:set var="nonerate" value="${5-whole}"/>
                                            <c:choose>
                                                <c:when test="${fraction<0}">
                                                    <c:set var="rating" value="${whole-1}"/>
                                                    <c:set var="fraction" value="1"/>
                                                    <c:forEach begin="1" end="${rating}">
                                                        <i class="fa fa-star fa-4x" aria-hidden="true"></i>
                                                    </c:forEach>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach begin="1" end="${whole}">
                                                        <i class="fa fa-star fa-4x" aria-hidden="true"></i>
                                                    </c:forEach>
                                                    <c:choose>
                                                        <c:when test="${fraction>0}">
                                                            <c:set var="nonerate" value="${5-whole-1}"/>
                                                        </c:when>
                                                    </c:choose>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:choose>
                                                <c:when test="${fraction>0}">
                                                    <i class="fa fa-star-half-o fa-4x" aria-hidden="true"></i>
                                                </c:when>
                                            </c:choose>
                                            <c:forEach begin="1" end="${nonerate}">
                                                <i class="fa fa-star-o fa-4x" aria-hidden="true"></i>
                                            </c:forEach>
                                        </div>
                                        <div>
                                            <span class="glyphicon glyphicon-user"></span>1,050,008 total
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="row rating-desc">
                                            <div class="col-xs-3 col-md-3 text-right">
                                                <span class="glyphicon glyphicon-star"></span>5
                                            </div>
                                            <div class="col-xs-8 col-md-9">
                                                <div class="progress progress-striped">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20"
                                                         aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                        <span class="sr-only">80%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end 5 -->
                                            <div class="col-xs-3 col-md-3 text-right">
                                                <span class="glyphicon glyphicon-star"></span>4
                                            </div>
                                            <div class="col-xs-8 col-md-9">
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20"
                                                         aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                        <span class="sr-only">60%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end 4 -->
                                            <div class="col-xs-3 col-md-3 text-right">
                                                <span class="glyphicon glyphicon-star"></span>3
                                            </div>
                                            <div class="col-xs-8 col-md-9">
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20"
                                                         aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                        <span class="sr-only">40%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end 3 -->
                                            <div class="col-xs-3 col-md-3 text-right">
                                                <span class="glyphicon glyphicon-star"></span>2
                                            </div>
                                            <div class="col-xs-8 col-md-9">
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="20"
                                                         aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                        <span class="sr-only">20%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end 2 -->
                                            <div class="col-xs-3 col-md-3 text-right">
                                                <span class="glyphicon glyphicon-star"></span>1
                                            </div>
                                            <div class="col-xs-8 col-md-9">
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80"
                                                         aria-valuemin="0" aria-valuemax="100" style="width: 15%">
                                                        <span class="sr-only">15%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end 1 -->
                                        </div>
                                        <!-- end row -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <hr/>
                            <div class="review-block">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <img src="http://dummyimage.com/60x60/666/ffffff&text=No+Image" class="img-rounded">
                                        <div class="review-block-name"><a href="#">nktailor</a></div>
                                        <div class="review-block-date">January 29, 2016<br/>1 day ago</div>
                                    </div>
                                    <div class="col-sm-9">
                                        <div class="review-block-rate">
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs"
                                                    aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs"
                                                    aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                        </div>
                                        <div class="review-block-title">this was nice in buy</div>
                                        <div class="review-block-description">this was nice in buy. this was nice in buy. this
                                            was nice in buy. this was nice in buy this was nice in buy this was nice in buy this
                                            was nice in buy this was nice in buy
                                        </div>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <img src="http://dummyimage.com/60x60/666/ffffff&text=No+Image" class="img-rounded">
                                        <div class="review-block-name"><a href="#">nktailor</a></div>
                                        <div class="review-block-date">January 29, 2016<br/>1 day ago</div>
                                    </div>
                                    <div class="col-sm-9">
                                        <div class="review-block-rate">
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs"
                                                    aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs"
                                                    aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                        </div>
                                        <div class="review-block-title">this was nice in buy</div>
                                        <div class="review-block-description">this was nice in buy. this was nice in buy. this
                                            was nice in buy. this was nice in buy this was nice in buy this was nice in buy this
                                            was nice in buy this was nice in buy
                                        </div>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <img src="http://dummyimage.com/60x60/666/ffffff&text=No+Image" class="img-rounded">
                                        <div class="review-block-name"><a href="#">nktailor</a></div>
                                        <div class="review-block-date">January 29, 2016<br/>1 day ago</div>
                                    </div>
                                    <div class="col-sm-9">
                                        <div class="review-block-rate">
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-warning btn-xs" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs"
                                                    aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                            <button type="button" class="btn btn-default btn-grey btn-xs"
                                                    aria-label="Left Align">
                                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                            </button>
                                        </div>
                                        <div class="review-block-title">this was nice in buy</div>
                                        <div class="review-block-description">this was nice in buy. this was nice in buy. this
                                            was nice in buy. this was nice in buy this was nice in buy this was nice in buy this
                                            was nice in buy this was nice in buy
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

<%--                    <div class="row" style="margin-top:40px;">--%>

<%--                        <div class="col-sm-16">--%>
<%--                            <div class="rating-block">--%>
<%--                                <h4>Average user rating</h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="col-sm-6">--%>
<%--                            <h4>Rating breakdown</h4>--%>
<%--                        </div>--%>
<%--                    </div>--%>

                    <div class="row" style="padding: 0px;">
                        <div class="col-md-12">
                            <div class="well well-sm">
                                <div class="text-right">
                                    <a class="btn btn-success btn-green" href="#reviews-anchor" id="open-review-box">Leave a
                                        Review</a>
                                </div>

                                <div class="row" id="post-review-box" style="display:none;">
                                    <div class="col-md-12">
                                        <form accept-charset="UTF-8" action="" method="post">
                                            <input id="ratings-hidden" name="rating" type="hidden">
                                            <textarea class="rateform form-control animated" cols="50" id="new-review"
                                                      name="comment" placeholder="Enter your review here..." rows="5"></textarea>
                                            <div class="text-right">
                                                <div style=" padding-bottom: 5px; text-align: right;">
                                                    <span class="fa fa-star fa-2x" id="star1" onclick="add(this,1)"></span>
                                                    <span class="fa fa-star fa-2x" id="star2" onclick="add(this,2)"></span>
                                                    <span class="fa fa-star fa-2x" id="star3" onclick="add(this,3)"></span>
                                                    <span class="fa fa-star fa-2x" id="star4" onclick="add(this,4)"></span>
                                                    <span class="fa fa-star fa-2x" id="star5" onclick="add(this,5)"></span>
                                                </div>
                                                <a class="btn btn-danger btn-sm" href="#" id="close-review-box"
                                                   style="display:none; margin-right: 10px;">
                                                    <span class="glyphicon glyphicon-remove"></span>Cancel</a>
                                                <button class="btn btn-success btn-lg" type="submit">Save</button>
                                            </div>
                                        </form>
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