package controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import beans.course;
import beans.user;
import models.courseModel;
import models.userModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "AccountServlet" ,urlPatterns = "/Account/*")
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
//                System.out.println(request.getParameter("coursename"));
                String coursename = request.getParameter("coursename");
                int coursecategory = Integer.parseInt(request.getParameter("coursecategory"));
                String coursefullinfo = request.getParameter("coursefullinfo");
                String courselessinfo = request.getParameter("courselessinfo");
                String courselink = request.getParameter("courselink");
                float courseprice = Float.parseFloat(request.getParameter("courseprice"));
                Date date = new Date();
                course course = new course(coursename,coursecategory,coursefullinfo,courselessinfo,courseprice,date,courselink);
                courseModel.add(course);
                ServletUtils.redirect("/Account/Profile?user_id=" + String.valueOf(user_id), request, response);
            }
            else{
                String user_fullname = request.getParameter("fullname");
                String user_address = request.getParameter("address");
                String user_phone = request.getParameter("phone");
                String user_email = request.getParameter("email");
                Date user_birthday = new Date();
                SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                try {
                    user_birthday = formatter.parse(request.getParameter("birthday"));
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                List<course> courses = userModel.getListCourseByUserId(user_id);
                int gender = Integer.parseInt(request.getParameter("sex"));
                if(gender==1||gender==0){
                    user user1 = new user(user_id, user_fullname, user_address, user_phone, user_email, "M",user_birthday);
                    userModel.update(user1);
                    user1.setCourses(courses);
                }
                else {
                    user user1 = new user(user_id, user_fullname, user_address, user_phone, user_email, "F",user_birthday);
                    userModel.update(user1);
                    user1.setCourses(courses);
                }
                ServletUtils.redirect("/Account/Profile?user_id=" + String.valueOf(user_id), request, response);
            }
        }
        else{
            String user_fullname = request.getParameter("fullname");
            String user_address = request.getParameter("address");
            String user_phone = request.getParameter("phone");
            String user_email = request.getParameter("email");
            Date user_birthday = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            try {
                user_birthday = formatter.parse(request.getParameter("birthday"));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            List<course> courses = userModel.getListCourseByUserId(user_id);
            int gender = Integer.parseInt(request.getParameter("sex"));
            if(gender==1||gender==0){
                user user1 = new user(user_id, user_fullname, user_address, user_phone, user_email, "M",user_birthday);
                userModel.update(user1);
                user1.setCourses(courses);
            }
            else {
                user user1 = new user(user_id, user_fullname, user_address, user_phone, user_email, "F",user_birthday);
                userModel.update(user1);
                user1.setCourses(courses);
            }
            ServletUtils.redirect("/Account/Profile?user_id=" + String.valueOf(user_id), request, response);
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

                String url = (String) session.getAttribute("retUrl");
                if (url == null) url = "/Home";
                ServletUtils.redirect(url, request, response);
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
        if (url == null) url = "/Home";
        ServletUtils.redirect(url, request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Sign":
                ServletUtils.forward("/views/vwAccount/Resign.jsp", request, response);
                break;
            case "/Login":
                request.setAttribute("hasError", false);
                ServletUtils.forward("/views/vwAccount/Login.jsp", request, response);
                break;
            case "/Profile":
                int user_id = Integer.parseInt(request.getParameter("user_id"));
                Optional<user> u = userModel.findByID(user_id);
                if (u.isPresent()) {
                    List<course> courses = userModel.getListCourseByUserId(user_id);
                    List<user> users = userModel.findUserByID(user_id);
                    user user = users.get(0);
                    user.setCourses(courses);
                    request.setAttribute("user", user);

                    ServletUtils.forward("/views/vwAccount/Profile.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Account/Login", request, response);
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
