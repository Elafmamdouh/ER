<%-- 
    Document   : UpdatepatientMainTeriage2
    Created on : 13/04/2021, 05:59:06 م
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
          String PatintID = request.getParameter("PatintID");
            //int PatintID = Integer.parseInt(PatintID);
            int id= Integer.parseInt(PatintID);
            String HCO3 = request.getParameter("HCO3");
            String Temperature = request.getParameter("Temperature");
            String CO2 = request.getParameter("CO2");
            String BloodPressure = request.getParameter("BloodPressure");
            String OxygenSaturation = request.getParameter("OxygenSaturation");
            String HeartRate = request.getParameter("HeartRate");
            String SO2 = request.getParameter("SO2");
            String Glucose = request.getParameter("Glucose");
            String BaseExcess = request.getParameter("BaseExcess");
            String RespiratoryRate = request.getParameter("RespiratoryRate");
            String ECG = request.getParameter("ECG");
            String PH = request.getParameter("PH");
            String PO2 = request.getParameter("PO2");
            String Chiefcomplain = request.getParameter("Chiefcomplain");
            String CTASscore = request.getParameter("CTASscore");
            String COVIDStatus = request.getParameter("COVIDStatus");
            DB.DB_Connection conn = new DB.DB_Connection();
            int isAdded = conn.MainTraiage(PatintID , HCO3 , Temperature , CO2 , BloodPressure , OxygenSaturation , HeartRate , SO2 ,
            Glucose , BaseExcess , RespiratoryRate , ECG , PH , PO2 , Chiefcomplain , CTASscore , COVIDStatus );
            if(isAdded>0)
                out.print("Patient Main Teriage information updated suessfully");
            else
                out.print("Error");
            conn.close();
            %>
           
    </body>
</html>
