package com.stfn.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Олюнь on 10.09.2017.
 */
@WebServlet(name = "TimerResultController")
public class TimerResultController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setIntHeader("Refresh",1);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("resulttimerpage.jsp");
        requestDispatcher.forward(request, response);
    }
}
