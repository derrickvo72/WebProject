<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
    <c:when test="${id==1}">
        <jsp:useBean id="users" scope="request" type="java.util.List<beans.user>" />
    </c:when>
    <c:when test="">

    </c:when>
    <c:otherwise>

    </c:otherwise>
</c:choose>
<%--<jsp:useBean id="courses" scope="request" type="java.util.List<beans.course>" />--%>

<t:main>
    <jsp:body>

        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/jquery-2.1.1.js"></script>
        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/jquery.mixitup.min.js"></script>
        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/modernizr.js"></script>
        <style>
            <%@include file="/WEB-INF/css/Learn.css"%>
        </style>

        <section style="padding-top: 2rem">
            <div class="container-fluid mt-5">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="card mb-3">
                            <div class="card-header">
                                <h4>Menu</h4>
                            </div>
                            <div class="list-group list-group-flush">
                                <a href="${pageContext.request.contextPath}/Admin/Manager/Ad?id=1" class="list-group-item list-group-item-action">
                                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                                    Students
                                </a>
                                <a href="${pageContext.request.contextPath}/Admin/Manager/Ad?id=2" class="list-group-item list-group-item-action">
                                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                                    Teachers
                                </a>
                                <a href="${pageContext.request.contextPath}/Admin/Manager/Ad?id=3" class="list-group-item list-group-item-action">
                                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                                    Courses
                                </a>
                            </div>
                        </div>
                    </div>
<%--                    aaaaaaaaaaaaaaaaaaaaaaaaaa    --%>
                    <div class="col-sm-9 mb-3">
                        <div class="card">
                            <div class="card-header">
                                <h4>Management</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-12 mb-3">
                                        <table class="table table-hover">
                                            <div class="searchdiv">
                                                <div class="row no-gutters">
                                                    <form action="Admin.jsp">
                                                        <div class="col">
                                                            <input class="form-control border-secondary border-right-0 rounded-0 formX" type="search" name="search">
                                                            <input type="hidden" name="currentPage" value="${currentPage}">
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="btn btn-outline-secondary border-left-0 rounded-0 rounded-right" type="submit">
                                                                <i class="fa fa-search"></i>
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>

                                            <thead>
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">User</th>
                                                <th scope="col">&nbsp</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="item" items="${users}">
                                                <tr style="border-bottom: 2px solid #dee2e6">
                                                    <th scope="row">${item.user_id}</th>
                                                    <td>${item.user_username}</td>
                                                    <td class="text-right">
                                                        <a class="btn btn-sm btn-outline-primary"
                                                           href="${pageContext.request.contextPath}/views/vwManager/EditManager.jsp"
                                                           role="button">
                                                            <i class="fas fa-cart-arrow-down"></i>
                                                        </a>
                                                        <a class="btn btn-sm btn-outline-primary"
                                                           href="${pageContext.request.contextPath}/views/vwManager/EditManager.jsp"
                                                           role="button">
                                                            <i class="fas fa-user-edit"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <nav aria-label="...">
                                    <ul class="pagination">
                                        <c:if test="${currentPage!=1}">
                                            <li class="page-item">
                                                <a class="page-link" href="${pageContext.request.contextPath}/Admin/Manager/Ad?id=${id}&currentPage=${currentPage-1}">
                                                    <i class="fa fa-fast-backward" aria-hidden="true"></i>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach begin="1" end="${noOfPages}" var="i">
                                            <c:choose>
                                                <c:when test="${currentPage==i}">
                                                    <li class="page-item active">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/Admin/Manager/Ad?id=${id}&currentPage=${i}">${i}</a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/Admin/Manager/Ad?id=${id}&currentPage=${i}">${i}</a>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        <c:if test="${currentPage!=noOfPages}">
                                            <c:if test="${noOfPages>0}">
                                                <li class="page-item">
                                                    <a class="page-link" href="${pageContext.request.contextPath}/Admin/Manager/Ad?id=${id}&currentPage=${currentPage+1}">
                                                        <i class="fa fa-fast-forward" aria-hidden="true"></i>
                                                    </a>
                                                </li>
                                            </c:if>
                                        </c:if>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>
</t:main>