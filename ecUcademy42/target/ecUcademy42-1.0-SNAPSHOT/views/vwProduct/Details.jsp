<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:useBean id="course" scope="request" type="beans.course"/>
<jsp:useBean id="authUser" scope="session" type="beans.user"/>

<t:main>
    <jsp:attribute name="css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
        <style><%@include file="/WEB-INF/css/InfoProduct.css"%></style>
        <style><%@include file="/WEB-INF/css/multimenu.css"%></style>
        <style><%@include file="/WEB-INF/css/Detail.css"%></style>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script  type="text/javascript" src="${pageContext.request.contextPath}/public/JS/Product.js"></script>
        <script>
            $(document).ready(function() {
                <%--$("#description").after("${course.course_fullinfo}");--%>
                <%--alert("${course.course_fullinfo}");--%>
            });
            <%--$( window ).on( "load", function() {--%>
            <%--    $("#description").after("${course.course_fullinfo}");--%>
            <%--    alert("${course.course_fullinfo}");--%>
            <%--});--%>
        </script>
    </jsp:attribute>
    <jsp:body>
        <c:set var="urlid" value="${urlwithid}"/>
        <jsp:include page="../partials/nav.jsp" flush="true">
            <jsp:param name="urlwithid" value="${urlid}"/>
        </jsp:include>
        <c:set var="star5" value="0"/>
        <c:set var="star4" value="0"/>
        <c:set var="star3" value="0"/>
        <c:set var="star2" value="0"/>
        <c:set var="star1" value="0"/>
        <c:set var="bought" value="0"/>
        <c:forEach var="star" items="${course.takes}">
            <c:if test="${star.user_id==authUser.user_id}">
                <c:set var="bought" value="1"/>
            </c:if>
            <c:choose>
                <c:when test="${star.rating==5}">
                    <c:set var="star5" value="${star5+1}"/>
                </c:when>
                <c:when test="${star.rating==4}">
                    <c:set var="star4" value="${star4+1}"/>
                </c:when>
                <c:when test="${star.rating==3}">
                    <c:set var="star3" value="${star3+1}"/>
                </c:when>
                <c:when test="${star.rating==2}">
                    <c:set var="star2" value="${star2+1}"/>
                </c:when>
                <c:otherwise>
                    <c:set var="star1" value="${star1+1}"/>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <div class="container-fluid" style=" height: auto; width: 100%;padding-top: 5rem">
            <div class="row">
                <div style="text-align: left" class="col-lg-6">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="container-fliud">
                                <div class="wrapper row">
                                    <div class="preview col-md-12">
                                        <div style="border: 4px solid #428bca;" class="preview-pic tab-content">
                                            <div class="tab-pane active" id="pic-1"><img src="${pageContext.request.contextPath}/public/course/${course.course_id}/${course.img}"
                                                                                         onerror="this.onerror=null; this.src='../public/images/onlineedu-960x540-1.jpg'"/></div>
                                        </div>
                                    </div>
                                    <div class="details col-md-12">
                                        <div style="margin-top: 10px;" class="rating">
<%--                                            <fmt:formatDate value="${course.created_at}" pattern="dd-MM-yyyy" />--%>
                                            <span class="review-no"><i class="fa fa-eye" aria-hidden="true"></i> ${course.created_at} </span> &ensp;
                                            <span class="review-no"><i class="fa fa-eye" aria-hidden="true"></i> ${fn:length(course.takes)} reviews</span>
                                        </div>

                                        <h5 class="sizes">Teacher:
                                            <span class="size" data-toggle="tooltip" title="small">${course.teacher_name}</span>
                                        </h5>
                                        <h5 class="sizes">Category:
                                            <span class="size" data-toggle="tooltip" title="small">${course.category_name}</span>
                                        </h5>
                                        <h3 style="margin-top: 10px;" class="product-title">
                                            ${course.course_name}
                                        </h3>

                                        <p class="product-description" id="description">
<%--                                            <div id="description"></div>--%>
                                            ${course.course_fullinfo}
                                        </p>

<%--                                        <h5 class="colors">colors:--%>
<%--                                            <span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>--%>
<%--                                            <span class="color green not-available" data-toggle="tooltip" title="Not In store"></span>--%>
<%--                                            <span class="color blue"></span>--%>
<%--                                        </h5>--%>
                                        <h4 class="price">current price: <span>$${course.course_price}</span></h4>
                                        <c:choose>
                                            <c:when test="${bought==1}">
                                                <h2 style="font-family: monospace">All lessions</h2>
                                                <div class="card p-3">
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="user d-flex flex-row align-items-center">
                                                            <form id="frmLearn" method="get" action="${pageContext.request.contextPath}/Product/Learn">
                                                                <input type="hidden" name="course_id" value="${course.course_id}">
                                                                <input type="hidden" name="retUrl" value="${urlwithid}">
                                                            </form>
                                                            <button class="btn btn-default" type="submit" onclick="javascript: $('#frmLearn').submit();">View all lessions</button>
                                                        </div>
                                                    </div>
                                                    <div class="action d-flex justify-content-between mt-2 align-items-center">
                                                    </div>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="action">
                                                    <form id="frmBuy" method="get" action="${pageContext.request.contextPath}/Product/Buy">
                                                        <input type="hidden" name="course_id" value="${course.course_id}">
                                                        <input type="hidden" name="user_id" value="${authUser.user_id}">
                                                        <input type="hidden" name="retUrl" value="${urlwithid}">
                                                    </form>
                                                    <button style="background-color: red" class="add-to-cart btn btn-default" onclick="javascript: $('#frmBuy').submit();" type="submit">Buy</button>
                                                    <button class="add-to-cart btn btn-default" type="button">Add to cart</button>
                                                    <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
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
                                                        <i style="color: #ff9f1a" class="fa fa-star fa-3x" aria-hidden="true"></i>
                                                    </c:forEach>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach begin="1" end="${whole}">
                                                        <i style="color: #ff9f1a" class="fa fa-star fa-3x" aria-hidden="true"></i>
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
                                                    <i style="color: #ff9f1a" class="fa fa-star-half-o fa-3x" aria-hidden="true"></i>
                                                </c:when>
                                            </c:choose>
                                            <c:forEach begin="1" end="${nonerate}">
                                                <i style="color: #ff9f1a" class="fa fa-star-o fa-3x" aria-hidden="true"></i>
                                            </c:forEach>
                                        </div>
                                        <div>
                                            <span class="glyphicon glyphicon-user"></span>${course.students} total
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
                                                         aria-valuemin="0" aria-valuemax="100" style="width: ${star5/fn:length(course.takes)*100}%">
