<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
    <c:when test="${id!=2}">
        <jsp:useBean id="user" scope="request" type="beans.user"/>
    </c:when>
    <c:otherwise>
        <jsp:useBean id="course" scope="request" type="beans.course"/>
    </c:otherwise>
</c:choose>

<t:main>
    <jsp:body>
        <style>
            <%@include file="/WEB-INF/css/Learn.css"%>
        </style>


        <section style="padding-top: 5rem">
            <div style="margin-bottom: 5rem" class="container-fluid">

                <div class="AddForm">
                    <div class="container-ls wrapX">
                        <form class="container" method="post" id="update" action="${pageContext.request.contextPath}/Admin/Manager/Update?id=${id}">
                            <div style="display: flex; justify-content: center" class="card-heading">
                                <h2 class="headAdd">
                                    <c:choose>
                                        <c:when test="${id!=2}">
                                            Edit user ${user.user_id}
                                        </c:when>
                                        <c:otherwise>
                                            Edit course ${course.course_id}
                                        </c:otherwise>
                                    </c:choose>
                                </h2>
                            </div>
                            <div style="width: 100%"  class="cart-icon">
                                <div class="row" style="width: 100%">
                                    <c:choose>
                                        <c:when test="${id!=2}">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="hidden" name="userid" value="${user.user_id}">
                                                    <div class="IDname">Username</div>
                                                    <input placeholder="Username" name="username" type="text" class="form-control formX" value="${user.user_username}">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="IDname">Role</div>
                                                    <input placeholder="User role" name="role" type="text" class="form-control formX" value="${user.role_id}">
                                                </div>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="hidden" name="courseid" value="${course.course_id}">
                                                    <div class="IDname">Course name</div>
                                                    <input placeholder="Coursename" name="coursename" type="text" class="form-control formX" value="${course.course_name}">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="IDname">Status</div>
                                                    <input placeholder="Status" name="deactive" type="text" class="form-control formX" value="${course.deactive}">
                                                </div>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                </div>

                            </div>
                            <div style="padding-right: 0; width: 100%; justify-content: flex-end; display: flex" class="cart-body">

                                <a class="btn btn-primary"
                                   href="${pageContext.request.contextPath}/Admin/Manager/Ad?id=${id}" role="button">
                                    <i class="fa fa-backward" aria-hidden="true"></i>
                                    List
                                </a>
                                <c:choose>
                                    <c:when test="${id!=2}">
                                        <a class="btn btn-primary" style="background-color: red"
                                           href="${pageContext.request.contextPath}/Admin/Manager/Delete?id=${id}&user_id=${user.user_id}" role="button">
                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                            Delete
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <a class="btn btn-primary" style="background-color: red"
                                           href="${pageContext.request.contextPath}/Admin/Manager/Delete?id=${id}&course_id=${course.course_id}" role="button">
                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                            Delete
                                        </a>
                                    </c:otherwise>
                                </c:choose>
                                <input class="btn btn-primary" style="background-color:forestgreen;" type="submit" form="update">
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </section>


    </jsp:body>
</t:main>