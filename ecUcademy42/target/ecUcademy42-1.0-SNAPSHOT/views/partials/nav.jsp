<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="authUser" scope="session" type="beans.user"/>

<div class="container-multi menu-lg">
    <ul class="menu clearfix" style="margin-bottom: 0px;">
        <li><a href="${pageContext.request.contextPath}/Home/Index">Home</a></li>
        <li><a href="#">Categories</a>
            <ul>
                <li><a href="#">Web develop</a>
                    <ul>
                        <li><a href="#">Java</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">Java expedited course</a></li>
                                <li><a href="#">Java basic</a></li>
                                <li><a href="#">Java high level</a></li>
                                <li><a href="#">Java a-z</a></li>
                            </ul>
                        </li>
                        <li><a href="#">HTML/CSS</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">Basic HTML/CSS</a></li>
                                <li><a href="#">Full skill CSS</a></li>
                                <li><a href="#">CSS with bootstrap 4</a></li>
                                <li><a href="#">HTML/CSS a-z</a></li>
                            </ul>
                        </li>
                        <li><a href="#">JavaScript</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">Basic learn JS</a></li>
                                <li><a href="#">Full skill Node JS</a></li>
                                <li><a href="#">React Js high level </a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li><a href="#">Window develop</a>
                    <ul>
                        <li><a href="#">C#</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">C# basic</a></li>
                                <li><a href="#">Window form</a></li>
                                <li><a href="#">Window phone</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Python</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">Python basic</a></li>
                                <li><a href="#">Complete Python</a></li>
                                <li><a href="#">Python application</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li><a href="#">Moblie develop</a>
                    <ul>
                        <li><a href="#">IOS develop</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">iOS & Swift - The Complete iOS App Development Bootcamp</a></li>
                                <li><a href="#">iOS 11 & Swift 4 - The Complete iOS App Development Bootcamp</a></li>
                                <li><a href="#">The Complete iOS 10 & Swift 3 Developer Course</a></li>
                                <li><a href="#">iOS & Swift - The Complete iOS App Development Bootcamp</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Android develop</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">Complete Adroid</a></li>
                                <li><a href="#">The Complete Android Oreo Developer Course - Build 23 Apps!</a></li>
                                <li><a href="#">Android Java Masterclass - Become an App Developer</a></li>
                                <li><a href="#">Android Java Masterclass - Become an App Developer</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="#">Teach on Ucademy</a>
            <ul style="min-width: 320px; min-height: 50px; padding: 2px ">
            <li class="teach-font" style="text-align: center">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <h5>Turn what you know into an opportunity and reach millions around the world</h5>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <a href="${pageContext.request.contextPath}/Home/Index" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Learn more</a>
            </li>
        </ul>
        </li>
        <li style="text-align: center;">
            <div class="form-group has-search" >
<%--                <span class="fa fa-search form-control-feedback errspan"></span>--%>
                <input  type="text" class="form-control " placeholder="&#xf002;  Search everything!">
            </div>
        </li>
        <li class="dropdown" style="float: right;">
            <c:choose>
                <c:when test="${authUser.user_id==0}">
                    <a href="${pageContext.request.contextPath}/Account/Login?"><i class="fa fa-shopping-cart fa-2x" style="margin-left: 10px; margin-right: 10px;"></i></a>
                </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/Home/Cart?user_id=${authUser.user_id}"><i class="fa fa-shopping-cart fa-2x" style="margin-left: 10px; margin-right: 10px;"></i></a>
                        </c:otherwise>
            </c:choose>
        </li>

<%--                <span class="badge">3</span></a>--%>
<%--            <div class="dropdown-content">--%>
<%--                <div class="shopping-cart">--%>
<%--                    <div class="shopping-cart-header">--%>
<%--                        <i class="fa fa-shopping-cart cart-icon"></i><span class="badge">3</span>--%>
<%--                        <div class="shopping-cart-total">--%>
<%--                            <span class="lighter-text">Total:</span>--%>
<%--                            <span class="main-color-text">$2,229.97</span>--%>
<%--                        </div>--%>
<%--                    </div> <!--end shopping-cart-header -->--%>
<%--                    <div class="shopping-cart-items">--%>
<%--                        <div class="item-slot" id="item1">--%>
<%--                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item1.jpg" alt="item1" />--%>
<%--                            <span class="item-name">Sony DSC-RX100M III</span>--%>
<%--                            <span class="item-price">$849.99</span>--%>
<%--                            <p class="item-remove">Remove</p>--%>
<%--                        </div>--%>
<%--                        <div class="item-slot" id="item2">--%>
<%--                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item2.jpg" alt="item1" />--%>
<%--                            <span class="item-name">KS Automatic Mechanic...</span>--%>
<%--                            <span class="item-price">$1,249.99</span>--%>
<%--                            <p class="item-remove">Remove</p>--%>
<%--                        </div>--%>
<%--                        <div class="item-slot" id="item3">--%>
<%--                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item3.jpg" alt="item1" />--%>
<%--                            <span class="item-name">Kindle, 6" Glare-Free To...</span>--%>
<%--                            <span class="item-price">$129.99</span>--%>
<%--                            <p class="item-remove">Remove</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <a href="#" class="button">Checkout</a>--%>
<%--                </div> <!--end shopping-cart -->--%>

