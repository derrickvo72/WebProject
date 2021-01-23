package controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import beans.user;
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
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
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

    private void postLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
                ServletUtils.forward("/views/vwAccount/Profile.jsp", request, response);
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
