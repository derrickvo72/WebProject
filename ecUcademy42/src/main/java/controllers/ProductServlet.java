package controllers;

import beans.course;
import beans.take;
import beans.user;
import models.courseModel;
import models.takeModel;
import models.userModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Enumeration;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "ProductServlet",urlPatterns = "/Product/*")
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Detail":
                postComment(request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }

    private void postComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try {
        int rating = Integer.parseInt(request.getParameter("rating"));
        int userid = Integer.parseInt(request.getParameter("userid"));
        int courseid = Integer.parseInt(request.getParameter("courseid"));
        String comment = request.getParameter("comment");
        if(comment==null) comment="";
        //  Datetime now
        LocalDateTime myDateObj = LocalDateTime.now();
        DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
            String formattedDate = myDateObj.format(myFormatObj);
        takeModel.rating(userid,courseid,rating,comment,formattedDate);
        String url = request.getParameter("retUrl");
        if (url == null) url = "/Home";
        ServletUtils.redirect(url, request, response);
    }
    catch (Exception e){
        String url = request.getParameter("retUrl");
        if (url == null) url = "/Home";
        ServletUtils.redirect(url, request, response);
    }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path= request.getPathInfo();
        switch (path){
            case "/Buy":
                int courseid = Integer.parseInt(request.getParameter("course_id"));
                int userid = Integer.parseInt(request.getParameter("user_id"));
                if (userid != 0) {
                    Optional<take> take = takeModel.gettake(userid, courseid);
                    if (!take.isPresent()) {
                        takeModel.takes(userid, courseid);
                    }
                }
                ServletUtils.redirect("/Home/Index",request,response);
                break;
            case "/Detail":

                String str=request.getRequestURL()+"?";
                Enumeration<String> paramNames = request.getParameterNames();
                while (paramNames.hasMoreElements())
                {
                    String paramName = paramNames.nextElement();
                    String[] paramValues = request.getParameterValues(paramName);
                    for (int i = 0; i < paramValues.length; i++)
                    {
                        String paramValue = paramValues[i];
                        str=str + paramName + "=" + paramValue;
                    }
                    str=str+"&";
                    str.substring(0, str.lastIndexOf("&"));
                }
                System.out.println(str.substring(0,str.length()-1));

                int course_id = Integer.parseInt(request.getParameter("course_id"));
                List<course> courses = courseModel.findCourseByCourseId(course_id);
                System.out.print(courses.get(0).getCourse_id());
                course course = courses.get(0);
                List<take> takes = takeModel.getAllByCourseId(course_id);
                course.setTakes(takes);
                request.setAttribute("course", course);
                request.setAttribute("urlwithid", str);
                ServletUtils.forward("/views/vwProduct/Details.jsp",request,response);
                break;
            case "/Filter":
                String keyword = request.getParameter("search");
                List<course> coursess = courseModel.fulltextsearch(keyword);
                System.out.print(coursess.get(0).getCourse_name());
                request.setAttribute("courses",coursess);
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
                    ServletUtils.forward("/views/vwProduct/Cart.jsp", request, response);
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
