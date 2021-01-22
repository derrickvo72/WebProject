<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:main>
    <jsp:body>

        <div class="container-fluid" style=" height: auto; width: 100%;padding-top: 70px;">
            <div class="container">
                <div class="row profile">
                    <div class="col-md-3">
                        <div class="profile-sidebar">
                            <!-- SIDEBAR USERPIC -->
                            <div class="profile-userpic">
                                <input type="file" name="upAvatar" value="" id="upAvatar" class="hiddenbtn" data-errormsg="PhotoUploadErrorMsg">
                                <img class="Avatar" id="Avatar" alt="Avatar" src="" onerror="this.onerror=null; this.src='../public/images/defaultavatar.jpg'" />
<%--                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt="avatar">--%>
                            </div>
                            <!-- END SIDEBAR USERPIC -->
                            <!-- SIDEBAR USER TITLE -->
                            <div style="margin-top: 15px" class="profile-usertitle" >
                                <button type="button" class="cus btn btn-outline-primary">Edit</button>
                                <div class="profile-usertitle-name">
                                    Username
                                </div>
                                <div class="profile-usertitle-job">
                                    Account permission
                                </div>
                            </div>
                            <!-- END SIDEBAR USER TITLE -->
                            <!-- SIDEBAR BUTTONS -->
                            <div class="profile-userbuttons">
                                <button type="button" class="btn btn-success btn-sm">Follow</button>
                                <button type="button" class="btn btn-danger btn-sm">Message</button>
                            </div>
                            <!-- END SIDEBAR BUTTONS -->
                            <!-- SIDEBAR MENU -->
                            <div class="profile-usermenu">
                                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist"
                                     aria-orientation="vertical">
                                    <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill"
                                       href="#v-pills-home" role="tab" aria-controls="v-pills-home"
                                       aria-selected="true">
                                        <i class="fa fa-user-circle-o" aria-hidden="true"></i> &ensp; Overview</a>
                                    <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill"
                                       href="#v-pills-profile" role="tab" aria-controls="v-pills-profile"
                                       aria-selected="false">
                                        <i class="fa fa-cart-arrow-down" aria-hidden="true"></i> &ensp; My course</a>
                                    <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill"
                                       href="#v-pills-messages" role="tab" aria-controls="v-pills-messages"
                                       aria-selected="false">
                                        <i class="fa fa-credit-card" aria-hidden="true"></i> &ensp; Your spending</a>
                                    <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill"
                                       href="#v-pills-settings" role="tab" aria-controls="v-pills-settings"
                                       aria-selected="false">
                                        <i class="fa fa-cog" aria-hidden="true"></i> &ensp; Settings</a>
                                </div>
                            </div>
                            <!-- END MENU -->
                        </div>
                    </div>

                    <div class="col-md-9">
                        <div class="profile-content">
                            <div class="tab-content" id="v-pills-tabContent">
                                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel"
                                     aria-labelledby="v-pills-home-tab">
                                    <h3><i class="fa fa-user" aria-hidden="true"></i> About me</h3>
                                    <hr style="border-top: 3px double #8c8b8b;">

                                    <form>
                                        <div class="form-group">
                                            <h6>FullName</h6>
                                            <input style="width: 100%" type="email" class="form-control"
                                                   aria-describedby="emailHelp" placeholder="Enter name">
                                        </div>

                                        <div class="form-group">
                                            <div class="form-row">
                                                <div class="col-6">
                                                    <h6>Birthday</h6>
                                                    <input style="width: 100%" type="email" class="form-control"
                                                           aria-describedby="emailHelp" placeholder="Birth">
                                                </div>
                                                <div class="col-6">
                                                    <h6>Sex</h6>
                                                    <select style="width: 100%" class="form-control">
                                                        <option>Male</option>
                                                        <option>Female</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <h6>Phone</h6>
                                            <input style="width: 100%" type="email" class="form-control"
                                                   aria-describedby="emailHelp" placeholder="Phone">
                                        </div>
                                        <div class="form-group">
                                            <h6>Address</h6>
                                            <input style="width: 100%" type="email" class="form-control"
                                                   aria-describedby="emailHelp" placeholder="Address">
                                        </div>
                                        <div class="form-group">
                                            <h6>Email</h6>
                                            <input style="width: 100%" type="email" class="form-control"
                                                   aria-describedby="emailHelp" placeholder="Email">
                                        </div>

                                        <div class="form-group">
                                            <h6>Account balance</h6>
                                            <div class="input-group">
                                                <input type="text" class="form-control"
                                                       aria-label="Dollar amount (with dot and two decimal places)" disabled>
                                                <div class="input-group-append">
                                                    <span class="input-group-text">$</span>

                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                                <div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
                                     aria-labelledby="v-pills-profile-tab">
                                    <h3><i class="fa fa-shopping-bag" aria-hidden="true"></i> Total Courses</h3>
                                    <hr style="border-top: 3px double #8c8b8b;">
                                </div>

                                <div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
                                     aria-labelledby="v-pills-messages-tab">
                                    <h3><i class="fa fa-credit-card-alt" aria-hidden="true"></i> Total spending</h3>
                                    <hr style="border-top: 3px double #8c8b8b;">
                                </div>

                                <div class="tab-pane fade" id="v-pills-settings" role="tabpanel"
                                     aria-labelledby="v-pills-settings-tab">
                                    <h3><i class="fa fa-bars" aria-hidden="true"></i> Setting</h3>
                                    <hr style="border-top: 3px double #8c8b8b;">
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