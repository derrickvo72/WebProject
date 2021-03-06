<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="courses" scope="request" type="java.util.List<beans.course>"/>
<jsp:useBean id="authUser" scope="session" type="beans.user"/>

<t:main>
    <jsp:body>
<%--Gioi thieu--%>
        <div class="container-fluid" style="padding-top: 15px; padding-bottom: 15px;">
            <div class="carousel slide" data-ride="carousel" style="width: 100%;">
                <div class="carousel-inner">
                    <div  class="carousel-caption" style="top:15%; transform: translateY(-50)">
                        <div style="top:5rem" class="context-panel">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h1 style="font-family:cursive; color: white">Welcom to Udemy</h1>
                                    <div style="padding:0 0 0 20px; font-size: larger; font-family:cursive;" class="col-md-12"> "Learn the latest skills to reach your professional goals
                                        !"<br></div>
                                </div>
                                <div  class="col-lg-12">
                                    <form id="frmSearch" style="border:none;padding:20px 35px 20px 35px" class="form-inline my-2 my-lg-0" action="${pageContext.request.contextPath}/Product/Filter">
                                        <button id="btnSearch" type="submit" style="position: absolute; left: -9999px"></button>
                                        <input name="currentPage" value="1" type="hidden">
                                        <input name="recordsPerPage" value="8" type="hidden">
                                        <input name="category" value="0" type="hidden">
                                        <input name="sort" value="0" type="hidden">
                                        <input  id="txtSearch" name="search" type="text" class="form-control mr-sm-2" placeholder="What do you want to learn?">
                                    </form>
<%--                                    <form style="border:none;padding:20px 35px 20px 35px" class="form-inline my-2 my-lg-0">--%>
<%--                                        <input style="width: 100%" class="form-control mr-sm-2" type="search" placeholder="What do you want to learn" aria-label="Search">--%>
<%--                                    </form>--%>
                                </div>
                            </div>
                        </div>

                        <div style="top:0rem" class="context-panel-2">

                        </div>
                    </div><!-- end carousel-caption -->
                    <div class="carousel-item active">
                        <div class="d-block w-100" style="background:  repeat-x #4481eb;; width: 100%; height: 450px !important;" >
                            <div id ="bubble">
                                <i class="fab fa-html5"></i>
                                <i class="fab fa-css3-alt"></i>
                                <i class="fab fa-python"></i>
                                <i class="fab fa-angular"></i>
                                <i class="fab fa-js-square"></i>
                                <i class="fab fa-node-js"></i>
                                <i class="fab fa-react"></i>
                                <i class="fab fa-java"></i>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
<%--Cac khoa hoc theo tab--%>
        <div class="container-fluid">
            <!-- tab -->
            <ul  class="nav nav-pills" style="display: flex; justify-content: center; align-items: center; padding-bottom: 10px">
                <li class="nav-item"><a href="#tab1" data-toggle="tab" class="nav-link active">Web develop</a></li>
                <li class="nav-item"><a href="#tab2" data-toggle="tab" class="nav-link">Window develop</a></li>
                <li class="nav-item"><a href="#tab3" data-toggle="tab" class="nav-link">Design</a></li>
                <li class="nav-item"><a href="#tab4" data-toggle="tab" class="nav-link">Office</a></li>
