<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="courses" scope="request" type="java.util.List<beans.course>"/>

<t:main>
    <jsp:attribute name="css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
        <%--        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/content-filter-master/css/reset.css">--%>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/content-filter-master/css/style.css">
    </jsp:attribute>
    <jsp:attribute name="js">
        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/jquery-2.1.1.js"></script>
        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/jquery.mixitup.min.js"></script>
        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/modernizr.js"></script>
    </jsp:attribute>
    <jsp:body>
        <header class="cd-header">
        </header>
        <main class="cd-main-content">
            <div class="cd-tab-filter-wrapper">
                <div class="cd-tab-filter">
                        <%--                    <ul class="cd-filters">--%>
                    <ul class="pagination justify-content-center">
                        <c:if test="${currentPage!=1}">
                            <li class="page-item"><a class="page-link"
                                                     href="${pageContext.request.contextPath}/Product/Filter?currentPage=${currentPage-1}&recordsPerPage=8&search=${search}">Previous</a></li>
                        </c:if>
                        <c:forEach var="i" begin="1" end="${noOfPages}">
                            <c:choose>
                                <c:when test="${currentPage==i}">
                                    <li class="page-item"><a class="page-link active" style="color: #007bff">${i}</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link"
                                                             href="${pageContext.request.contextPath}/Product/Filter?currentPage=${i}&recordsPerPage=8&search=${search}">${i}</a></li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <c:if test="${currentPage!=noOfPages}">
                            <c:if test="${noOfPages>0}">
                                <li class="page-item"><a class="page-link"
                                                         href="${pageContext.request.contextPath}/Product/Filter?currentPage=${currentPage+1}&recordsPerPage=8&search=${search}">Next</a></li>

                            </c:if>
                        </c:if>
                            <%--                        <li class="placeholder">--%>
                            <%--                            <a data-type="all" >All</a> <!-- selected option on mobile -->--%>
                            <%--                        </li>--%>
                            <%--                        <li class="filter"><a class="selected"  data-type="all">All</a></li>--%>
                            <%--                        <li class="filter" data-filter=".color-1"><a data-type="color-1">Window</a></li>--%>
                            <%--                        <li class="filter" data-filter=".color-2"><a data-type="color-2">Web</a></li>--%>
                    </ul> <!-- cd-filters -->
                </div> <!-- cd-tab-filter -->
            </div> <!-- cd-tab-filter-wrapper -->

            <section class="cd-gallery">
                <ul>
                    <c:forEach var="c" items="${courses}">
                        <li class="mix color-${c.category_id} check${c.course_id} radio2 option3">
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
                        </li>
                        <%--                        <li class="mix color-${course.category_id} check${course.course_id} radio2 option3"><img src="${pageContext.request.contextPath}/public/course/${course.course_id}/${course.img}"></li>--%>
                    </c:forEach>
                    <li class="gap"></li>
                    <li class="gap"></li>
                    <li class="gap"></li>
                </ul>
                    <%--                <ul class="pagination justify-content-center">--%>
                    <%--                </ul>--%>
                <div class="cd-fail-message">No results found</div>
            </section> <!-- cd-gallery -->

            <div class="cd-filter">
                <form>
                    <div class="cd-filter-block">
                        <h4>Search</h4>

                        <div class="cd-filter-content">
                            <input type="search" placeholder="Try 1...">
                        </div> <!-- cd-filter-content -->
                    </div> <!-- cd-filter-block -->

                    <div class="cd-filter-block">
                        <h4>Check boxes</h4>

                        <ul class="cd-filter-content cd-filters list">
                            <li>
                                <input class="filter" data-filter=".check1" type="checkbox" id="checkbox1">
                                <label class="checkbox-label" for="checkbox1">Option 1</label>
                            </li>

                            <li>
                                <input class="filter" data-filter=".check2" type="checkbox" id="checkbox2">
                                <label class="checkbox-label" for="checkbox2">Option 2</label>
                            </li>

                            <li>
                                <input class="filter" data-filter=".check3" type="checkbox" id="checkbox3">
                                <label class="checkbox-label" for="checkbox3">Option 3</label>
                            </li>
                        </ul> <!-- cd-filter-content -->
                    </div> <!-- cd-filter-block -->

                    <div class="cd-filter-block">
                        <h4>Select</h4>

                        <div class="cd-filter-content">
                            <div class="cd-select cd-filters">
                                <select class="filter" name="selectThis" id="selectThis">
                                    <option value="">Choose an option</option>
                                    <option value=".option1">Option 1</option>
                                    <option value=".option2">Option 2</option>
                                    <option value=".option3">Option 3</option>
                                    <option value=".option4">Option 4</option>
                                </select>
                            </div> <!-- cd-select -->
                        </div> <!-- cd-filter-content -->
                    </div> <!-- cd-filter-block -->

                    <div class="cd-filter-block">
                        <h4>Radio buttons</h4>

                        <ul class="cd-filter-content cd-filters list">
                            <li>
                                <input class="filter" data-filter="" type="radio" name="radioButton" id="radio1" checked>
                                <label class="radio-label" for="radio1">All</label>
                            </li>

                            <li>
                                <input class="filter" data-filter=".radio2" type="radio" name="radioButton" id="radio2">
                                <label class="radio-label" for="radio2">Choice 2</label>
                            </li>

                            <li>
                                <input class="filter" data-filter=".radio3" type="radio" name="radioButton" id="radio3">
                                <label class="radio-label" for="radio3">Choice 3</label>
                            </li>
                        </ul> <!-- cd-filter-content -->
                    </div> <!-- cd-filter-block -->
                </form>

                <a  class="cd-close">Close</a>
            </div> <!-- cd-filter -->

            <a class="cd-filter-trigger">Filters</a>
        </main>


    </jsp:body>
</t:main>