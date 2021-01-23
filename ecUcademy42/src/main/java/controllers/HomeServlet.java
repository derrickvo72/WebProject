package controllers;



import beans.course;
import models.courseModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

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
                ServletUtils.forward("/views/vwHome/login.jsp",request,response);
                break;
            case "/Sign":
                ServletUtils.forward("/views/vwHome/Resign.jsp",request,response);
                break;
            case "/User":
                ServletUtils.forward("/views/vwHome/User.jsp",request,response);
                break;
            case "/Profile":
                ServletUtils.forward("/views/vwHome/Profile.jsp",request,response);
                break;
            case "/Detail":
                ServletUtils.forward("/views/vwProduct/Details.jsp",request,response);
                break;
            case "/Filter":
                ServletUtils.forward("/views/vwProduct/Filter.jsp",request,response);
                break;

            default:
                ServletUtils.redirect("/views/vwHome/404.jsp",request,response);
                break;
        }
    }
}
