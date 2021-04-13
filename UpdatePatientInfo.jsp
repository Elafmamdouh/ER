<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                background-image: url("Back3.png");
                background-attachment:fixed;
                background-size:cover;
            }   
            ul {

                list-style-type: none;
                margin: 0;
                padding: 10px;
                overflow: hidden;
                background-color: white;

            }
            li {
                float: left;
            }
            li a {
                border-radius: 25px;
                display: block;
                color: Black;
                font-size: 20px;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                margin-left: 20px;
            }
            li a:hover {
                background-color: #C5C2C2;
            }

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Patient Information</title>
    </head>

    <body>
        <%
                 String PatintID = request.getParameter("PatintID"); 
                 DB.DB_Connection user = new DB.DB_Connection();
                 ResultSet result = user.getPatientInfo(Integer.parseInt(PatintID));
                 if(result.next()){
    String PatintID = result.getString(PatintID);
    String  firstNmae = result.getString("firstNmae");
    String  firstNmae = result.getString("middleNmae");
    String  firstNmae = result.getString("lastNmae");
    String EnglishfirstName = result.getString("EnglishfirstName");
    String EnglishmiddleName = result.getString("EnglishmiddleName");
    String EnglishlastName = result.getString("EnglishlastName");
    int ID = result.getInt(ID);
    String Email = result.getString("Email");
    int phonenumber = result.getInt(phonenumber);
    String DateOfBirth = result.getString("DateOfBirth");
    String address = result.getString("address");
     String MaritalStatus = result.getString("MaritalStatus");
    String gender = result.getString("gender");
    String Religion = result.getString("Religion");
    String Language = result.getString("Language");
    String Nationality = result.getString("Nationality");
        %>
                 
        
        <table style="background-color: white; margin-right:auto; margin-left:auto;">
            <tbody>
                <tr>
                    <td>

                        <h1>Update Patient Information</h1>
                        <br>


                        <form name="UpdatePatientInfo" action="UpdatePatientInfo2.jsp" method="POST">
                            <table border="0">
                                <tbody>

                                    <tr>
                                        <td>Arabic First Name</td>
                                        <td><input type="text" name="firstNmae" value="<%= firstNmae%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>Arabic Middle Name</td>
                                        <td><input type="text" name="middleNmae" value="<%= middleNmae%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>Arabic Last Name</td>
                                        <td><input type="text" name="LastName" value="<%= LastName%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>English First Name</td>
                                        <td><input type="text" name="EnglishfirstNmae" value="<%= EnglishfirstNmae%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>English Name</td>
                                        <td><input type="text" name="EnglishmiddleName" value="<%= EnglishmiddleName%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>English Name</td>
                                        <td><input type="text" name="EnglishlastName" value="<%= EnglishlastName%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>ID</td>
                                        <td><input type="text" name="ID" value="<%= ID%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td><input type="Email" name="Email" value="<%= Email%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>phonenumber</td>
                                        <td><input type="text" name="phonenumber" value="<%= phonenumber%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>Date of birth</td>
                                        <td><input type="text" name="DateOfBirth" value="<%= DateOfBirth%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td><input type="text" name="address" value="<%= address%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>Marital Status</td>
                                        <td><input type="text" name="MaritalStatus" value="<%= MaritalStatus%>" size="30" /></td>
                                    </tr>

                                    <tr>
                                        <td>Gender</td>
                                        <td><select name="gender">
                                                <option>male</option>
                                                <option>Female</option>
                                            </select></td>
                                    </tr>

                                    <tr>
                                        <td>Religion</td>
                                        <td><select name="Religion">
                                                <option>Muslim</option>
                                                <option>Other</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Language</td>
                                        <td><select name="Language">
                                                <option>Arabic</option>
                                                <option>Other</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Nationality</td>
                                        <td><select name="Nationality">
                                                <option>Saudi</option>
                                                <option>not Saudi</option>
                                            </select></td>
                                    </tr>

                                    <tr>
                                        <td><input type="submit" name="Update" value="Update"/>
                                        <td><input type="reset" name="Clear" value="Clear"/>

                                    </tr>
                            </table>
                        </form>
                                    <% } 
                user.close();
                %>

                        <br>                 
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
