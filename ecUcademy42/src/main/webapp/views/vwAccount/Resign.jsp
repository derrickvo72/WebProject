<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:main>
  <jsp:attribute name="css">
  </jsp:attribute>

    <jsp:attribute name="js">
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="js/app-ajax.js" type="text/javascript"></script>
    <script>
        var otpkey = "";
        $(document).ready(function(){
            $('#register-form').on('submit', function (e) {
                e.preventDefault();
                const username = $('#txtUsername').val();
                const password = $('#txtPassword').val();
                const repassword = $('#txtRe_password').val();
                const email = $('#txtEmail').val();
                const otpans = $('#txtOTP').val();
                if (username.length === 0) {
                    alert('Invalid username!');
                    return;
                }
                if (otpans != otpkey) {
                    alert('Wrong OTP code!');
                    return;
                }
                if (email.length === 0) {
                    alert('Invalid email!');
                    return;
                }
                if (password.length === 0) {
                    alert('Invalid password!');
                    return;
                }
                if (repassword.length === 0) {
                    alert('Please repeat your password!');
                    return;
                }
                if (!(repassword === password)) {
                    alert('Please repeat your password correctly!');
                    return;
                }

                $.getJSON('${pageContext.request.contextPath}/Account/IsAvailable?user=' + username, function (data) {
                    if (data === true) {
                        // $('#register-form').off('submit').submit();
                    } else {
                        alert('Not available username!');
                        return;
                    }
                });
                $.getJSON('${pageContext.request.contextPath}/Account/IsEmailAvailable?email=' + email, function (data) {
                    if (data === true) {
                        alert('Successful!');
                        $('#register-form').off('submit').submit();
                    } else {
                        alert('Not available email!');
                        return;
                    }
                });
            });
            $(document).on("click", "#btnOTP", function() {
                const email = $("#txtEmail").val();
                ctx = "${pageContext.request.contextPath}"
                $.ajax({
                    type : "POST",
                    url  : ctx + "/OTPServlet",
                    data : {email: email},
                    success:function(result){
                        if (result != "no") {
                            otpkey = result;
                            $("#otpForm,.alert-success").show();
                            $(".success-message").html("OTP sent your email address!");
                        }
                        else {
                            $("#otpForm,.alert-success").show();
                            $(".error-message").html("Something wrong!");
                        }
                    }
                });
            });
        });
    </script>
  </jsp:attribute>

    <jsp:body>
        <div class="main">

            <!-- Sign up form -->
            <section class="sign-in">
                <div class="container-ls">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 style="font-family: monospace;" id="test" class="form-title">Sign up</h2>
                            <form method="POST" class="register-form" id="register-form">
                                <div class="form-group">
                                    <label for="txtUsername"><i class="fa fa-user fa-2x" aria-hidden="true"></i></label>
                                    <input style="font-family:monospace!important; font-size: 20px" type="text" name="username" id="txtUsername" placeholder="Username"/>
                                </div>
                                <div class="form-group">
                                    <label for="txtEmail"><i class="fa fa-envelope fa-2x" aria-hidden="true"></i></label>
                                    <input style="font-family:monospace!important; font-size: 20px" type="email" name="email" id="txtEmail" placeholder="Email"/>
                                </div>
                                <div class="form-group form-button">
                                    <input style="font-family:monospace!important; font-size: 16px; background-color: grey" type="button" name="otp" id="btnOTP" class="form-submit w-100" value="Send OTP"/>
                                </div>
                                <div class="form-group">
                                    <label for="txtOTP"><i class="fa fa-mobile fa-2x" aria-hidden="true"></i></label>
                                    <input style="font-family:monospace!important; font-size: 20px" type="text" name="otp" id="txtOTP" placeholder="OTP code"/>
                                </div>
                                <div class="form-group">
                                    <label for="txtPassword"><i class="fa fa-unlock-alt fa-2x" aria-hidden="true"></i></label>
                                    <input style="font-family:monospace!important; font-size: 20px" type="password" name="password" id="txtPassword" placeholder="Password"/>
                                </div>
                                <div class="form-group">
                                    <label for="txtRe_password"><i class="fa fa-key fa-2x" aria-hidden="true"></i></label>
                                    <input style="font-family:monospace!important; font-size: 20px" type="password" name="re_password" id="txtRe_password" placeholder="Repeat your password"/>
                                </div>
                                <div style="text-align: center" class="form-group form-button">
                                    <input style="font-family:monospace!important; font-weight: bold; font-size: 18px; background-color: #007bff" type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                                </div>
                            </form>
                        </div>
                        <div class="signup-image">
                            <figure><img src="${pageContext.request.contextPath}/public/colorlib-regform/colorlib-regform-7/images/signup-image.jpg" alt="sing Res image"></figure>
                            <a style="font-size:18px;color: white; background-color:#007bff; margin-bottom: 20px" href="${pageContext.request.contextPath}/Account/Login?" class="signup-image-link">I am already member</a>
                            <div class="alert alert-success alert-dismissible" style="display: none;">
                                <a class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <span class="success-message"></span>
                                <span class="error-message" style="color:red;"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </jsp:body>
</t:main>