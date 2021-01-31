<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="course" scope="request" type="beans.course"/>
<jsp:useBean id="authUser" scope="session" type="beans.user"/>

<t:main>
    <jsp:body>
        <style><%@include file="/WEB-INF/css/PostCourse.css"%></style>

        <section class="row form_study" style="padding-top:5rem;padding-bottom:15px; width: 100%;">
            <div class="wrapper wrapper--w790 col-md-5" style="padding-right: 5px" >
                <div class="card card-5" style="width: 100%;height: 100%;">
                    <div class="card-heading">
                        <h2 class="title">Course</h2>
                    </div>
                    <div class="card-body row course" style="width: 100%; padding:0;">
                        <div  class="col-md-12 example" >
                            <img class="displayed" src="https://www.w3schools.com/css/paris.jpg " alt="Paris"
                                 style="width:80%">
                        </div>
                        <div class="col-md-12 courseList">
                            <div class="form-row" id="Lessions">
                                <div class="changeLession">
                                    <button onclick="getCourse()" class="btn-cus btn--radius-2 btn--blue" id="AddLess" type="submit">&ensp;Add Lessions&ensp;</button>
                                </div>
                            </div>
                            <ul id="list" style="width:100%; max-height: 200px; border: 4px solid #e5e5e5">
                                <li id="create" style="display: none">
                                    <input class="lessionName" type="text">
                                    <button  onclick="delCourse(this)" style="justify-items: end" class="btn-cus btn--radius-2 btn--red" type="submit">Delete</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <div class="wrapper wrapper--w790 col-md-7" style="padding-left:5px">
                <div class="card card-5">
                    <div class="card-heading">
                        <h2 class="title">Post your course</h2>
                    </div>
                    <div class="card-body">
                        <form method="POST" id="frmAddCourse" enctype="multipart/form-data">
                            <input type="hidden" name="user_id" value="${authUser.user_id}">
                            <input type="hidden" name="course_id" value="${course.course_id}">
                            <div class="form-row">
                                <div class="name">Thumbnail's course</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input style="line-height: 50px" type="file" class="custom-file-input input--style-5" id="customFile" name="img">
                                        <label style="background-color: #e5e5e5;top: 50%;" class="custom-file-label" for="customFile" >Choose file</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Course's name</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="course_name">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Summary</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="course_lessinfo">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Category</div>
                                    <%--                                <label for="select_form" class="name">Subject</label>--%>
                                <div class="value">
                                    <div class="input-group ">
                                        <select class="form-control round " style="height: 50px;" id="category">
                                            <option value="1">Window</option>
                                            <option value="2">Web</option>
                                            <option value="3">Design</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row" >
                                <div class="name">Detail</div>
                                <div class="value">
                                    <div class="input-group">
                                        <textarea class="input--style-5" style="width:100%" name="course_fullinfo"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Price</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="course_price">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div style="display: flex;justify-content:flex-end; ">
                                    <button style="margin: 5px 2px 5px 0;" class="btn btn--radius-2 btn--red" type="submit">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- <div class="page-wrapper bg-gra-03 p-t-45 p-b-50 col-md-7">

            </div> -->
        </section>

        <script>
            function getCourse(){
                // var value = $("#Course_Name").innerHTML;
                // $(".lessionName")[0].val = $("#Course_Name").val();
                var lessioninput = $("#create")[0].outerHTML;
                $lessioninput = $(lessioninput);
                $lessioninput.children("input").attr("name","lessions");
                $lessioninput.children("input").attr("form","frmAddCourse");
                $lessioninput.removeAttr("style");
                // $lessioninput.closest("input").attr("value",document.getElementById("Course_Name").value)
                $lessioninput.appendTo($("#list"));
            }
            function delCourse(element){
                $(element).closest("li").remove();
            }
        </script>
    </jsp:body>

</t:main>