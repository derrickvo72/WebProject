<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:main>
    <jsp:body>
<%--        cha--%>
        <div class="container-fluid" style=" height: auto; width: 100%;padding-top: 70px;">
<%--            con--%>
            <div class="container-fluid" style="display: block; width: 100%;">
                <div class="tab">
                    <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">User information
                    </button>
                    <button class="tablinks" onclick="openCity(event, 'Paris')">My courses</button>
                </div>

                <div id="London" class="tabcontent">
                    <div class="row">
                        <div class="col-md-10">
                            <br>
                            <h3>Details</h3>
                        </div>
                        <div class="col-md-2">
                            <br>
                            <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                        </div>
                    </div>
                    <hr style="border-top: 3px double #8c8b8b;">
                    <div class="row">
                        <div class="col-sm-10">
                            <form action="/action_page.php">
                                <div class="form-group">
                                    <label for="email">Email address:</label>
                                    <input type="email" class="form-control" placeholder="Enter email" id="email">
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Password:</label>
                                    <input type="password" class="form-control" placeholder="Enter password" id="pwd">
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox"> Remember me
                                    </label>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                        <div class="col-md-2">
                            <div class="profile-img">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog"
                                     alt=""/>
                                <div class="img__description_layer">
                                    <div class="img__description">
                                        <div class="file btn btn-lg btn-primary" style="display: block; ">
                                            Change Photo
                                            <input id="file-upload" type="file" accept="image/*"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="Paris" class="tabcontent" style="padding-bottom: 100px">
                    <br>
                    <h3>Courses</h3>
                    <hr style="border-top: 3px double #8c8b8b;">
                        <%--            <table class="table table-hover">--%>
                        <%--                <thead>--%>
                        <%--   vd              <tr>--%>
                        <%--                    <th scope="col-md-3">Id</th>--%>
                        <%--                    <th scope="col-md-6">Name</th>--%>
                        <%--                    <th scope="col-md-3">Price</th>--%>
                        <%--                    <th scope="col-md-3">Date</th>--%>
                        <%--                    <th scope="col-md-3">&nbsp;</th>--%>
                        <%--                </tr>--%>
                        <%--                </thead>--%>

                        <%--                <tbody>--%>
                        <%--                    <tr>--%>
                        <%--                        <th scope="row">1</th>--%>
                        <%--                        <th scope="row">HTML</th>--%>
                        <%--                        <td>--%>
                        <%--                            200.000--%>
                        <%--                        </td>--%>
                        <%--                        <td>--%>
                        <%--                            19/01/2021--%>
                        <%--                        </td>--%>
                        <%--                        <td class="text-right">--%>
                        <%--                            <a class="btn btn-sm btn-outline-primary" href="#" role="button">--%>
                        <%--                                <i class="fa fa-trash" aria-hidden="true"></i>--%>
                        <%--                            </a>--%>
                        <%--                        </td>--%>
                        <%--                    </tr>--%>
                        <%--                </tbody>--%>
                        <%--            </table>--%>
                        <%--        </div>--%>


                    <div class="row p-5">
                        <div class="col-md-12">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th class="border-0 text-uppercase small font-weight-bold">ID</th>
                                    <th class="border-0 text-uppercase small font-weight-bold">Item</th>
                                    <th class="border-0 text-uppercase small font-weight-bold">Description</th>
                                    <th class="border-0 text-uppercase small font-weight-bold">Quantity</th>
                                    <th class="border-0 text-uppercase small font-weight-bold">Unit Cost</th>
                                    <th class="border-0 text-uppercase small font-weight-bold">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Software</td>
                                    <td>LTS Versions</td>
                                    <td>21</td>
                                    <td>$321</td>
                                    <td>$3452</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Software</td>
                                    <td>Support</td>
                                    <td>234</td>
                                    <td>$6356</td>
                                    <td>$23423</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Software</td>
                                    <td>Sofware Collection</td>
                                    <td>4534</td>
                                    <td>$354</td>
                                    <td>$23434</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Software</td>
                                    <td>Sofware Collection</td>
                                    <td>4534</td>
                                    <td>$354</td>
                                    <td>$23434</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Software</td>
                                    <td>Sofware Collection</td>
                                    <td>4534</td>
                                    <td>$354</td>
                                    <td>$23434</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Software</td>
                                    <td>Sofware Collection</td>
                                    <td>4534</td>
                                    <td>$354</td>
                                    <td>$23434</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Software</td>
                                    <td>Sofware Collection</td>
                                    <td>4534</td>
                                    <td>$354</td>
                                    <td>$23434</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Software</td>
                                    <td>Sofware Collection</td>
                                    <td>4534</td>
                                    <td>$354</td>
                                    <td>$23434</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Software</td>
                                    <td>Sofware Collection</td>
                                    <td>4534</td>
                                    <td>$354</td>
                                    <td>$23434</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Software</td>
                                    <td>Sofware Collection</td>
                                    <td>4534</td>
                                    <td>$354</td>
                                    <td>$23434</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Software</td>
                                    <td>Sofware Collection</td>
                                    <td>4534</td>
                                    <td>$354</td>
                                    <td>$23434</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Software</td>
                                    <td>Sofware Collection</td>
                                    <td>4534</td>
                                    <td>$354</td>
                                    <td>$23434</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Grand Total</div>
                            <div class="h2 font-weight-light">$234,234</div>
                        </div>

                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Discount</div>
                            <div class="h2 font-weight-light">10%</div>
                        </div>

                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Sub - Total amount</div>
                            <div class="h2 font-weight-light">$32,432</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:main>