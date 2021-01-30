<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="courses" scope="request" type="java.util.List<beans.course>" />

<t:main>
    <jsp:body>

        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/jquery-2.1.1.js"></script>
        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/jquery.mixitup.min.js"></script>
        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/public/content-filter-master/js/modernizr.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script>
            $('#sidebar a').click(function(e) {
                e.preventDefault();
                $(this).slide('show');
            });

            // store the currently selected tab in the hash value
            $("ul.sidebar-nav > li > a").on("shown.bs.slide", function(e) {
                var id = $(e.target).attr("href").substr(1);
                window.location.hash = id;
            });

            // on load of the page: switch to the currently selected tab
            var hash = window.location.hash;
            $('#sidebar a[href="' + hash + '"]').slide('show');
        </script>
        <style>
            <%@include file="/WEB-INF/css/Learn.css"%>
        </style>


        <section style="padding-top: 2rem">
            <div style=" height: 100%; margin-bottom: 5rem" class="container-fluid">

                <div id="wrapper" class="active">
                        <%--                    navigation menu--%>
                    <div id="sidebar-wrapper">
                        <ul id="sidebar_menu" class="sidebar-nav">
                            <li class="sidebar-brand">
                                <a id="menu-toggle" href="#">
                                    <span id="main_name">
                                        <h6>Menu</h6>
                                    </span>
                                    <span id="main_icon">
                                        <i class="fas fa-sliders-h"></i>
                                    </span>
                                </a>
                            </li>
                        </ul>
                        <ul class="sidebar-nav" id="sidebar">
                            <li>
                                <a class="tablinks" onclick="openCity(event, 'London')">User
                                    <span style="margin-left: 38px"><i class="fas fa-users"></i></span>
                                </a>
                            </li>
                            <li>
                                <a class="tablinks" onclick="openCity(event, 'Paris')">Teacher
                                    <span style=" margin-left: 18px"><i class='fas fa-chalkboard-teacher'></i></span>
                                </a>
                            </li>
                            <li>
                                <a class="tablinks" onclick="openCity(event, 'Tokyo')" href="${pageContext.request.contextPath}/Admin/Manager/Ad?search=&currentPage=1&recordsPerPage=8">Courses
                                    <span style="margin-left: 18px"><i class="fas fa-book-open"></i></span>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div id="page-content-wrapper">
                        <div class="page-content inset">
                            <div class="row" style="height: 600px; margin-top:20px">

<%--TabUser--%>
                                <div style="display: block" id="London" class="tabcontent">
                                    <div class="col-md-12">
                                        <table class="table table-hover">
                                            <div class="contentX">
                                                <h2>User Manager</h2>
                                            </div>

                                            <div class="searchdiv">
                                                <div class="row no-gutters">
                                                    <form action="Admin.jsp">
                                                        <div class="col">
                                                            <input class="form-control border-secondary border-right-0 rounded-0 formX" type="search" name="search">
                                                            <input type="hidden" name="currentPage" value="${currentPage}">
                                                            <input type="hidden" name="recordsPerPage" value="8">
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="btn btn-outline-secondary border-left-0 rounded-0 rounded-right" type="submit">
                                                                <i class="fa fa-search"></i>
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>

                                            <thead>
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">User</th>
                                                <th scope="col">&nbsp</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr style="border-bottom: 2px solid #dee2e6">
                                                <th scope="row">1</th>
                                                <td>Duc</td>
                                                <td class="text-right">
                                                    <a class="btn btn-sm btn-outline-primary"
                                                       href="${pageContext.request.contextPath}/views/vwManager/EditManager.jsp"
                                                       role="button">
                                                        <i class="fas fa-cart-arrow-down"></i>
                                                    </a>
                                                    <a class="btn btn-sm btn-outline-primary"
                                                       href="${pageContext.request.contextPath}/views/vwManager/EditManager.jsp"
                                                       role="button">
                                                        <i class="fas fa-user-edit"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
<%--TabTeacher--%>
                                <div id="Paris" class="tabcontent">
                                    <div class="col-md-12">
                                        <table class="table table-hover">
                                            <div class="contentX">
                                                <h2>Teacher Manager</h2>
                                            </div>

                                            <div class="searchdiv">
                                                <div class="row no-gutters">
                                                    <div class="col">
                                                        <input class="form-control border-secondary border-right-0 rounded-0 formX" type="search" >
                                                    </div>
                                                    <div class="col-auto">
                                                        <button class="btn btn-outline-secondary border-left-0 rounded-0 rounded-right" type="button">
                                                            <i class="fa fa-search"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <thead>
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">User</th>
                                                <th scope="col">&nbsp</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr style="border-bottom: 2px solid #dee2e6">
                                                <th scope="row">1</th>
                                                <td>Duc</td>
                                                <td class="text-right">
                                                    <a class="btn btn-sm btn-outline-primary"
                                                       href="${pageContext.request.contextPath}/views/vwManager/EditManager.jsp"
                                                       role="button">
                                                        <i class="fas fa-folder-open"></i>
                                                    </a>
                                                    <a class="btn btn-sm btn-outline-primary"
                                                       href="${pageContext.request.contextPath}/views/vwManager/EditManager.jsp"
                                                       role="button">
                                                        <i class="fas fa-user-edit"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
