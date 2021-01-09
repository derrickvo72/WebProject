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
                                    <label for="your_name"><i class="fa fa-user" aria-hidden="true"></i></label>
                                    <input type="text" name="your_name" id="your_name" placeholder="Your Name"/>
                                </div>
                                <div class="form-group">
                                    <label for="your_pass"><i class="fa fa-unlock-alt" aria-hidden="true"></i></label>
                                    <input type="password" name="your_pass" id="your_pass" placeholder="Password"/>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                    <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                                </div>
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