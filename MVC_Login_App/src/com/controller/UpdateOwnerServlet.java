package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.login.model.Owner;
import com.service.AddOwnerService;

 
public class UpdateOwnerServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     response.setContentType("text/html;charset=UTF-8");
     PrintWriter out = response.getWriter();
     String id = request.getParameter("id");
     String firstName = request.getParameter("firstName");
     String lastName = request.getParameter("lastName");
     String gender = request.getParameter("gender");
     Owner owner = new Owner(firstName,lastName, gender);
          
     try { 
         AddOwnerService addOwnerService = new AddOwnerService();
         boolean result = addOwnerService.addOwner(owner);      
         out.println("<html>");
         out.println("<head>");      
         out.println("<title>Updated Owner Successful</title>");    
         out.println("</head>");
         out.println("<body>");
         out.println("<center>");
         if(result){
             out.println("<h1>Owner updated Successfully:</h1>");
             out.println("To return to the Owner Management Menu <a href=OwnerMenu.jsp>Click here</a>");
         }else{
             out.println("<h1>Update of Owner Failed</h1>");
             out.println("To try again<a href=AddNewOwner.jsp>Click here</a>");
         }
         out.println("</center>");
         out.println("</body>");
         out.println("</html>");
     } finally {       
         out.close();
     }
}
 
}
