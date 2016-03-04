<%@page import="java.util.List"%>
<%@page import="com.service.LoginService"%>
<%@page import="java.util.Date"%>
<%@page import="com.login.model.User"%>
<%@page import="com.login.model.Owner"%>
<%@page import="com.service.AddOwnerService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link rel="stylesheet" type="text/css" href="css/style.css"/>
     <title>List Owner</title>
</head>
<body>
<center>
     <div id="container">
         <h1>Owner List</h1>
             <b></b><br/>
             <%=new Date()%></br>
             <%
                 User user = (User) session.getAttribute("user");
             %>     
             <b>Welcome <%= user.getFirstName() + " " + user.getLastName()%></b>     
             <br/>
             <a href="logout.jsp">Logout</a>
             <a href="OwnerMenu.jsp">Return to Owner Menu</a>
         </p>
 
         <table>
             <thead>
                 <tr>
                     <th>ID</th>
                     <th>First Name</th>
                     <th>Last Name</th>
                     <th>Gender</th>                
                 </tr>
             </thead>
             <tbody>
                 <%
                     AddOwnerService addOwnerService = new AddOwnerService();
                     List<Owner> list = addOwnerService.getListOfOwners();
                     for (Owner u : list) {
                 %>
                 <tr>
                     <td><%=u.getId()%></td>
                     <td><%=u.getFirstName()%></td>
                     <td><%=u.getLastName()%></td>
                     <td><%=u.getGender()%></td>
                 </tr>
                 <%}%>
             <tbody>
         </table>    
         <br/>
     </div>
    </center>
</body>
</html>
