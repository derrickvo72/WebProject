
<div class="container-multi menu-lg" >
    <ul class="menu clearfix" style="margin-bottom: 0px;">
        <li><a href="${pageContext.request.contextPath}/Home/Index">Home</a></li>
        <li><a href="#">Categories</a>
            <ul>
                <li><a href="#">Development</a>
                    <ul>
                        <li><a href="#">Web Dev</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">JavaScript</a></li>
                                <li><a href="#">CSS</a></li>
                                <li><a href="#">Python</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Mobile Dev</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">IOS</a></li>
                                <li><a href="#">Android</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Game Dev</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">C#</a></li>
                                <li><a href="#">C++</a></li>
                                <li><a href="#">3D</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li><a href="#">Design</a>
                    <ul>
                        <li><a href="#">Web design</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">CSS</a></li>
                                <li><a href="#">HTML</a></li>
                                <li><a href="#">HTML5</a></li>
                                <li><a href="#">WordPress</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Game design</a>
                            <ul>
                                <li><b style="color: black">Popular topics</b></li>
                                <li><a href="#">Unity</a></li>
                                <li><a href="#">Blender</a></li>
                                <li><a href="#">Drawing</a></li>
                                <li><a href="#">Pixal Art</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="#">Teach on Ucademy</a>
        <ul style="min-width: 320px; min-height: 50px; padding: 2px ">
            <li class="teach-font" style="text-align: center">
                <h4>Turn what you know into an opportunity and reach millions around the world.</h4>
                <a href="${pageContext.request.contextPath}/Home/Index" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Learn more</a>
            </li>
        </ul>
        </li>
        <li style="text-align: center;">
            <div class="form-group has-search" >
<%--                <span class="fa fa-search form-control-feedback errspan"></span>--%>
                <input type="text" class="form-control" placeholder="&#xf002;  Search everything!">


            </div>
        </li>
        <li class="dropdown" style="float: right;">
            <a href="#" id="cart"><i class="fa fa-shopping-cart"></i><span class="badge">3</span></a>
            <div class="dropdown-content">
                <div class="shopping-cart">
                    <div class="shopping-cart-header">
                        <i class="fa fa-shopping-cart cart-icon"></i><span class="badge">3</span>
                        <div class="shopping-cart-total">
                            <span class="lighter-text">Total:</span>
                            <span class="main-color-text">$2,229.97</span>
                        </div>
                    </div> <!--end shopping-cart-header -->
                    <div class="shopping-cart-items">
                        <div class="item-slot" id="item1">
                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item1.jpg" alt="item1" />
                            <span class="item-name">Sony DSC-RX100M III</span>
                            <span class="item-price">$849.99</span>
                            <p class="item-remove">Remove</p>
                        </div>
                        <div class="item-slot" id="item2">
                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item2.jpg" alt="item1" />
                            <span class="item-name">KS Automatic Mechanic...</span>
                            <span class="item-price">$1,249.99</span>
                            <p class="item-remove">Remove</p>
                        </div>
                        <div class="item-slot" id="item3">
                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item3.jpg" alt="item1" />
                            <span class="item-name">Kindle, 6" Glare-Free To...</span>
                            <span class="item-price">$129.99</span>
                            <p class="item-remove">Remove</p>
                        </div>
                    </div>

                    <a href="#" class="button">Checkout</a>
                </div> <!--end shopping-cart -->

            </div> <!--end container -->
        </li>
        <li style="float: right; margin-right:10px;">
            <form action="${pageContext.request.contextPath}/Home/Login">
                <button  type="submit" class="btn btn-outline-primary">Log in</button>
            </form>

        </li>
        <li style="float: right;">
            <form action="${pageContext.request.contextPath}/Home/Sign">
                <input class="btn btn-primary" type="submit" value="Apply">
            </form>
        </li>



    </ul>
</div>

<%--menucon--%>
<div class="container" style="margin-right: 0px; margin-left: 0px; padding-left: 5px; padding-right: 0px; padding-top: 5px; position: absolute;width: 61px;">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary" style="padding-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px;">
        <button class="navbar-toggler" type="button" data-trigger="#main_nav" style="z-index: 100;">
            <span class="navbar-toggler-icon" style="z-index: 100; color: transparent; background-color: #007bff; border-radius: .25rem;"></span>
        </button>
        <div class="navbar-collapse" id="main_nav" style="display: block">

            <div class="offcanvas-header mt-3">
                <button class="btn btn-outline-danger btn-close float-right"> &times Close </button>
                <h5 class="py-2 text-white">Main navbar</h5>
            </div>

            <ul class="navbar-nav">
                <li class="nav-item active"> <a class="nav-link" href="#">Home </a> </li>
                <li class="nav-item"><a class="nav-link" href="#"> About </a></li>
                <li class="nav-item"><a class="nav-link" href="#"> Services </a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link  dropdown-toggle" href="#" data-toggle="dropdown">  More items  </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#"> Submenu item 1</a></li>
                        <li><a class="dropdown-item" href="#"> Submenu item 2 </a></li>
                    </ul>
                </li>
            </ul>

            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="#"> Menu item </a></li>
                <li class="nav-item"><a class="nav-link" href="#"> Menu item </a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link  dropdown-toggle" href="#" data-toggle="dropdown"> Dropdown right </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a class="dropdown-item" href="#"> Submenu item 1</a></li>
                        <li><a class="dropdown-item" href="#"> Submenu item 2 </a></li>
                    </ul>
                </li>
            </ul>
        </div> <!-- navbar-collapse.// -->
    </nav>
</div><!-- container //  -->