<%--                                                        <span class="sr-only">80%</span>--%>
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
                                                         aria-valuemin="0" aria-valuemax="100" style="width: ${star4/fn:length(course.takes)*100}%">
<%--                                                        <span class="sr-only">60%</span>--%>
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
                                                         aria-valuemin="0" aria-valuemax="100" style="width: ${star3/fn:length(course.takes)*100}%">
<%--                                                        <span class="sr-only">40%</span>--%>
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
                                                         aria-valuemin="0" aria-valuemax="100" style="width: ${star2/fn:length(course.takes)*100}%">
<%--                                                        <span class="sr-only">20%</span>--%>
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
                                                         aria-valuemin="0" aria-valuemax="100" style="width: ${star1/fn:length(course.takes)*100}%">
<%--                                                        <span class="sr-only">15%</span>--%>
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
                            <div class="row" style="padding: 0px;">
                                <div class="col-md-12">
                                    <div class="well well-sm">
                                        <div class="text-right">
                                            <c:choose>
                                                <c:when test="${auth}">
                                                    <c:choose>
                                                        <c:when test="${bought==1}">
                                                            <a class="btn btn-success btn-green"  id="open-review-box">Leave a Review</a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            Buy to review
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:when>
                                                <c:otherwise>
                                                            <form action="${pageContext.request.contextPath}/Account/Login">
                                                                <input type="hidden" name="retUrl" value="${urlid}">
                                                                <button type="submit" class="btn btn-success btn-green">Leave a Review</button>
                                                            </form>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>

                                        <div class="row" id="post-review-box" style="display:none;">
                                            <div class="col-md-12">
                                                        <form accept-charset="UTF-8" action="" method="post">
                                                            <input type="hidden" name="retUrl" value="${urlid}">
                                                            <input name="userid" type="hidden" value="${authUser.user_id}">
                                                            <input name="courseid" type="hidden" value="${course.course_id}">
                                                            <input id="ratings-hidden" name="rating" type="hidden">
                                                            <textarea class="rateform form-control animated" cols="50" id="txtComment"
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
                                                                <button class="btn btn-success btn-sm" id="btnSave" type="submit">Save</button>
                                                            </div>
                                                        </form>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <hr/>
                            <div class="review-block" id="divReviewArea">
                                <div id="divComment">
                                    <c:forEach var="take" items="${course.takes}">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <img src="http://dummyimage.com/60x60/666/ffffff&text=No+Image" class="img-rounded">
                                                <div class="review-block-name"><a>${take.user_fullname}</a></div>
                                                <div class="review-block-date">${take.ratingdate}</div>
                                            </div>
                                            <div class="col-sm-9">
                                                <div class="review-block-rate">
                                                    <c:set var="rating" value="${take.rating}"/>
                                                    <fmt:formatNumber value="${rating}" maxFractionDigits="0"
                                                                      var="whole"/>
                                                    <c:set var="fraction" value="${rating-whole}"/>
                                                    <c:set var="nonerate" value="${5-whole}"/>
                                                    <c:choose>
                                                        <c:when test="${fraction<0}">
                                                            <c:set var="rating" value="${whole-1}"/>
                                                            <c:set var="fraction" value="1"/>
                                                            <c:forEach begin="1" end="${rating}">
                                                                <i style="color: #ff9f1a" class="fa fa-star fa-3x" aria-hidden="true"></i>
                                                            </c:forEach>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <c:forEach begin="1" end="${whole}">
                                                                <i style="color: #ff9f1a" class="fa fa-star fa-3x" aria-hidden="true"></i>
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
                                                            <i style="color: #ff9f1a" class="fa fa-star-half-o fa-3x" aria-hidden="true"></i>
                                                        </c:when>
                                                    </c:choose>
                                                    <c:forEach begin="1" end="${nonerate}">
                                                        <i style="color: #ff9f1a" class="fa fa-star-o fa-3x" aria-hidden="true"></i>
                                                    </c:forEach>
                                                </div>
                                                <div class="review-block-description">${take.comment}</div>
                                            </div>
                                        </div>
                                        <hr/>
                                    </c:forEach>

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
                        </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:main>