<%--            </div> <!--end container -->--%>
<%--        </li>--%>
        <c:choose>
            <c:when test="${auth}">
            <form id="frmLogout" method="post" action="${pageContext.request.contextPath}/Account/Logout"></form>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
                Hi, <b>${authUser.user_username}</b>!
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile?user_id=${authUser.user_id}">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    Profile
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="javascript: $('#frmLogout').submit();">
                    <i class="fa fa-sign-out" aria-hidden="true"></i>
                    Logout
                </a>
            </div>
        </li>
        </c:when>
        <c:otherwise>
            <li style="float: right; margin-right:10px;">
                <form action="${pageContext.request.contextPath}/Account/Login">
                    <button  type="submit" class="btn btn-outline-primary" style="margin-left: 10px">Log in</button>
                </form>

            </li>
            <li style="float: right; margin-left: 10px">
                <form action="${pageContext.request.contextPath}/Account/Sign">
                    <input class="btn btn-primary" type="submit" value="Apply">
                </form>
            </li>
        </c:otherwise>
        </c:choose>
    </ul>
</div>

<%--menucon--%>
<div class="container" style="margin-right: 0px; margin-left: 0px; padding-left: 5px; padding-right: 0px; padding-top: 5px; position: absolute;width: 61px;">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary" style="padding-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px;">
        <button class="navbar-toggler" type="button" data-trigger="#main_nav" style="z-index: 100;">
            <span class="navbar-toggler-icon" style="z-index: 100; color: transparent; background-color: #5b9bd1; border-radius: .25rem;"></span>
        </button>
        <div class="navbar-collapse" id="main_nav" style="display: block">

            <div class="offcanvas-header mt-3">
                <button  class="btn btn-outline-danger btn-close float-right"> &times Close </button>
            </div>

<%--            <ul class="navbar-nav">--%>
                <ul style="padding-top: 20px" class="navbar-nav ml-auto">

                <ul id="menu">
                    <li>
                        <a style=" color: whitesmoke"  href="${pageContext.request.contextPath}/Home/Index"><i class="fa fa-home fa-3x" aria-hidden="true"></i></a>
                    </li>

                    <li>
                        <a style=" color: whitesmoke" href="${pageContext.request.contextPath}/Home/Cart?user_id=${authUser.user_id}"><i class="fa fa-shopping-cart fa-3x" aria-hidden="true"></i></a>
                    </li>
                    <c:choose>
                        <c:when test="${auth}">
                            <form id="frmLogoutRespon" method="post" action="${pageContext.request.contextPath}/Account/Logout"></form>
                            <li>
                                <a style="font-size:30px; color: whitesmoke" href="${pageContext.request.contextPath}/Account/Profile?user_id=${authUser.user_id}">
                                    Profile
                                </a>
                            </li>
                            <li>
                                <a style="font-size:30px; color: whitesmoke" href="javascript: $('#frmLogoutRespon').submit();">
                                    Logout
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li>
                                <a style="font-size:30px; color: whitesmoke" href="${pageContext.request.contextPath}/Account/Login?">Login</a>
                            </li>
                            <li>
                                <a style="font-size:30px; color: whitesmoke"  href="${pageContext.request.contextPath}/Account/Sign?">Resign</a>
                            </li>
                        </c:otherwise>
                    </c:choose>


                </ul>

<%--                <li class="nav-item active"> <a  class="nav-link" href="${pageContext.request.contextPath}/Home/Index"><i class="fa fa-home fa-5x" aria-hidden="true"></i></a></li>--%>
<%--                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-shopping-cart fa-4x" aria-hidden="true"></i></a></li>--%>
<%--                <li class="nav-item"><a style="color: white" class="nav-link" href="${pageContext.request.contextPath}/views/vwAccount/Login.jsp"> Login</a></li>--%>
<%--                <li class="nav-item"><a style="color: white" class="nav-link" href="${pageContext.request.contextPath}/views/vwAccount/Resign.jsp">Apply </a></li>--%>


                    <li style="margin-top: 50px" class="nav-item dropdown" id="courses">
                        <a style="color: white" class="nav-link  dropdown-toggle" href="#" data-toggle="dropdown">  <h4>Courses</h4>  </a>
                        <ul style=" border: none; background-color: black" class="dropdown-menu">
                            <li><a style="color: white"  class="dropdown-item hover" href="#" ><h5> Web Develop</h5></a></li>
                            <li><a style="color: white "  class="dropdown-item hover" href="#" > <h5>Game Develop</h5> </a></li>
                            <li><a style="color: white"  class="dropdown-item hover" href="#" > <h5>Moblie Develop </h5></a></li>
                        </ul>
                    </li>
            </ul>

            <ul style="padding-top: 20px" class="navbar-nav ml-auto">
                <li class="nav-item"><a style="font-size: 30px; color: white" class="nav-link" href="#"> <h4>Contact Us</h4> </a></li>
            </ul>
        </div> <!-- navbar-collapse.// -->
    </nav>
</div><!-- container //  -->
