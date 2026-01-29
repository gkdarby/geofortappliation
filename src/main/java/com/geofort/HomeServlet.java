package com.geofort;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // Example backend logic
        String appName = "GeoFort Web Application";
        String serverTime = java.time.LocalDateTime.now().toString();

        // Make values available to JSP (if you use JSP later)
        req.setAttribute("appName", appName);
        req.setAttribute("serverTime", serverTime);

        // Forward to your frontend page
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}

