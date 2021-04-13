
<%@ page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Or Delete Patient</title>
    </head>
    <body>
        <%
            if(session.getAttribute("username") != null ){
                DB.DB_Connection user = new DB.DB_Connection();
                ResultSet result = user.getPatient();
              %>
              <h1><a href="logout.jsp"> log out</h1>

              <table border="1">
                  <tbody>
                      <tr>
                          <td>name</td>
                          <td> Action </td>
                      </tr>
                      <% while(result.next()) { %>
                      <tr>
                          <td><%= result.getString("firstName")%></td>
                              <td><a href="UpdatePatientInfo.jsp?ID=<%=result.getInt("IDNumber")%>"> Update Patient Main Teriage </a> | 
                              <td><a href="UpdatepatientMainTeriage.jsp?ID=<%=result.getInt("IDNumber")%>"> Update Patient Information</a> | 
                          <a href="deletePateint.jsp?ID=<%=result.getInt("PatientID")%>"> Delete </a>
                          </td>
                      </tr>
                      <% } 
                      user.close();
            }
            else
                response.sendRedirect("login.jsp");
    %>
                 
                  </tbody>
              </table>
    </body>
</html>

