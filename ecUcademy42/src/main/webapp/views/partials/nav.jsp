
<div class="container-multi menu-lg" >
    <ul class="menu clearfix">
        <li><a href="${pageContext.request.contextPath}/Home/Index">Home</a></li>
        <li><a href="#">Categories</a>
            <ul style="margin-top: 11px">
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
        <ul style="min-width: 320px; min-height: 50px; margin-top: 11px; padding: 2px ">
            <li class="teach-font" style="text-align: center">
                <h4>Turn what you know into an opportunity and reach millions around the world.</h4>
                <a href="${pageContext.request.contextPath}/Home/Index" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Learn more</a>
            </li>
        </ul>
        </li>
        <li style="float: right; margin-right:20px;">
            <form action="${pageContext.request.contextPath}/Home/Sign">
                <input class="btn btn-primary" type="submit" value="Apply">
            </form>
        </li>
        <li style="float: right; margin-right:10px;">
            <form action="${pageContext.request.contextPath}/Home/Login">
                <button  type="submit" class="btn btn-outline-primary">Log in</button>
            </form>

        </li>
        <li style="float: right; margin-right:25px;"><i class="fa fa-shopping-cart fa-3x" aria-hidden="true"></i></li>
        <li style="text-align: center; margin-left: 5px">
            <div class="form-group has-search">
                <span class="fa fa-search form-control-feedback"></span>
                <input type="text" class="form-control" placeholder="Search">
            </div>
        </li>

    </ul>
</div>

<div class="menu-mini">
    <div class="btn-show">
        <span class="fa fa-bars"></span>
    </div>
    <div class="block-main">

    </div>
    <div class="sidebar navy ">
        <ul>
            <li><a>Login</a></li>
            <li><a>Sign up</a></li>
            <li><h6>Most popular</h6></li>
            <li><a class="Web-btn">Development <span class="fa fa-caret-right first"></span> </a>
                <ul class="Web-show">
                    <li><a>Web Dev <span class="fa fa-caret-right" ></span> </a>
                        <ul>
                            <li><a>Javascript</a></li>
                            <li><a>CSS</a></li>
                            <li><a>Python</a></li>
                        </ul>
                    </li>
                    <li><a>Mobile Dev <span class="fa fa-caret-right" ></span></a>
                        <ul>
                            <li><a>Android</a></li>
                            <li><a>Ios</a></li>
                        </ul>
                    </li>
                    <li><a>Game Dev <span class="fa fa-caret-right" ></span></a>
                        <ul>
                            <li><a>C#</a></li>
                            <li><a>C++</a></li>
                            <li><a>3D</a></li>
                        </ul>
                    </li>

                </ul>
            </li>
            <li><a class="Design-btn">Design <span class="fa fa-caret-right second" ></span></a>
                <ul class="Design-show">
                    <li><a>Web design <span class="fa fa-caret-right"></span></a>
                        <ul>
                            <li><a>Css</a></li>
                            <li><a>Html</a></li>
                            <li><a>WordPress</a></li>
                        </ul>
                    </li>
                    <li><a>Game design <span class="fa fa-caret-right"></span></a>
                        <ul>
                            <li><a>Unity</a></li>
                            <li><a>Blender</a></li>
                            <li><a>Drawing</a></li>
                            <li><a>Pix Art</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><h6>More from Udemy</h6></li>
            <li><a>Udemy for teaching</a></li>
            <li><a>Invited friend</a></li>
            <li><a>Help</a></li>
        </ul>
    </div>
</div>