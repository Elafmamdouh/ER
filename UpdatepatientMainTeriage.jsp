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
        <title>Update Patient Main Teriage</title>
    </head>

    <body>
       <%
                String PatintID = request.getParameter("PatintID"); 
                DB.DB_Connection user = new DB.DB_Connection();
                ResultSet result = user.getPatientMainTeriage(Integer.parseInt(PatintID));
                if(result.next()){
            String PatintID = result.getString(PatintID);
            String HCO3 = result.getString("HCO3");
            String Temperature = result.getString("Temperature");
            String CO2 = result.getString("CO2");
            String BloodPressure = result.getString("BloodPressure");
            String OxygenSaturation = result.getString("OxygenSaturation");
            String HeartRate = result.getString("HeartRate");
            String SO2 = result.getString("SO2");
            String Glucose = result.getString("Glucose");
            String BaseExcess = result.getString("BaseExcess");
            String RespiratoryRate = result.getString("RespiratoryRate");
            String ECG = result.getString("ECG");
            String PH = result.getString("PH");
            String PO2 = result.getString("PO2");
            String Chiefcomplain = result.getString("Chiefcomplain");
            String CTASscore = result.getString("CTASscore");
            String COVIDStatus = result.getString("COVIDStatus");
              %>
        
        <table style="background-color: white; margin-right:auto; margin-left:auto;">
            <tbody>
                <tr>
                    <td>

                        <h1>Update Patient Main Teriage Information</h1>
                        <br>


                        <form name="UpdatepatientMainTeriage" action="UpdatepatientMainTeriage2.jsp" method="POST">
                            <table border="0">
                                <tbody>

                                    <tr>
                                        <td>Patient ID</td>
                                        <td><input type="text" name="PatintID" value="<%= PatintID%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>HCO3</td>
                                        <td><input type="text" name="HCO3" value="<%= HCO3%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>Temperature</td>
                                        <td><input type="text" name="Temperature" value="<%= Temperature%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>CO2</td>
                                        <td><input type="text" name="CO2" value="<%= CO2%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>Blood Pressure</td>
                                        <td><input type="text" name="BloodPressure" value="<%= BloodPressure%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>Oxygen Saturation</td>
                                        <td><input type="text" name="OxygenSaturation" value="<%= OxygenSaturation%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>Heart Rate</td>
                                        <td><input type="text" name="HeartRate" value="<%= HeartRate%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>SO2</td>
                                        <td><input type="text" name="SO2" value="<%= SO2%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>Glucose</td>
                                        <td><input type="text" name="Glucose" value="<%= Glucose%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>Base Excess</td>
                                        <td><input type="text" name="BaseExcess" value="<%= BaseExcess%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>Respiratory Rate</td>
                                        <td><input type="text" name="RespiratoryRate" value="<%= RespiratoryRate%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>ECG</td>
                                        <td><input type="text" name="ECG" value="<%= ECG%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>PH</td>
                                        <td><input type="text" name="PH" value="<%= PH%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>PO2</td>
                                        <td><input type="text" name="PO2" value="<%= PO2%>" size="30" /></td>
                                    </tr>                       <tr>
                                        <td>Chiefcomplain</td>
                                        <td><input type="text" name="Chiefcomplain" value="<%= Chiefcomplain%>" size="30" /></td>
                                    </tr> 
                                    <tr>
                                        <td>CTAS score</td>
                                        <td><input type="text" name="CTASscore" value="<%= CTASscore%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>Is it Covid19 patient?</td>
                                        <td><select name="COVIDStatus">
                                                <option>No</option>
                                                <option>Yes</option>
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
