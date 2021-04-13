<%-- 
    Document   : UpdatePatientInfo2
    Created on : 13/04/2021, 06:13:20 م
    Author     : elafmamdouh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <%
   String firstName = request.getParameter("firstName");
   String middleName = request.getParameter("middleName");
   String lastName = request.getParameter("lastName");
   String EnglishfirstName = request.getParameter("EnglishfirstName");
   String EnglishmiddleName = request.getParameter("EnglishmiddleName");
   String EnglishlastName = request.getParameter("EnglishlastName");
   int ID = Integer.parseInt(ID);
   String Email = request.getParameter("Email");
   int phonenumber = Integer.parseInt(phonenumber);
   String DateOfBirth = request.getParameter("DateOfBirth");
   String address = request.getParameter("address");
    String MaritalStatus = request.getParameter("MaritalStatus");
   String gender = request.getParameter("gender");
   String Religion = request.getParameter("Religion");
   String Language = request.getParameter("Language");
   String Nationality = request.getParameter("Nationality");
   DB.DB_Connection conn = new DB.DB_Connection();
   boolean isAdded = conn.Patient(firstName , middleName , lastName , EnglishfirstName , EnglishmiddleName , EnglishlastName  , ID , Email , phonenumber , DateOfBirth ,address , MaritalStatus , gender ,  
          Religion , Language , Nationality );
            if(isAdded>0)
                out.print("Patient information updated suessfully");
            else
                out.print("Error");
            conn.close();
        %>


    </body>
</html>