<%--All Courses--%>
                           <c:choose>
                                <c:when test="${courses.size()}==0">
                                    <h1>NO DATA</h1>
                                </c:when>
                               <c:otherwise>
                                   <div id="Tokyo" class="tabcontent">
                                       <div class="co-md-12">
                                           <table class="table table-hover">
                                               <div class="contentX">
                                                   <h2>All Course</h2>
                                               </div>
                                               <thead>

                                               <div class="searchdiv">
                                                   <div class="row no-gutters">
                                                       <div class="col">
                                                           <input class="form-control border-secondary border-right-0 rounded-0 formX" type="search">
                                                       </div>
                                                       <div class="col-auto">
                                                           <button class="btn btn-outline-secondary border-left-0 rounded-0 rounded-right" type="button">
                                                               <i class="fa fa-search"></i>
                                                           </button>
                                                       </div>
                                                   </div>
                                               </div>

                                               <tr>
                                                   <th scope="col">ID</th>
                                                   <th scope="col">Course Name</th>
                                                   <th scope="col">Language</th>
                                                   <th scope="col">&nbsp</th>
                                               </tr>
                                               </thead>
                                               <tbody>
                                               <c:forEach var="c" items="${courses}">
                                                   <tr style="border-bottom: 2px solid #dee2e6">
                                                       <th scope="row">${c.course_id}</th>
                                                       <td>${c.course_name}</td>
                                                       <td>${c.course_lessinfo}</td>
                                                       <td class="text-right">
                                                           <a class="btn btn-sm btn-outline-primary"
                                                              href="${pageContext.request.contextPath}/views/vwManager/AddUser.jsp"
                                                              role="button">
                                                               <i class="fas fa-info"></i>
                                                           </a>
                                                           <a class="btn btn-sm btn-outline-primary"
                                                              href="${pageContext.request.contextPath}/views/vwManager/AddUser.jsp"
                                                              role="button">
                                                               <i class="fas fa-edit"></i>
                                                           </a>
                                                       </td>
                                                   </tr>
                                               </c:forEach>
                                               </tbody>
                                           </table>
                                       </div>
                                   </div>
                               </c:otherwise>
                           </c:choose>
                            </div>
                            <div class="pag">
                                <div class="cd-tab-filter-wrapper">
                                    <div class="cd-tab-filter">
                                            <%--                    <ul class="cd-filters">--%>
                                        <ul class="pagination justify-content-center">
                                            <c:if test="${currentPage!=1}">
                                                <li class="page-item"><a class="page-link"
                                                                         href="${pageContext.request.contextPath}/Product/Filter?currentPage=${currentPage-1}&recordsPerPage=8&search=${search}">Previous</a></li>
                                            </c:if>
                                            <c:forEach var="i" begin="1" end="${noOfPages}">
                                                <c:choose>
                                                    <c:when test="${currentPage==i}">
                                                        <li class="page-item"><a class="page-link active" style="color: #007bff">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li class="page-item"><a class="page-link"
                                                                                 href="${pageContext.request.contextPath}/Product/Filter?currentPage=${i}&recordsPerPage=8&search=${search}">${i}</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                            <c:if test="${currentPage!=noOfPages}">
                                                <li class="page-item"><a class="page-link"
                                                                         href="${pageContext.request.contextPath}/Product/Filter?currentPage=${currentPage+1}&recordsPerPage=8&search=${search}">Next</a></li>
                                            </c:if>
                                                <%--                        <li class="placeholder">--%>
                                                <%--                            <a data-type="all" >All</a> <!-- selected option on mobile -->--%>
                                                <%--                        </li>--%>
                                                <%--                        <li class="filter"><a class="selected"  data-type="all">All</a></li>--%>
                                                <%--                        <li class="filter" data-filter=".color-1"><a data-type="color-1">Window</a></li>--%>
                                                <%--                        <li class="filter" data-filter=".color-2"><a data-type="color-2">Web</a></li>--%>
                                        </ul> <!-- cd-filters -->
                                    </div> <!-- cd-tab-filter -->
                                </div> <!-- cd-tab-filter-wrapper -->
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>


        <script>
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("active");
            });

            //changetab
            function openCity(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }

        </script>
    </jsp:body>
</t:main>