<%--                <li class="nav-item"><a href="#tab4" data-toggle="tab" class="nav-link">Design</a></li>--%>
            </ul>
            <div class="tab-content">
                <div class="tab-pane container-fluid active" id="tab1">
                    <div class="owl-carousel owl-theme">
                        <c:forEach var="c" items="${courses}">
                            <c:choose>
                                <c:when test="${c.category_id==2}">

                                    <div class="item">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="slider-item">
                                                <div class="course__description"
                                                     onclick="location.href='${pageContext.request.contextPath}/Product/Detail?course_id=${c.course_id}';">
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <h5 style="color: black" class="card-title">${c.course_name}</h5>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <div class="center-1"><b>Best seller</b></div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <div class="center-2"><span class="dot"></span> <b>Updated ${c.updated_at}</b></div>
                                                        </div>
                                                        <div class="col-sm-12 pt-2">
                                                            <div class="p3"><i>${c.course_fullinfo}</i></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="slider-image">
                                                    <img src="${pageContext.request.contextPath}/public/course/${c.course_id}/${c.img}"
                                                         class="img-responsive" alt="a" onerror="this.onerror=null; this.src='../public/images/onlineedu-960x540-1.jpg'"/>
                                                </div>
                                                <div class="slider-main-detail">
                                                    <div class="slider-detail">
                                                        <div class="product-detail">
                                                            <h5>${c.course_name}</h5>
                                                            <h5 class="detail-price">$${c.course_price}</h5>
                                                        </div>
                                                    </div>
                                                    <div class="cart-section">
                                                        <div class="row">

                                                                <%--                           Rating --%>
                                                            <div class="col-md-6 col-sm-12 col-xs-6 review">
                                                                <c:set var="rating" value="${c.course_rate}"/>
                                                                <fmt:formatNumber value="${rating}" maxFractionDigits="0"
                                                                                  var="whole"/>
                                                                <c:set var="fraction" value="${rating-whole}"/>
                                                                <c:set var="nonerate" value="${5-whole}"/>
                                                                <c:choose>
                                                                    <c:when test="${fraction<0}">
                                                                        <c:set var="rating" value="${whole-1}"/>
                                                                        <c:set var="fraction" value="1"/>
                                                                        <c:forEach begin="1" end="${rating}">
                                                                            <i style="color: #f0ad4e" class="fa fa-star" aria-hidden="true"></i>
                                                                        </c:forEach>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <c:forEach begin="1" end="${whole}">
                                                                            <i style="color: #f0ad4e"  class="fa fa-star" aria-hidden="true"></i>
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
                                                                        <i style="color: #f0ad4e"  class="fa fa-star-half-o" aria-hidden="true"></i>
                                                                    </c:when>
                                                                </c:choose>
                                                                <c:forEach begin="1" end="${nonerate}">
                                                                    <i style="color: #f0ad4e"  class="fa fa-star-o" aria-hidden="true"></i>
                                                                </c:forEach>
                                                            </div>
                                                                <%--                           Rating --%>

                                                            <div class="col-md-6 col-sm-12 col-xs-6" style="text-align: right">
                                                                <a style="font-size: smaller" href="${pageContext.request.contextPath}/Product/Buy?course_id=${c.course_id}&user_id=${authUser.user_id}"
                                                                   class="AddCart btn btn-info"><i
                                                                        class="fa fa-shopping-cart"
                                                                        aria-hidden="true"></i> Buy now!</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </c:when>
                            </c:choose>

                        </c:forEach>
                    </div>
                </div>
                <div class="tab-pane container-fluid fade" id="tab2">

                    <div class="owl-carousel owl-theme">
                        <c:forEach var="c" items="${courses}">
                            <c:choose>
                                <c:when test="${c.category_id==1}">
                                    <div class="item">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="slider-item">
                                                <div class="course__description"
                                                     onclick="location.href='${pageContext.request.contextPath}/Product/Detail?course_id=${c.course_id}';">
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <h5 style="color: black" class="card-title">${c.course_name}</h5>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <div class="center-1"><b>Best seller</b></div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <div class="center-2"><span class="dot"></span> <b>Updated ${c.updated_at}</b></div>
                                                        </div>
                                                        <div class="col-sm-12 pt-2">
                                                            <div  class="p3"><i>${c.course_fullinfo}</i></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="slider-image">
                                                    <img src="${pageContext.request.contextPath}/public/course/${c.course_id}${c.img}"
                                                         class="img-responsive" alt="a" onerror="this.onerror=null; this.src='../public/images/onlineedu-960x540-1.jpg'"/>
                                                </div>
                                                <div class="slider-main-detail">
                                                    <div class="slider-detail">
                                                        <div class="product-detail">
                                                            <h5>${c.course_name}</h5>
                                                            <h5 class="detail-price">$${c.course_price}</h5>
                                                        </div>
                                                    </div>
                                                    <div class="cart-section">
                                                        <div class="row">

                                                                <%--                           Rating --%>
                                                            <div class="col-md-6 col-sm-12 col-xs-6 review">
                                                                <c:set var="rating" value="${c.course_rate}"/>
                                                                <fmt:formatNumber value="${rating}" maxFractionDigits="0"
                                                                                  var="whole"/>
                                                                <c:set var="fraction" value="${rating-whole}"/>
                                                                <c:set var="nonerate" value="${5-whole}"/>
                                                                <c:choose>
                                                                    <c:when test="${fraction<0}">
                                                                        <c:set var="rating" value="${whole-1}"/>
                                                                        <c:set var="fraction" value="1"/>
                                                                        <c:forEach begin="1" end="${rating}">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </c:forEach>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <c:forEach begin="1" end="${whole}">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
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
                                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                                    </c:when>
                                                                </c:choose>
                                                                <c:forEach begin="1" end="${nonerate}">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                </c:forEach>
                                                            </div>
                                                                <%--                           Rating --%>

                                                            <div class="col-md-6 col-sm-12 col-xs-6" style="text-align: right">
                                                                <a style="font-size: smaller" href="${pageContext.request.contextPath}/Product/Buy?course_id=${c.course_id}&user_id=${authUser.user_id}"
                                                                   class="AddCart btn btn-info"><i
                                                                        class="fa fa-shopping-cart"
                                                                        aria-hidden="true"></i> Buy now!</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:when>
                            </c:choose>

                        </c:forEach>
                    </div>
                </div>
                <div class="tab-pane container-fluid fade" id="tab3">
                    <div class="owl-carousel owl-theme">
                        <c:forEach var="c" items="${courses}">
                            <c:choose>
                                <c:when test="${c.category_id==3}">
                                    <div class="item">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="slider-item">
                                                <div class="course__description"
                                                     onclick="location.href='${pageContext.request.contextPath}/Product/Detail?course_id=${c.course_id}';">
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <h5 style="color: black" class="card-title">${c.course_name}</h5>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <div class="center-1"><b>Best seller</b></div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <div class="center-2"><span class="dot"></span> <b>Updated ${c.updated_at}</b></div>
                                                        </div>
                                                        <div class="col-sm-12 pt-2">
                                                            <div class="p3"><i>${c.course_fullinfo}</i></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="slider-image">
                                                    <img src="${pageContext.request.contextPath}/public/course/${c.course_id}/${c.img}"
                                                         class="img-responsive" alt="a" onerror="this.onerror=null; this.src='../public/images/onlineedu-960x540-1.jpg'"/>
                                                </div>
                                                <div class="slider-main-detail">
                                                    <div class="slider-detail">
                                                        <div class="product-detail">
                                                            <h5>${c.course_name}</h5>
                                                            <h5 class="detail-price">$${c.course_price}</h5>
                                                        </div>
                                                    </div>
                                                    <div class="cart-section">
                                                        <div class="row">

                                                                <%--                           Rating --%>
                                                            <div class="col-md-6 col-sm-12 col-xs-6 review">
                                                                <c:set var="rating" value="${c.course_rate}"/>
                                                                <fmt:formatNumber value="${rating}" maxFractionDigits="0"
                                                                                  var="whole"/>
                                                                <c:set var="fraction" value="${rating-whole}"/>
                                                                <c:set var="nonerate" value="${5-whole}"/>
                                                                <c:choose>
                                                                    <c:when test="${fraction<0}">
                                                                        <c:set var="rating" value="${whole-1}"/>
                                                                        <c:set var="fraction" value="1"/>
                                                                        <c:forEach begin="1" end="${rating}">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </c:forEach>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <c:forEach begin="1" end="${whole}">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
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
                                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                                    </c:when>
                                                                </c:choose>
                                                                <c:forEach begin="1" end="${nonerate}">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                </c:forEach>
                                                            </div>
                                                                <%--                           Rating --%>

                                                            <div class="col-md-6 col-sm-12 col-xs-6" style="text-align: right">
                                                                <a style="font-size: smaller" href="${pageContext.request.contextPath}/Product/Buy?course_id=${c.course_id}&user_id=${authUser.user_id}"
                                                                   class="AddCart btn btn-info"><i
                                                                        class="fa fa-shopping-cart"
                                                                        aria-hidden="true"></i> Buy now!</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:when>
                            </c:choose>

                        </c:forEach>
                    </div>
                </div>
                <div class="tab-pane container-fluid fade" id="tab4">
                    <div class="owl-carousel owl-theme">
                        <c:forEach var="c" items="${courses}">
                            <c:choose>
                                <c:when test="${c.category_id==4}">
                                    <div class="item">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="slider-item">
                                                <div class="course__description"
                                                     onclick="location.href='${pageContext.request.contextPath}/Product/Detail?course_id=${c.course_id}';">
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <h5 style="color: black" class="card-title">${c.course_name}</h5>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <div class="center-1"><b>Best seller</b></div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <div class="center-2"><span class="dot"></span> <b>Updated ${c.updated_at}</b></div>
                                                        </div>
                                                        <div class="col-sm-12 pt-2">
                                                            <div class="p3"><i>${c.course_fullinfo}</i></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="slider-image">
                                                    <img src="${pageContext.request.contextPath}/public/course/${c.course_id}/${c.img}"
                                                         class="img-responsive" alt="a" onerror="this.onerror=null; this.src='../public/images/onlineedu-960x540-1.jpg'"/>
                                                </div>
                                                <div class="slider-main-detail">
                                                    <div class="slider-detail">
                                                        <div class="product-detail">
                                                            <h5>${c.course_name}</h5>
                                                            <h5 class="detail-price">$${c.course_price}</h5>
                                                        </div>
                                                    </div>
                                                    <div class="cart-section">
                                                        <div class="row">

                                                                <%--                           Rating --%>
                                                            <div class="col-md-6 col-sm-12 col-xs-6 review">
                                                                <c:set var="rating" value="${c.course_rate}"/>
                                                                <fmt:formatNumber value="${rating}" maxFractionDigits="0"
                                                                                  var="whole"/>
                                                                <c:set var="fraction" value="${rating-whole}"/>
                                                                <c:set var="nonerate" value="${5-whole}"/>
                                                                <c:choose>
                                                                    <c:when test="${fraction<0}">
                                                                        <c:set var="rating" value="${whole-1}"/>
                                                                        <c:set var="fraction" value="1"/>
                                                                        <c:forEach begin="1" end="${rating}">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </c:forEach>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <c:forEach begin="1" end="${whole}">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
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
                                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                                    </c:when>
                                                                </c:choose>
                                                                <c:forEach begin="1" end="${nonerate}">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                </c:forEach>
                                                            </div>
                                                                <%--                           Rating --%>

                                                            <div class="col-md-6 col-sm-12 col-xs-6" style="text-align: right">
                                                                <a style="font-size: smaller" href="${pageContext.request.contextPath}/Product/Buy?course_id=${c.course_id}&user_id=${authUser.user_id}"
                                                                   class="AddCart btn btn-info"><i
                                                                        class="fa fa-shopping-cart"
                                                                        aria-hidden="true"></i> Buy now!</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:when>
                            </c:choose>

                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

