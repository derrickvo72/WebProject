package controllers;

import beans.category;
import beans.course;
import beans.user;
import models.categoryModel;
import models.courseModel;
import models.userModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "AdminServlet", urlPatterns = "/Admin/Manager/*")
public class AdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String path = request.getPathInfo();
        //Truong hop duoc doPost
        switch (path) {
            case "/Add":
//                addCategory(request,response);
                break;
            case "/Delete":
//                deleteCategory(request,response);
                break;
            case "/Update":
//                updateCategory(request,response);
                break;
            default:
                ServletUtils.redirect("/NotFound",request,response);
                break;
        }

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
            case "/User":
                ServletUtils.forward("/views/vwHome/User.jsp",request,response);
                break;
            case "/Profile":
                ServletUtils.forward("/views/vwAccount/Profile.jsp",request,response);
                break;
            case "/Add":
                ServletUtils.forward("/views/vwProduct/AddCourse.jsp",request,response);
                break;
            case "/Ad":
                int currentPage = 1, recordsPerPage = 2;
                if(request.getParameter("currentPage")!=null){
                    currentPage = Integer.parseInt(request.getParameter("currentPage"));
                }
                int rows = 0;
                int id = Integer.parseInt(request.getParameter("id"));
                if(id == 1) {
                    List<user> users = userModel.getAll(currentPage,recordsPerPage);
                    rows = userModel.getNumberOfRowsAll();
                    int nOfPages = rows / recordsPerPage;
                    if (nOfPages % recordsPerPage > 0) {
                        nOfPages++;
                    }
                    request.setAttribute("noOfPages", nOfPages);
                    request.setAttribute("currentPage", currentPage);
                    request.setAttribute("users", users);
                }
                request.setAttribute("id", id);
                ServletUtils.forward("/views/vwManager/Admin2.jsp",request,response);
                break;
            case "/Plus":
                ServletUtils.forward("/views/vwManager/AddUser.jsp",request,response);
                break;
            case "/Edit":
                ServletUtils.forward("/views/vwManager/EditManager.jsp",request,response);
                break;
            default:
                ServletUtils.redirect("/views/vwHome/404.jsp",request,response);
                break;
        }
    }
}
    