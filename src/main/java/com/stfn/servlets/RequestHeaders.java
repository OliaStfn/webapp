package com.stfn.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Enumeration;

/**
 * Created by Олюнь on 03.09.2017.
 */
@WebServlet(name = "RequestHeaders")
public class RequestHeaders extends HttpServlet {

    public void init() throws ServletException {
        System.out.println("-------------------------------------------------------------");
        System.out.println(" init method is called for "+this.getClass().getName());
        System.out.println("-------------------------------------------------------------");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setIntHeader("Refresh",25);
        LocalDateTime time = LocalDateTime.now();


        PrintWriter show=response.getWriter();
        String title="Request headers list";
        show.print("<html>\n" +
                "<head><title>"+title+"</title></head>\n" +
                "<body>" +
                "<table border=\"1\" width=\"50%\" align=\"center\">\n"+
                "<tr><th>Header</th><th>Value</th></tr>\n");
        Enumeration headers=request.getHeaderNames();
        while (headers.hasMoreElements()){
            String headerName= (String) headers.nextElement();
            show.print("<tr><td>"+ headerName+"</td>\n");
            String headerValue=request.getHeader(headerName);
            show.print("<td>"+ headerValue+"</td></tr>\n");
        }
        show.print("<tr><td>Time</td>\n");
        show.print("<td>"+ time.toString()+"</td></tr>\n");
        show.print("</table></body></html>");
       // RequestDispatcher requestDispatcher = request.getRequestDispatcher("requestheaders.jsp");
       // requestDispatcher.forward(request, response);
    }

}