<%--Top courses--%>
        <div class="container-fluid">
            <div class="container-fluid">
                <div class col-md-12>
                    <h1 style="color: black;">TOP COURSES</h1>
                </div>
            </div>
            <div class="container-fluid">
                <div class="owl-carousel owl-theme">
                    <c:forEach begin="0" end="4" var="c" items="${courses}">
                                <div class="item">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="slider-item">
                                            <div class="course__description"
                                                 onclick="location.href='${pageContext.request.contextPath}/Product/Detail?course_id=${c.course_id}';">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <h5 style="color: black" class="card-title">${c.course_name}</h5>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="center-1"><b>Best seller</b></div>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <div class="center-2"><span class="dot"></span> <b>Updated ${c.updated_at}</b></div>
                                                    </div>
                                                    <div class="col-sm-12 pt-2">
                                                        <div class="p3"><i>${c.course_fullinfo}</i></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="slider-image">
                                                <img src="${pageContext.request.contextPath}/public/course/${c.course_id}/${c.img}"
                                                     class="img-responsive" alt="a" onerror="this.onerror=null; this.src='../public/images/onlineedu-960x540-1.jpg'"/>
                                            </div>
                                            <div class="slider-main-detail">
                                                <div class="slider-detail">
                                                    <div class="product-detail">
                                                        <h5>${c.course_name}</h5>
                                                        <h5 class="detail-price">$${c.course_price}</h5>
                                                    </div>
                                                </div>
                                                <div class="cart-section">
                                                    <div class="row">
                                                        <div class="col-md-6 col-sm-12 col-xs-6 review">
                                                            <c:set var="rating" value="${c.course_rate}"/>
                                                            <fmt:formatNumber value="${rating}" maxFractionDigits="0"
                                                                              var="whole"/>
                                                            <c:set var="fraction" value="${rating-whole}"/>
                                                            <c:set var="nonerate" value="${5-whole}"/>
                                                            <c:choose>
                                                                <c:when test="${fraction<0}">
                                                                    <c:set var="rating" value="${whole-1}"/>
                                                                    <c:set var="fraction" value="1"/>
                                                                    <c:forEach begin="1" end="${rating}">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </c:forEach>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <c:forEach begin="1" end="${whole}">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
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
                                                                    <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                                </c:when>
                                                            </c:choose>
                                                            <c:forEach begin="1" end="${nonerate}">
                                                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                                            </c:forEach>
                                                        </div>
                                                        <div class="col-md-6 col-sm-12 col-xs-6"
                                                             style="text-align: right">
                                                            <a style="font-size: smaller" href="${pageContext.request.contextPath}/Product/Buy?course_id=${c.course_id}&user_id=${authUser.user_id}"
                                                               class="AddCart btn btn-info"><i
                                                                    class="fa fa-shopping-cart"
                                                                    aria-hidden="true"></i> Buy now!</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    </c:forEach>
                </div>
            </div>

        </div>
