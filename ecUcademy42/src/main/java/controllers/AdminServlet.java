package controllers;

import beans.category;
import beans.course;
import beans.user;
import models.categoryModel;
import models.courseModel;
import models.userModel;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
                updateCategory(request,response);
                break;
            default:
                ServletUtils.redirect("/NotFound",request,response);
                break;
        }

    }
    private void updateCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        if(id!=2){
            int userid = Integer.parseInt(request.getParameter("userid"));
            int role = Integer.parseInt(request.getParameter("role"));
            userModel.updaterole(userid,role);
            List<user> users = userModel.findUserByID(userid);
            user user = users.get(0);
            request.setAttribute("user", user);
            request.setAttribute("id",id);
            ServletUtils.forward("/views/vwManager/EditManager.jsp",request,response);
        } else {
            int courseid = Integer.parseInt(request.getParameter("courseid"));
            int deactive = Integer.parseInt(request.getParameter("deactive"));
            courseModel.updateStatus(courseid,deactive);
            List<course> courses = courseModel.findCourseByCourseId(courseid);
            course course = courses.get(0);
            request.setAttribute("course", course);
            request.setAttribute("id",id);
            ServletUtils.forward("/views/vwManager/EditManager.jsp",request,response);
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
                int currentPage = 1, recordsPerPage = 15;
                if(request.getParameter("currentPage")!=null&&request.getParameter("currentPage")!=""){
                    currentPage = Integer.parseInt(request.getParameter("currentPage"));
                }
                int rows = 0;
                int id = 0;
                if(request.getParameter("id")!=null&&request.getParameter("id")!=""){
                    id = Integer.parseInt(request.getParameter("id"));
                }
                if(id != 2) {
                    List<user> users = userModel.getAll(id, currentPage,recordsPerPage);
                    rows = userModel.getNumberOfRowsAll(id);
                    int nOfPages = rows / recordsPerPage;
                    if (nOfPages % recordsPerPage > 0) {
                        nOfPages++;
                    }
                    request.setAttribute("noOfPages", nOfPages);
                    request.setAttribute("currentPage", currentPage);
                    request.setAttribute("users", users);
                } else {
                    List<course> courses = courseModel.paginationCourse(currentPage,recordsPerPage);
                    rows = courseModel.getNumberOfRowsAll();
                    int nOfPages = rows / recordsPerPage;
                    if (nOfPages % recordsPerPage > 0) {
                        nOfPages++;
                    }
                    request.setAttribute("noOfPages", nOfPages);
                    request.setAttribute("currentPage", currentPage);
                    request.setAttribute("courses", courses);
                }
                request.setAttribute("id", id);
                ServletUtils.forward("/views/vwManager/Admin2.jsp",request,response);
                break;
            case "/Delete":
                int iddelete = Integer.parseInt(request.getParameter("id"));
                if(iddelete!=2){
                    int user_id = Integer.parseInt(request.getParameter("user_id"));
                    userModel.delete(user_id);
                } else {
                    int course_id = Integer.parseInt(request.getParameter("course_id"));
                    courseModel.delete(course_id);
                }
                request.setAttribute("id", iddelete);
                ServletUtils.forward("/views/vwManager/Admin2.jsp",request,response);
                break;
            case "/Edit":
                int idd = Integer.parseInt(request.getParameter("id"));
                if(idd!=2) {
                    int user_id = Integer.parseInt(request.getParameter("user_id"));
                    Optional<user> u = userModel.findByID(user_id);
                    if (u.isPresent()) {
                        List<user> users = userModel.findUserByID(user_id);
                        user user = users.get(0);
                        request.setAttribute("user", user);
                        request.setAttribute("id",idd);
                        ServletUtils.forward("/views/vwManager/EditManager.jsp",request,response);
                    }
                } else {
                    int course_id = Integer.parseInt(request.getParameter("course_id"));
                    Optional<course> c = courseModel.findByID(course_id);
                    if (c.isPresent()) {
                        List<course> courses = courseModel.findCourseByCourseId(course_id);
                        course course = courses.get(0);
                        request.setAttribute("course", course);
                        request.setAttribute("id",idd);
                        ServletUtils.forward("/views/vwManager/EditManager.jsp",request,response);
                    }
                }
                request.setAttribute("id",idd);
//                ServletUtils.redirect("/views/vwManager/Admin2.jsp",request,response);
                break;
            default:
                ServletUtils.redirect("/views/vwHome/404.jsp",request,response);
                break;
        }
    }
}
    