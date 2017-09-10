package com.stfn.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

/**
 * Created by Олюнь on 29.08.2017.
 */
@WebServlet(name = "CheckBox")
public class CheckBox extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String[] arr= request.getParameterValues("subscription");
        int price=0;
        for(int i=0;i<arr.length-1;i++){
            price+=Integer.parseInt(arr[i]);
        }
        price*=Integer.parseInt(request.getParameter("quantity"));
        request.setAttribute("price",price);

       /* Enumeration enumeration =request.getParameterNames();
        PrintWriter show=response.getWriter();
        while (enumeration.hasMoreElements()){
            Object obj=enumeration.nextElement();
            String param=(String)obj;
            String value=request.getParameter(param);
            show.println("Parameter Name is '"+param+"' and Parameter Value is '"+value+"'");
        }
        show.close();*/

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("checkbox.jsp");
        requestDispatcher.forward(request, response);
        doPost(request,response);
    }
}