<%--Gioi thieu 2--%>
        <div class="jumbotron jumbotron-fruid">
            <div  class="container text-white pl-5 pr-5"  style="text-align: center">
                <h5 class="display-4"><b>Become an good developer</b></h5>
                    <%--<hr class="my-4">--%>
                <p style="font-size: 25px" class="lead text-white">"No one in the brief history of computing has ever
                    written a piece of perfect software. It's unlikely that you'll be the first." - Andy Hunt.</p>
                <p style="font-size: 25px" class="lead text-white">"One of the best programming skills you can have is
                    knowing when to walk away for awhile." - Oscar Godson</p>
                <br>
                <a style="color:white; border: 1px solid white" class="btn btn-outline-info btn-lg" href="#" role="button">Learn more</a>
            </div>
            <div id="bubble3" style="z-index: 1">
                <img src="${pageContext.request.contextPath}/public/DecoImage/Bill2.png">
                <img src="${pageContext.request.contextPath}/public/DecoImage/Bezos.png" alt="">
                <img src="${pageContext.request.contextPath}/public/DecoImage/Mark2.png" alt="">
                <img src="${pageContext.request.contextPath}/public/DecoImage/Steven2.png" alt="">
                <img src="${pageContext.request.contextPath}/public/DecoImage/Larry.png" alt="">
                <img src="${pageContext.request.contextPath}/public/DecoImage/Sergey.png" alt="">
                <img src="${pageContext.request.contextPath}/public/DecoImage/Elon2.png" alt="">
                <img src="${pageContext.request.contextPath}/public/DecoImage/Ellision.png" alt="">
            </div>
        </div>
