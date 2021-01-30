package controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import beans.user;
import models.SendEmail;
import models.userModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

@WebServlet("/OTPServlet")
public class OTPServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        PrintWriter out = response.getWriter();
//        out.print("Hello " + email);
        SendEmail sm = new SendEmail();
        String otpcode = sm.getRandom();
        Boolean result = sm.sendEmail(email,otpcode);
        if(!(result==false)) {
            out.print(otpcode);
        } else {
            out.print("no");
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String email = request.getParameter("email");
            System.out.println(email + " from Get");
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            response.setHeader("Cache-control", "no-cache, no-store");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "-1");

            response.setHeader("Access-Control-Allow-Origin", "*");
            response.setHeader("Access-Control-Allow-Methods", "POST");
            response.setHeader("Access-Control-Allow-Headers", "Content-Type");
            response.setHeader("Access-Control-Max-Age", "86400");

            SendEmail sm = new SendEmail();
            String otpcode = sm.getRandom();
            Boolean result = sm.sendEmail(email,otpcode);
//            if(result!=false){
//                response.setContentType("text/plain");
//                response.setCharacterEncoding("UTF-8");
            response.getWriter().write("yes");
//            }
            out.println("yes");
            out.close();
        } catch (Exception ex) {
            ex.printStackTrace();
//            System.exit(0);
        }
//        doPost(request, response);
    }
}
