package controllers;



import beans.course;
import beans.take;
import beans.user;
import models.courseModel;
import models.userModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "HomeServlet",urlPatterns = "/Home/*")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path= request.getPathInfo();
        if(path==null || path.equals("/")){
            path="/Index";
        }
        switch (path){
            case"/Index":
                List<course> list = courseModel.getAll();
                request.setAttribute("courses", list);
                ServletUtils.forward("/views/vwHome/Index.jsp",request,response);
                break;
            case "/Login":
                ServletUtils.forward("/views/vwAccount/Login.jsp",request,response);
                break;
            case "/Sign":
                ServletUtils.forward("/views/vwAccount/Resign.jsp",request,response);
                break;
            case "/User":
                ServletUtils.forward("/views/vwHome/User.jsp",request,response);
                break;
            case "/Profile":
                ServletUtils.forward("/views/vwAccount/Profile.jsp",request,response);
                break;
            case "/Buy":
                int courseid = Integer.parseInt(request.getParameter("course_id"));
                int userid = Integer.parseInt(request.getParameter("user_id"));
                if (userid != 0) {
                    Optional<take> take = courseModel.gettake(userid, courseid);
                    if (!take.isPresent()) {
                        courseModel.takes(userid, courseid);
                    }
                }
                System.out.print("aaaaaaaaAAAAAAA");
                ServletUtils.redirect("/Home/Index",request,response);
                break;
            case "/Detail":
                int course_id = Integer.parseInt(request.getParameter("course_id"));
                List<course> courses = courseModel.findCourseByCourseId(course_id);
                System.out.print(courses.get(0).getCourse_id());
                course course = courses.get(0);
                System.out.print("course get ok");
                request.setAttribute("course", course);
                System.out.print("course add ok");
                ServletUtils.forward("/views/vwProduct/Details.jsp",request,response);
                break;
            case "/Filter":
                ServletUtils.forward("/views/vwProduct/Filter.jsp",request,response);
                break;
            case "/Cart":
                int user_id = Integer.parseInt(request.getParameter("user_id"));
                Optional<user> u = userModel.findByID(user_id);
                if (u.isPresent()) {
                    List<course> cartcourses = userModel.getListCartCourseByUserId(user_id);
                    List<user> users = userModel.findUserByID(user_id);
                    user user = users.get(0);
                    user.setCartcourses(cartcourses);
                    request.setAttribute("user", user);
                    ServletUtils.forward("/views/vwHome/Cart.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Account/Login", request, response);
                }
                break;
            default:
                ServletUtils.redirect("/views/vwHome/404.jsp",request,response);
                break;
        }
    }
}
