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
            case "/Learn":
                ServletUtils.forward("/views/vwProduct/Lession.jsp",request,response);
                break;
            case "/Add":
                ServletUtils.forward("/views/vwProduct/AddCourse.jsp",request,response);
                break;
            default:
                ServletUtils.redirect("/views/vwHome/404.jsp",request,response);
                break;
        }
    }
}
