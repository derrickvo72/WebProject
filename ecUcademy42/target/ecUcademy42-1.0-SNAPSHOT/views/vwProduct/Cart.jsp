<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--<jsp:useBean id="user" scope="request" type="beans.user"/>--%>

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
                                                                <th scope="col">Product</th>
                                                                <th scope="col" width="120">Quantity</th>
                                                                <th scope="col" width="120">Price</th>
                                                                <th scope="col" class="text-right d-none d-md-block" width="200"></th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>

                                                            <tr>
                                                                <td>
                                                                    <figure class="itemside align-items-center">
                                                                        <div class="aside"><img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1574342017/rTVSl.jpg" class="img-sm"></div>
                                                                        <figcaption class="info"> <a href="#" class="title text-dark" data-abc="true">Lap trinh c</a>
                                                                            <p class="text-muted small">Loai: Lap trinh web <br> id: 1</p>
                                                                        </figcaption>
                                                                    </figure>
                                                                </td>
                                                                <td> <select class="form-cart">
                                                                    <option>1</option>
                                                                    <option>2</option>
                                                                    <option>3</option>
                                                                    <option>4</option>
                                                                </select> </td>
                                                                <td>
                                                                    <div class="price-wrap"> <var class="price">$10.00</var> <small class="text-muted"> $9.20 each </small> </div>
                                                                </td>
                                                                <td class="text-right d-none d-md-block"> <a data-original-title="Save to Wishlist" title="" href="" class="btn btn-light" data-toggle="tooltip" data-abc="true">

                                                                    <i class="fa fa-heart"></i>
                                                                </a> <a href="" class="btn btn-light" data-abc="true"> Buy</a>
                                                                    <a href="" class="btn btn-light" data-abc="true"> Remove</a> </td>

                                                            </tr>

                                                            <tr>
                                                                <td>
                                                                    <figure class="itemside align-items-center">
                                                                        <div class="aside"><img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1574342017/rTVSl.jpg" class="img-sm"></div>
                                                                        <figcaption class="info"> <a href="#" class="title text-dark" data-abc="true">Lap trinh c</a>
                                                                            <p class="text-muted small">Loai: Lap trinh web <br> id: 1</p>
                                                                        </figcaption>
                                                                    </figure>
                                                                </td>
                                                                <td> <select class="form-cart">
                                                                    <option>1</option>
                                                                    <option>2</option>
                                                                    <option>3</option>
                                                                    <option>4</option>
                                                                </select> </td>
                                                                <td>
                                                                    <div class="price-wrap"> <var class="price">$10.00</var> <small class="text-muted"> $9.20 each </small> </div>
                                                                </td>
                                                                <td class="text-right d-none d-md-block"> <a data-original-title="Save to Wishlist" title="" href="" class="btn btn-light" data-toggle="tooltip" data-abc="true">

                                                                    <i class="fa fa-heart"></i>
                                                                </a> <a href="" class="btn btn-light" data-abc="true"> Buy</a>
                                                                    <a href="" class="btn btn-light" data-abc="true"> Remove</a> </td>

                                                            </tr>

                                                            <tr>
                                                                <td>
                                                                    <figure class="itemside align-items-center">
                                                                        <div class="aside"><img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1574342017/rTVSl.jpg" class="img-sm"></div>
                                                                        <figcaption class="info"> <a href="#" class="title text-dark" data-abc="true">Lap trinh c</a>
                                                                            <p class="text-muted small">Loai: Lap trinh web <br> id: 1</p>
                                                                        </figcaption>
                                                                    </figure>
                                                                </td>
                                                                <td> <select class="form-cart">
                                                                    <option>1</option>
                                                                    <option>2</option>
                                                                    <option>3</option>
                                                                    <option>4</option>
                                                                </select> </td>
                                                                <td>
                                                                    <div class="price-wrap"> <var class="price">$10.00</var> <small class="text-muted"> $9.20 each </small> </div>
                                                                </td>
                                                                <td class="text-right d-none d-md-block"> <a data-original-title="Save to Wishlist" title="" href="" class="btn btn-light" data-toggle="tooltip" data-abc="true">

                                                                    <i class="fa fa-heart"></i>
                                                                </a> <a href="" class="btn btn-light" data-abc="true"> Buy</a>
                                                                    <a href="" class="btn btn-light" data-abc="true"> Remove</a> </td>

                                                            </tr>

                                                            <tr>
                                                                <td>
                                                                    <figure class="itemside align-items-center">
                                                                        <div class="aside"><img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1574342017/rTVSl.jpg" class="img-sm"></div>
                                                                        <figcaption class="info"> <a href="#" class="title text-dark" data-abc="true">Lap trinh c</a>
                                                                            <p class="text-muted small">Loai: Lap trinh web <br> id: 1</p>
                                                                        </figcaption>
                                                                    </figure>
                                                                </td>
                                                                <td> <select class="form-cart">
                                                                    <option>1</option>
                                                                    <option>2</option>
                                                                    <option>3</option>
                                                                    <option>4</option>
                                                                </select> </td>
                                                                <td>
                                                                    <div class="price-wrap"> <var class="price">$10.00</var> <small class="text-muted"> $9.20 each </small> </div>
                                                                </td>
                                                                <td class="text-right d-none d-md-block"> <a data-original-title="Save to Wishlist" title="" href="" class="btn btn-light" data-toggle="tooltip" data-abc="true">

                                                                    <i class="fa fa-heart"></i>
                                                                </a> <a href="" class="btn btn-light" data-abc="true"> Buy</a>
                                                                    <a href="" class="btn btn-light" data-abc="true"> Remove</a> </td>

                                                            </tr>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </aside>
                                        </div>

                                        <div class="col-lg-12">
                                            <aside class="col-lg-12">
                                                <div class="cart">
                                                    <div style="padding-bottom:10px; border: none" class="card mb-3">
                                                        <div class="card-body">
                                                            <form>
                                                                <div class="form-group"> <label>Have coupon?</label>
                                                                    <div class="input-group"> <input type="text" class="form-control coupon" name="" placeholder="Coupon code"> <span class="input-group-append"> <button class="btn btn-primary btn-apply coupon">Apply</button> </span> </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <div style="padding-top: 0px" class="cart-body">
                                                        <dl class="dlist-align">
                                                            <dt>Total price:</dt>
                                                            <dd class="text-right ml-3">$69.97</dd>
                                                        </dl>
                                                        <dl class="dlist-align">
                                                            <dt>Discount:</dt>
                                                            <dd class="text-right text-danger ml-3">- $10.00</dd>
                                                        </dl>
                                                        <dl class="dlist-align">
                                                            <dt>Total:</dt>
                                                            <dd class="text-right text-dark b ml-3"><strong>$59.97</strong></dd>
                                                        </dl>
                                                        <hr> <a href="#" class="btn btn-out btn-primary btn-square btn-main" data-abc="true"> Make Purchase </a> <a href="#" class="btn btn-out btn-success btn-square btn-main mt-2" data-abc="true">Continue Shopping</a>
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