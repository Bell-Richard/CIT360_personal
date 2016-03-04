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
     <title>Update Owner</title>
</head>
<body>
<center>
     <div id="container">
         <h1>Update Owner Information</h1>
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
         <br/>
         <br/>
         
        <form method="post" action="UpdateOwnerServlet" id="loginform">
		<div style="padding: 100px 0 0 250px;">
		<div id="login-box">
		<br/>
		 Fill in the form below to update an Owner record
		<br/>
		<br/>
        <div id="login-box-name" style="margin-top:20px;">Owner ID:</div>
		<div id="login-box-field" style="margin-top:20px;">
		<input name="id" class="form-login" title="id" value="" size="30" maxlength="48" />
		</div>
		<div id="login-box-name" style="margin-top:20px;">First Name:</div>
		<div id="login-box-field" style="margin-top:20px;">
		<input name="firstName" class="form-login" title="firstName" value="" size="30" maxlength="48" />
		</div>
		<div id="login-box-name">Last Name:</div>
		<div id="login-box-field">
		<input name="lastName" class="form-login" title="lastName" value="" size="30" maxlength="48" />
		</div>
		<div id="login-box-name">Gender</div>
		<div id="login-box-field">
		<input name="gender" class="form-login" title="gender" value="" size="30" maxlength="48" />
		</div>
		<br />
		<br />
		<input style="margin-left:100px;" type="submit" value="Submit" />
        </form>
     </div>
    </center>
</body>
</html>
