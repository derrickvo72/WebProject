<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:main>
  <jsp:attribute name="css">
  </jsp:attribute>

    <jsp:attribute name="js">
    <script>
        $('#register-form').on('submit', function (e) {
            e.preventDefault();

            const username = $('#txtUsername').val();
            if (username.length === 0) {
                alert('Invalid username!');
                return;
            }

            $.getJSON('${pageContext.request.contextPath}/Account/IsAvailable?user=' + username, function (data) {
                if (data === true) {
                    $('#register-form').off('submit').submit();
                } else {
                    alert('Not available.');
                }
            });
        });

        $('#txtUsername').select();
    </script>
  </jsp:attribute>

    <jsp:body>
        <div class="main">

            <!-- Sign up form -->
            <section class="sign-in">
                <div class="container-ls">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 style="font-family: monospace;" class="form-title">Sign up</h2>
                            <form method="POST" class="register-form" id="register-form">
                                <div class="form-group">
                                    <label for="txtUsername"><i class="fa fa-user fa-2x" aria-hidden="true"></i></label>
                                    <input style="font-family:monospace!important; font-size: 20px" type="text" name="username" id="txtUsername" placeholder="Username"/>
                                </div>
                                <div class="form-group">
                                    <label for="txtEmail"><i class="fa fa-envelope fa-2x" aria-hidden="true"></i></label>
                                    <input style="font-family:monospace!important; font-size: 20px" type="email" name="email" id="txtEmail" placeholder="Email"/>
                                </div>
                                <div class="form-group">
                                    <label for="txtPassword"><i class="fa fa-unlock-alt fa-2x" aria-hidden="true"></i></label>
                                    <input style="font-family:monospace!important; font-size: 20px" type="password" name="password" id="txtPassword" placeholder="Password"/>
                                </div>
                                <div class="form-group">
                                    <label for="txtRe_password"><i class="fa fa-key fa-2x" aria-hidden="true"></i></label>
                                    <input style="font-family:monospace!important; font-size: 20px" type="password" name="re_password" id="txtRe_password" placeholder="Repeat your password"/>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                    <label style="font-family: monospace" for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                                </div>
                                <div style="text-align: center" class="form-group form-button">
                                    <input style="font-family:monospace!important; font-weight: bold; font-size: 18px; background-color: #007bff" type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                                </div>
                            </form>
                        </div>
                        <div class="signup-image">
                            <figure><img src="${pageContext.request.contextPath}/public/colorlib-regform/colorlib-regform-7/images/signup-image.jpg" alt="sing Res image"></figure>
                            <a style="font-size:18px;color: white; background-color:#007bff; " href="${pageContext.request.contextPath}/Account/Login?" class="signup-image-link">I am already member</a>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </jsp:body>
</t:main>