<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:main>
    <jsp:body>
        <style>
            <%@include file="/WEB-INF/css/Learn.css"%>
        </style>


        <section style="padding-top: 5rem">
            <div style="margin-bottom: 5rem" class="container-fluid">

                <div class="AddForm">
                    <div class="container-ls wrapX">
                        <form class="cusForm" method="post">
                            <div style="display: flex; justify-content: center" class="card-heading">
                                <h2 class="headAdd">
                                    Edit User
                                </h2>
                            </div>
                            <div style="width: 100%"  class="cart-icon">
                                <div class="form-group">
                                    <div class="IDname">ID</div>
                                    <input type="text" readonly class="form-control formX" autofocus>
                                </div>
                                <div class="form-group">
                                    <div class="IDname">User name</div>
                                    <input placeholder="Username" type="text" class="form-control formX" autofocus>
                                </div>
                            </div>
                            <div style="padding-right: 0; width: 100%; justify-content: flex-end; display: flex" class="cart-body">
                                <a class="btn btn-primary"
                                   href="${pageContext.request.contextPath}/Admin/Manager/Ad" role="button">
                                    <i class="fa fa-backward" aria-hidden="true"></i>
                                    List
                                </a>
                                <button style="margin-left: 10px" type="submit" class="btn btn-danger">
                                    <i class="fa fa-check" aria-hidden="true"></i>
                                    Delete
                                </button>
                                <button style="margin-left: 10px" type="submit" class="btn btn-success">
                                    <i class="fa fa-check" aria-hidden="true"></i>
                                    Save
                                </button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </section>


    </jsp:body>
</t:main>