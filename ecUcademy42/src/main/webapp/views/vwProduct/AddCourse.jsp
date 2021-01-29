<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:main>
    <jsp:body>
        <style>
            <%@include file="/WEB-INF/css/PostCourse.css"%>
        </style>

<<<<<<< Updated upstream
        <section class="row form_study" style="padding-top:5rem;padding-bottom:15px; width: 100%;">
            <div class="wrapper wrapper--w790 col-md-5" style="padding-right: 5px" >
                <div class="card card-5" style="width: 100%;height: 100%;">
                    <div class="card-heading">
                        <h2 class="title">Course</h2>
                    </div>
                    <div class="card-body row course" style="width: 100%; padding:0;">
                        <div style="padding-top: 10px; margin-left: 10px"  class="col-md-12 example" >
                            <img class="displayed" src="https://www.w3schools.com/css/paris.jpg " alt="Paris"
                                 style="width:80%">
                        </div>
                        <div style="margin-left: 15px" class="col-md-12 courseList">
=======
        <section class="row" style="padding-top:5rem;padding-bottom:15px; width: 100%; height:100%" >
            <div class="wrapper wrapper--w790 col-md-6" style="margin: 0;padding-right: 0;"  >
                <div class="card card-5" style="width: 100%;">
                    <div class="card-heading">
                        <h2 class="title">Course</h2>
                    </div>
                    <div class="card-body row" style="width: 100%; padding:0">
                        <div  class="col-md-12 example" style="margin-top: 30px ;">
                            <img class="displayed" src="https://www.w3schools.com/css/paris.jpg " alt="Paris"
                                 style="width:80%">
                        </div>
                        <div class="col-md-12 courseList">
>>>>>>> Stashed changes
                            <h4>Bài giảng khóa học</h4>
                            <div style="margin-top: 18px" class="form-row" id="Lessions">
                                <div class="lessionInput" id="inpLession">
                                    <div class="input-group">
                                        <input id="Course_Name"  class="input--style-5" type="text" placeholder="Content Lession" name="company">
                                    </div>
                                </div>
                                <div class="changeLession">
                                        <button onclick="getCourse()" class="btn-cus btn--radius-2 btn--blue" id="AddLess" type="submit">&ensp;ADD&ensp;</button>
                                </div>

                            </div>
                            <ul id="list" style="width:100%; max-height: 150px; border: 4px solid #e5e5e5">
                                <li id="create" style="display: none">
                                        <div  class="lessionName" id="lessionName"><%--                                            <a id="lessName" class="lessName" href="#"></a>--%>
                                        </div>
                                        <button  onclick="delCourse(this)" style="justify-items: end" class="btn-cus btn--radius-2 btn--red" type="submit">Delete</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

<<<<<<< Updated upstream
            </div>
            <div class="wrapper wrapper--w790 col-md-7" style="padding-left:5px">
=======
                </div>

            </div>
            <div class="wrapper wrapper--w790 col-md-6" style="margin: 0;padding: 0 0 0 0;" >
>>>>>>> Stashed changes
                <div class="card card-5">
                    <div class="card-heading">
                        <h2 class="title">Post your course</h2>
                    </div>
                    <div class="card-body">
                        <form method="POST">
<<<<<<< Updated upstream
                            <div class="form-row m-b-25" style="position: relative">
                                <div class="name" style="transform: translateY(-30px);">Date modify</div>
                                <div class="value">
                                    <div class="row row-space">
                                        <div class="col-4">
                                            <div class="input-group-desc">
                                                <input  class="input--style-5" type="text" name="last_name">
                                                <label style="margin-top: 30px;" class="label--desc">Id</label>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="input-group-desc">
                                                <input  class="input--style-5" type="text" name="last_name">
                                                <label  style="margin-top: 30px;" class="label--desc">Date release</label>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="input-group-desc">
                                                <input  class="input--style-5" type="text" name="last_name">
                                                <label  style="margin-top: 30px;"  class="label--desc">Date updated</label>
=======
                            <div class="form-row m-b-55">
                                <div class="name">Ten KH</div>
                                <div class="value">
                                    <div class="row row-space">
                                        <div class="col-6">
                                            <div class="input-group-desc">
                                                <input  class="input--style-5" type="text" name="first_name">
                                                <label class="label--desc">Ten khoa hoc</label>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="input-group-desc">
                                                <input  class="input--style-5" type="text" name="last_name">
                                                <label class="label--desc">last name</label>
>>>>>>> Stashed changes
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
<<<<<<< Updated upstream
                                <div class="name">Author's name</div>
=======
                                <div class="name">Ten Tg</div>
