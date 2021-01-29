package controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import beans.course;
import beans.user;
import models.courseModel;
import models.userModel;
import utils.ServletUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.lang.String;
import org.apache.commons.io.FilenameUtils;

@WebServlet(name = "AccountServlet" ,urlPatterns = "/Account/*")
@MultipartConfig(
        fileSizeThreshold = 2 * 1024 * 1024,
        maxFileSize = 50 * 1024 * 1024,
        maxRequestSize = 50 * 1024 * 1024
)
public class AccountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Sign":
                postSign(request, response);
                break;
            case "/Login":
                postLogin(request, response);
                break;
            case "/Logout":
                postLogout(request, response);
                break;
            case "/Profile":
                postProfile(request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
    private void postProfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        List<user> users = userModel.findUserByID(user_id);
        user user = users.get(0);
        if(user.getRole_id() == 1){
            if(request.getParameter("coursename") != null){
                String coursename = request.getParameter("coursename");
                int coursecategory = Integer.parseInt(request.getParameter("coursecategory"));
                String coursefullinfo = request.getParameter("coursefullinfo");
                String courselessinfo = request.getParameter("courselessinfo");
                String courselink = request.getParameter("courselink");
                float courseprice = Float.parseFloat(request.getParameter("courseprice"));
                Date date = new Date();
                int nextCourse_id = courseModel.findNextId();
//                Image
                for (Part part : request.getParts()) {
                    String contentDisp = part.getHeader("content-disposition");
                    String[] items = contentDisp.split(";");
                    for (String s : items) {
                        String tmp = s.trim();
                        if (tmp.startsWith("filename")) {
                            int idx = tmp.indexOf('=') + 2;
                            String filename = tmp.substring(idx, tmp.length() - 1);

                            String targetDir = this.getServletContext().getRealPath("public") + "/../../../src/main/webapp/public/course/" + nextCourse_id + "/";
                            File dir = new File(targetDir);
                            if (!dir.exists()) {
                                dir.mkdir();
                            }
                            filename = nextCourse_id + "." + FilenameUtils.getExtension(filename);
                            String destination = targetDir + filename;
                            System.out.print(filename);
                            part.write(destination);
                        }
                    }
                }
//                /Image
                course course = new course(coursename,coursecategory,coursefullinfo,courselessinfo,courseprice,date,courselink,user_id);
                courseModel.add(course);
                ServletUtils.redirect("/Account/Profile?user_id=" + String.valueOf(user_id), request, response);
            }
            else{
                String user_fullname = request.getParameter("fullname");
                String user_address = request.getParameter("address");
                String user_phone = request.getParameter("phone");
                String user_email = request.getParameter("email");
                String user_bday = request.getParameter("birthday");
                List<course> courses = userModel.getListCourseByUserId(user_id);
                int gender = Integer.parseInt(request.getParameter("Gender"));
                beans.user user1;
                //Image
                String img = null;
                for (Part part : request.getParts()) {
                    String contentDisp = part.getHeader("content-disposition");
                    String[] items = contentDisp.split(";");
                    for (String s : items) {
                        String tmp = s.trim();
                        if (tmp.startsWith("filename")) {
                            int idx = tmp.indexOf('=') + 2;
                            String filename = tmp.substring(idx, tmp.length() - 1);
                            String targetDir2 = this.getServletContext().getRealPath("public") + "/user/" + user_id + "/";
                            String targetDir = this.getServletContext().getRealPath("public") + "/../../../src/main/webapp/public/user/" + user_id + "/";
                            File dir = new File(targetDir);
                            if (!dir.exists()) {
                                dir.mkdir();
                            }
                            filename = user_id + "." + FilenameUtils.getExtension(filename);
                            part.write(targetDir + filename);
                            part.write(targetDir2 + filename);
                            img = filename;
                        }
                    }
                }
                //Image
                if(gender==1||gender==0){
                    user1 = new user(user_id, user_fullname, user_address, user_phone, user_email, "M", user_bday,img);
                }
                else {
                    user1 = new user(user_id, user_fullname, user_address, user_phone, user_email, "F", user_bday,img);
                }
                userModel.update(user1);
                user1.setCourses(courses);
                ServletUtils.redirect("/Account/Profile?user_id=" + user_id, request, response);
            }
        }
        else{
            String user_fullname = request.getParameter("fullname");
            String user_address = request.getParameter("address");
            String user_phone = request.getParameter("phone");
            String user_email = request.getParameter("email");
            String user_bday = request.getParameter("birthday");
            List<course> courses = userModel.getListCourseByUserId(user_id);
            int gender;
            gender = Integer.parseInt(request.getParameter("Gender"));
            beans.user user1;
            //                Image
            String img = null;
            for (Part part : request.getParts()) {
                String contentDisp = part.getHeader("content-disposition");
                String[] items = contentDisp.split(";");
                for (String s : items) {
                    String tmp = s.trim();
                    if (tmp.startsWith("filename")) {
                        int idx = tmp.indexOf('=') + 2;
                        String filename = tmp.substring(idx, tmp.length() - 1);
                        String targetDir2 = this.getServletContext().getRealPath("public") + "/user/" + user_id + "/";
                        String targetDir = this.getServletContext().getRealPath("public") + "/../../../src/main/webapp/public/user/" + user_id + "/";
                        File dir = new File(targetDir);
                        if (!dir.exists()) {
                            dir.mkdir();
                        }
                        filename = user_id + "." + FilenameUtils.getExtension(filename);
                        part.write(targetDir + filename);
                        part.write(targetDir2 + filename);
                        img = filename;
                    }
                }
            }
//                /Image
            if(gender==1||gender==0){
                user1 = new user(user_id, user_fullname, user_address, user_phone, user_email, "M", user_bday,img);
            }
            else {
                user1 = new user(user_id, user_fullname, user_address, user_phone, user_email, "F", user_bday,img);
            }
            userModel.update(user1);
            user1.setCourses(courses);
            ServletUtils.redirect("/Account/Profile?user_id=" + user_id, request, response);
        }
    }
    private void postSign(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_password = request.getParameter("password");
        String bcryptHashString = BCrypt.withDefaults().hashToString(12, user_password.toCharArray());

        String user_username = request.getParameter("username");
        String user_email = request.getParameter("email");
        int role_id = 0;
        user user = new user(user_username, bcryptHashString, user_email, role_id);
        userModel.add(user);
        ServletUtils.redirect("/Home", request, response);
    }

    public void postLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Optional<user> user = userModel.findByUsername(username);
        if (user.isPresent()) {
            BCrypt.Result result = BCrypt.verifyer().verify(password.toCharArray(), user.get().getUser_password());
            if (result.verified) {
                HttpSession session = request.getSession();
                session.setAttribute("auth", true);
                session.setAttribute("authUser", user.get());

                String url = request.getParameter("retUrl");
//                System.out.println(url);
                if (url == null) url = "/Home";
                ServletUtils.redirect(url, request, response);
//                if(retUrl == null) {
//                    ServletUtils.forward("/views/vwHome/Index.jsp", request, response);
//                }
//                RequestDispatcher dispatcher = request.getRequestDispatcher(retUrl);
//                dispatcher.forward(request,response);
            } else {
                request.setAttribute("hasError", true);
                request.setAttribute("errorMessage", "Invalid password.");
                ServletUtils.forward("/views/vwAccount/Login.jsp", request, response);
            }
        } else {
            request.setAttribute("hasError", true);
            request.setAttribute("errorMessage", "Invalid login.");
            ServletUtils.forward("/views/vwAccount/Login.jsp", request, response);
        }
    }

    private void postLogout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("auth", false);
        session.setAttribute("authUser", new user());

        String url = request.getHeader("referer");
        if (url == null)
            url = "/Home";
        ServletUtils.redirect(url, request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Sign":
                ServletUtils.forward("/views/vwAccount/Resign.jsp", request, response);
                break;
            case "/Login":
//                String retUrl = request.getParameter("retUrl");
//                System.out.println(retUrl + " from Get");
//                request.setAttribute("retUrl", retUrl);
                request.setAttribute("hasError", false);
                ServletUtils.forward("/views/vwAccount/Login.jsp", request, response);
                break;
            case "/Profile":
                int user_id = Integer.parseInt(request.getParameter("user_id"));
                Optional<user> u = userModel.findByID(user_id);
                if (u.isPresent()) {
                    List<course> courses;
                    List<user> users = userModel.findUserByID(user_id);
                    user user = users.get(0);
                    if(user.getRole_id() == 0){
                        courses = userModel.getListCourseByUserId(user_id);
                    } else {
                        courses = userModel.getListCourseByTeacherId(user_id);
                        System.out.print("Ok!");
                    }
                    user.setCourses(courses);
                    request.setAttribute("user", user);

                    ServletUtils.forward("/views/vwAccount/Profile.jsp", request, response);
                } else {
                    ServletUtils.forward("/Account/Login", request, response);
                }
                break;
            case "/IsAvailable":
                String username = request.getParameter("user");
                Optional<user> user = userModel.findByUsername(username);
                PrintWriter out = response.getWriter();
                response.setContentType("application/json");
                response.setCharacterEncoding("utf-8");
                out.print(!user.isPresent());
                out.flush();
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