<%--So nguoi dang ki theo muc--%>
        <div class="container-fluid" style=" padding-top: 20px; padding-bottom: 20px;">
            <div class="row">
                <div class="col-md-12">
                    <h1 style="color: black;">Featured topics by category </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="row">
                        <div class="col-sm-12 pt-5"><h4>Web Develop</h4></div>
                        <c:forEach begin="0" end="3" var="c" items="${courses}">
                            <c:choose>
                                <c:when test="${c.category_id==2}">
                                    <div class="col-sm-12 pt-5">
                                        <a style="text-decoration: none" href="#"><h5>${c.course_name}</h5></a>
                                        <p>${c.students} students</p>
                                    </div>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="row">
                        <div class="col-sm-12 pt-5"><h4>Window Develop</h4></div>
                        <c:forEach begin="0" end="3" var="c" items="${courses}">
                            <c:choose>
                                <c:when test="${c.category_id==1}">
                                    <div class="col-sm-12 pt-5">
                                        <a style="text-decoration: none" href="#"><h5>${c.course_name}</h5></a>
                                        <p>${c.students} students</p>
                                    </div>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="row">
                        <div class="col-sm-12 pt-5"><h4>Design</h4></div>
                        <c:forEach begin="0" end="3" var="c" items="${courses}">
                            <c:choose>
                                <c:when test="${c.category_id==3}">
                                    <div class="col-sm-12 pt-5">
                                        <a style="text-decoration: none" href="#"><h5>${c.course_name}</h5></a>
                                        <p>${c.students} students</p>
                                    </div>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="row">
                        <div class="col-sm-12 pt-5"><h4>Office</h4></div>
                        <c:forEach begin="0" end="3" var="c" items="${courses}">
                            <c:choose>
                                <c:when test="${c.category_id==4}">
                                    <div class="col-sm-12 pt-5">
                                        <a style="text-decoration: none" href="#"><h5>${c.course_name}</h5></a>
                                        <p>${c.students} students</p>
                                    </div>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 pt-5">
                    <form method="get" action="https://fontawesome.com/v4.7.0/icon/thumbs-up">
                        <button style="background-color: #007bff" type="submit" class="btn btn-primary btn-lg">Get more</button>
                    </form>
                </div>
            </div>
        </div>
