<%-- 
    Document   : DB_connection_UpdatePatientForms
    Created on : 13/04/2021, 06:27:44 م
    Author     : elafmamdouh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <% 
DB.DB_Connection user = new DB.DB_Connection();
ResultSet result user.getPatient();
        %>
        <table border="1">
            <tbody>

                <tr>
                    <td>name</td>
                    <td>action</td>
                </tr>
                <% while(result.next()) { %>
                <tr>
                    <td><%= result.getString("firstName")%></td> 

                    <td>
                    <td><a href="UpdatePatientInfo.jsp?ID=<%=result.getInt("IDNumber")%>"> Update Patint Information </a> |
                        <a href="UpdatepatientMainTeriage.jsp?ID=<%=result.getInt("IDNumber")%>"> Update Patient Main Teriage </a> |  
                        <a href="deletePateint.jsp?ID=<%=result.getInt("PatientID")%>"> Delete </a>
                    </td>

                </tr>
                <% } 
user.clode(); 
                %>
            </tbody>

        </table>
    </body>
</html>
