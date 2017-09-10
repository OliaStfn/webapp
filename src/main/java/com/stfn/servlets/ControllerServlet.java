package com.stfn.servlets;

import com.stfn.beans.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.GregorianCalendar;

/**
 * Created by Олюнь on 27.08.2017.
 */
@WebServlet(name = "ControllerServlet")
public class ControllerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            String login = request.getParameter("login");
            String password = request.getParameter("password");
            String name=request.getParameter("name");
            String surname=request.getParameter("surname");
            GregorianCalendar bornOfDate=new GregorianCalendar(Integer.parseInt(request.getParameter("year")),
                    Integer.parseInt(request.getParameter("month")),Integer.parseInt(request.getParameter("day")));
            User user = new User();
            user.setLogin(login);
            user.setPassword(password);
            user.setName(name);
            user.setSurname(surname);
            request.setAttribute("user",user);

            if(user.getPassword().equals(request.getParameter("repeat-password"))) {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("personalpage.jsp");
                requestDispatcher.forward(request, response);
            }
        } catch (NumberFormatException e) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("errorpage.jsp");
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("errorpage.jsp");
            requestDispatcher.forward(request, response);
        } catch (IOException e) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("errorpage.jsp");
            requestDispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

