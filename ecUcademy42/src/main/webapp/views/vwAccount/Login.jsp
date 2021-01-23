<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:main>
    <jsp:body>
        <div class="main">

            <!-- Sing in  Form -->
            <section class="sign-in">
                <div class="container-ls">
                    <div class="signin-content">
                        <div class="signin-image">
                            <figure><img src="${pageContext.request.contextPath}/public/colorlib-regform/colorlib-regform-7/images/signin-image.jpg" alt="sing up image"></figure>
                            <a  href="#" class="signup-image-link">Create an account</a>
                        </div>

                        <div class="signin-form">
                            <h2 class="form-title">Login</h2>
                            <form method="POST" class="register-form" id="login-form">
                                <div class="form-group">
                                    <label for="txtUsername"><i class="fa fa-user" aria-hidden="true"></i></label>
                                    <input type="text" name="username" id="txtUsername" placeholder="Username"/>
                                </div>
                                <div class="form-group">
                                    <label for="txtPassword"><i class="fa fa-unlock-alt" aria-hidden="true"></i></label>
                                    <input type="password" name="password" id="txtPassword" placeholder="Password"/>
                                </div>
<%--                                <div class="form-group">--%>
<%--                                    <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />--%>
<%--                                    <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>--%>
<%--                                </div>--%>
                                <c:if test="${hasError}">
                                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                        <strong>Login failed!</strong> ${errorMessage}
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                </c:if>
                                <div class="form-group form-button">
                                    <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                                </div>
                            </form>
                            <div class="social-login">
                                <span class="social-label">Or login with</span>
                                <ul class="socials">
                                    <li><a href="#"><i class="display-flex-center zmdi-facebook"></i></a></li>
                                    <li><a href="#"><i class="display-flex-center zmdi-twitter"></i></a></li>
                                    <li><a href="#"><i class="display-flex-center zmdi-google"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </jsp:body>
</t:main>