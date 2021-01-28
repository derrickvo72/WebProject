<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:main>
    <jsp:body>
        <style>
            <%@include file="/WEB-INF/css/PostCourse.css"%>
        </style>

        <section style="padding-top: 5rem; margin-bottom: 5rem">
            <div style="border:2px solid red; background-color: yellow" class="container-fluid">
                <div class="row" style="padding: 1rem">

                    <div class="col-md-6">
                        <div style="border: 2px solid black" class="col-md-12 example">
                            <img class="displayed" src="https://www.w3schools.com/css/paris.jpg " alt="Paris"
                                 style="width:80%">
                        </div>
                        <div style="border: 2px solid black" class="col-md-12 courseList">
                            <h4>Bài giảng khóa học</h4>
                            <ul>
                                <li>
                                    <a href="#">Khoa hoc 1</a>
                                </li>
                                <li>
                                    <a href="#">Khoa hoc 2</a>
                                </li>
                                <li>
                                    <a href="#">Khoa hoc 3</a>
                                </li>
                                <li>
                                    <a href="#">Khoa hoc 4</a>
                                </li>
                            </ul>
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="row infoCourse">
                        <div style="border: 2px solid black" class="col-md-3">
                            <ul>
                                <li><h4>Id</h4></li>
                                <li><h4>Tên Khóa học</h4></li>
                                <li><h4>Mô tả</h4></li>
                                <li><h4>Tài liệu</h4></li>
                                <li><h4>Gía</h4></li>
                                <li><h4>Ngày tạo</h4></li>
                                <li><h4>Ngày sửa</h4></li>
                                <li><h4>Tên giáo viên</h4></li>
                                <li><h4>Đánh giá</h4></li>
                            </ul>
                        </div>

                        <div style="border: 2px solid black" class="col-md-9">
                            <ul>
                                <li>
                                    <form>
                                        <div class="form-row">
                                            <div class="col-7">
                                                <input type="text" class="form-control" placeholder="City">
                                            </div>
                                        </div>
                                    </form>
                                </li>
                                <li>b</li>
                                <li>a</li>
                                <li>a</li>
                                <li>a</li>
                                <li>a</li>
                                <li>a</li>
                                <li>a</li>
                            </ul>
                        </div>
                    </div>
                    </div>


                </div>
            </div>
        </section>

    </jsp:body>

</t:main>