>>>>>>> Stashed changes
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="company">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
<<<<<<< Updated upstream
                                <div class="name">Email contact</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="company">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Thumbnail's course</div>
                                <div class="value">
                                    <div class="input-group">
                                            <%--                                        <input class="input--style-5" type="text" name="company">--%>
                                        <input style="line-height: 50px" type="file" class="custom-file-input input--style-5" id="customFile" name="filename">
                                        <label style="background-color: #e5e5e5;top: 50%;" class="custom-file-label" for="customFile" >Choose file</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Course's name</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="company">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Lession's name</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="company">
=======
                                <div class="name">Email</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="email" name="email">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row m-b-55">
                                <div class="name">Phone</div>
                                <div class="value">
                                    <div class="row row-refine">
                                        <div class="col-3">
                                            <div class="input-group-desc">
                                                <input class="input--style-5" type="text" name="area_code">
                                                <label class="label--desc">Area Code</label>
                                            </div>
                                        </div>
                                        <div class="col-9">
                                            <div class="input-group-desc">
                                                <input class="input--style-5" type="text" name="phone">
                                                <label class="label--desc">Phone Number</label>
                                            </div>
                                        </div>
>>>>>>> Stashed changes
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
<<<<<<< Updated upstream
                                <div class="name">Language</div>
<%--                                <label for="select_form" class="name">Subject</label>--%>
                                <div class="value">
                                    <div class="input-group ">
                                        <select class="form-control round " style="height: 50px;" id="select_form">
                                            <option>Web</option>
                                            <option>Mobile</option>
                                            <option>C#</option>
                                            <option>C++</option>
                                            <option>Java</option>
=======
                                <label for="select_form"  class="name">Subject</label>
                                <div class="value">
                                    <div class="input-group ">
                                        <select class="form-control input--style-5" style="height: 50px;" id="select_form">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
>>>>>>> Stashed changes
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row" >
<<<<<<< Updated upstream
                                <div class="name">Detail</div>
=======
                                <div class="name">Company</div>
>>>>>>> Stashed changes
                                <div class="value">
                                    <div class="input-group">
                                        <textarea class="input--style-5" style="width:100%"></textarea>
                                    </div>
                                </div>
                            </div>
<<<<<<< Updated upstream
                            <div class="form-row">
                                <div class="name">Price</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="company">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Rating</div>
                                <div class="value">
                                    <span style="color: #ff9f1a" class="fas fa-star checked"></span>
                                    <span style="color: #ff9f1a" class="fas fa-star checked"></span>
                                    <span style="color: #ff9f1a" class="fas fa-star checked"></span>
                                    <span style="color: #ff9f1a" class="fas fa-star"></span>
                                    <span style="color: #ff9f1a" class="fas fa-star-half-alt"></span>
                                </div>
                            </div>
                            <div class="form-row m-b-55" style="position: relative">
                                <div class="name" style="transform: translateY(-30px);">Phone</div>
                                <div class="value">
                                    <div class="row row-refine">
                                        <div class="col-3">
                                            <div class="input-group-desc">
                                                <input class="input--style-5" type="text" name="area_code">
                                                <label style="margin-top: 30px;" class="label--desc">Area Code</label>
                                            </div>
                                        </div>
                                        <div class="col-9">
                                            <div class="input-group-desc">
                                                <input class="input--style-5" type="text" name="phone">
                                                <label style="margin-top: 30px;" class="label--desc">Phone Number</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row p-t-20">
                                <label class="label label--block">Are you sure you want to post?</label>
=======
                            <div class="form-row p-t-20">
                                <label class="label label--block">Are you an existing customer?</label>
>>>>>>> Stashed changes
                                <div class="p-t-15">
                                    <label class="radio-container m-r-55">Yes
                                        <input type="radio" checked="checked" name="exist">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">No
                                        <input type="radio" name="exist">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
<<<<<<< Updated upstream
                        </form>
                    </div>
                    <div style="display: flex;justify-content:flex-end; ">
                        <button style="margin: 5px 2px 5px 0;" class="btn btn--radius-2 btn--red" type="submit">Save</button>
=======
                            <div>
                                <button class="btn btn--radius-2 btn--red" type="submit">Save</button>
                            </div>
                        </form>
>>>>>>> Stashed changes
                    </div>
                </div>
            </div>
            <!-- <div class="page-wrapper bg-gra-03 p-t-45 p-b-50 col-md-7">

            </div> -->
        </section>

<<<<<<< Updated upstream
<script>
    function getCourse(){
        // var value = $("#Course_Name").innerHTML;
        $("#lessionName")[0].innerHTML = document.getElementById("Course_Name").value;
        var lessioninput = $("#create")[0].outerHTML;
        $lessioninput = $(lessioninput);
        $lessioninput.removeAttr("style");
        $lessioninput.appendTo($("#list"));
    }
    function delCourse(element){
        $(element).closest("li").remove();
    }
</script>
=======

>>>>>>> Stashed changes
    </jsp:body>

</t:main>