<%--Intro team--%>
        <div class="container-fluid">
            <div class="container-fluid">
                <h2 style="padding-left: 15px" class="font-weight-bold mb-2">Our Team</h2>
                <p  class="font-italic text-muted mb-4 pl-3">WEB DEVELOPER.</p>
                <div class="row mt-5 mb-5 pl-1">
                    <div class="col-sm-3 mb-3">
                        <!-- Card-->
                        <div class="card border-dark">
                            <div class="card-body p-0 ">
                                <img
                                        src="${pageContext.request.contextPath}/public/images/" alt=""
                                        class="card-img-top">
                                <div class="p-4">
                                    <h5 class="mb-0"><i class="fa fa-user" aria-hidden="true"></i> Admin</h5>
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
                                    <h5 class="mb-0"><i class="fa fa-user" aria-hidden="true"></i> Admin</h5>
                                    <p class="small text-muted"> 18110141</p>
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
                                    <h5 class="mb-0"><i class="fa fa-question-circle" aria-hidden="true"></i> Support</h5>
                                    <p class="small text-muted"><a style="color: #969696" href="https://support.udemy.com/hc/en-us">https://support.udemy.com/hc/en-us</a></p>
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
                                    <h5 class="mb-0"><i class="fa fa-forumbee" aria-hidden="true"></i> Forum</h5>
                                    <p class="small text-muted"><a style="color:#969696" href="https://about.udemy.com/blog/">https://about.udemy.com/blog/</a></p>
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
<%--Gioi thieu 3--%>
        <div class="jumbotron-teaching jumbotron-fruid-teaching" style="display: block;">
            <div class="context-white">
                <img src="${pageContext.request.contextPath}/public/DecoImage/Lecture.png" alt="Lecture"
                     style="width: 450px; height: 400px;">
            </div>
            <div class="container-fluid">
                <div class="res-text" style="background-color: #fbfbf8">
                    <div class="res-content">
                        <h5 style="color: black;"><b>Become an instructor</b></h5>
                        <p style="font-size: 15px; color: black;" class="lead">
                            Top instructors from around the world teach millions of students on Udemy. We provide the
                            tools
                            and skills to teach what you love</p>
                        <br>
                        <a style="background-color: #007bff;" class="btn btn-primary btn-lg" href="#" role="button"><b>Start
                            teaching today</b></a>
                    </div>
                </div>
            </div>
        </div>

<%--Jumbotron video--%>
        <div class="container-fluid" style="margin: 0;">
            <div class="jumbotron text-white jumbotron-image shadow  d-flex "
                 style="background-color: #ddd6f3!important;
                    width: 100%; flex-wrap: wrap; align-content: center">
                <div class="row">
                    <div class="col-md-2">
                        <c:forEach begin="1" end="10">
                            <br>
                        </c:forEach>
                    </div>
                    <div class="col-md-5"
                         style="z-index: 10; display: flex; justify-content: center; align-items: center">
                        <img width="350px" height="200px"
                             src="${pageContext.request.contextPath}/public/DecoImage/Bill4.png">
                    </div>
                    <div class="col-md-5" style="z-index:10;margin: 0; padding:30px 15px 0px 15px;">
                        <h1 style="color: white">Transform life through education</h1>
                        <h5>Bill Gates launched a new career in software development by taking courses on Udemy.
                            What will you be able to do?</h5>
                    </div>
                </div>

                <div id="bubble2">
                    <i class="fab fa-windows"></i>
                    <i class="fab fa-youtube"></i>
                    <i class="fab fa-facebook-square"></i>
                    <i class="fab fa-google"></i>
                    <i class="fab fa-instagram-square"></i>
                    <i class="fab fa-twitter-square"></i>
                    <i class="fab fa-apple"></i>
                    <i class="fab fa-tiktok"></i>
                </div>

            </div>
        </div>

    </jsp:body>
</t:main>