<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="user" scope="request" type="beans.user"/>

<t:main>

    <jsp:body>
        <div class="container-fluid" style=" height: auto; width: 100%;padding-top: 70px;">
            <div class="container">
                <div class="row profile">


                    <div class="col-md-12">
                        <div class="profile-content">
                            <div class="tab-content" id="v-pills-tabContent">


                                <div class="tab-pane fade active show" id="v-pills-cart" role="tabpanel" aria-labelledby="v-pills-cart-tab">
                                    <h3><i class="fa fa-shopping-cart" aria-hidden="true"></i> My cart</h3>
                                    <hr style="border-top: 3px double #8c8b8b;">

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <aside class="col-lg-12">
                                                <div class="cart">
                                                    <div class="table-responsive">
                                                        <table class="table table-borderless table-shopping-cart">
                                                            <thead class="text-muted">
                                                            <tr class="small text-uppercase">
                                                                <th scope="col" width="860">Course</th>
                                                                <th scope="col">Price</th>
                                                                <th scope="col" class="text-right d-none d-md-block" width="100"></th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <c:forEach var="cc" items="${user.cartcourses}">
                                                                <c:set var="totalprice" value="${cc.course_price + totalprice}"/>
                                                                <tr>
                                                                    <td>
                                                                        <figure class="itemside align-items-center">
                                                                            <div class="aside"><img style="width: 250px" src="${pageContext.request.contextPath}/public/course/${cc.course_id}/${cc.img}"></div>
                                                                            <figcaption class="info"> <a href="#" class="title text-dark" data-abc="true">${cc.course_name}</a>
                                                                                <p class="text-muted small">${cc.course_lessinfo}</p>
                                                                            </figcaption>
                                                                        </figure>
                                                                    </td>
                                                                    <td>
                                                                        <div class="price-wrap"> <var class="price">$${cc.course_price}</var></div>
                                                                    </td>
                                                                    <td class="text-right d-none d-md-block">
                                                                        <a href="" class="btn btn-light" data-abc="true"> Remove</a>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </aside>
                                        </div>

                                        <div class="col-lg-12">
                                            <aside class="col-lg-12">
                                                <div class="cart">
                                                    <div style="padding-top: 0px" class="cart-body">
                                                        <dl class="dlist-align">
                                                            <dt>Total:</dt>
                                                            <dd class="text-right text-dark b ml-3"><strong>$${totalprice}</strong></dd>
                                                        </dl>
                                                        <hr> <a href="#" class="btn btn-out btn-primary btn-square btn-main" data-abc="true"> Make Purchase </a> <a href="${pageContext.request.contextPath}/Home/Index" class="btn btn-out btn-success btn-square btn-main mt-2" data-abc="true">Continue Shopping</a>
                                                    </div>
                                                </div>
                                            </aside>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <br>
        </div>

    </jsp:body>
</t:main>