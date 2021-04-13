
import DB.DB_Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author elafmamdouh
 */
public class DB_ConnectionUpdateOrDelPatient {
    
public int UpdatePatientMainTeriage(String PatintID , String HCO3 , String Temperature , String CO2 , String BloodPressure , String OxygenSaturation , String HeartRate , String SO2 ,
String Glucose , String BaseExcess , String RespiratoryRate , String ECG , String PH , String PO2 , String Chiefcomplain , String CTASscore , String COVIDStatus ){
sqlQuery = "Update Patient Main Teriage set PatintID = ? , HCO3 = ? , Temperature = ? , CO2 = ? , BloodPressure = ? , OxygenSaturation = ? , HeartRate = ? , SO2 = ? ,  \n" +
" Glucose = ? , BaseExcess = ? , RespiratoryRate = ? , ECG = ? , PH = ? , PO2 = ?  , Chiefcomplain = ? , CTASscore = ? , COVIDStatus = ? WHERE PatientID = " + PatientID;
int i=0;
try {
preparedStmt = connection.prepareStatemnt(sqlQuery);
preparedStmt.setString(1,firstName);

i = preparedStmt.executeUpdate();
}
catch(SQLException e){
e.printStackTrace();
}
return i;
}
public void close(){
try{
connection.close
}
catch(SQLException ex){
Logger.getLogger(DB_Connection.class.getName()).log(Level.SEVERE, null, ex);
}
}

  
public int UpdatePatientInforamtion(firstName , middleName , lastName , EnglishfirstName , EnglishmiddleName , EnglishlastName  , ID , Email , phonenumber , DateOfBirth ,address , MaritalStatus , gender ,  
          Religion , Language , Nationality){
sqlQuery = "Update Patient Information set firstName = ? , middleName = ? , lastName = ? , EnglishfirstName = ?, EnglishmiddleName = ? , EnglishlastName = ? , ID = ? , Email = ? , phonenumber = ? , DateOfBirth = ? ,address = ? , MaritalStatus = ? , gender = ? ,  \n" +
"          Religion = ? , Language = ? , Nationality = ? WHERE PatientID = " + PatientID;
int i=0;
try {
preparedStmt = connection.prepareStatemnt(sqlQuery);
preparedStmt.setString(1,firstName);

i = preparedStmt.executeUpdate();
}
catch(SQLException e){
e.printStackTrace();
}
return i;
}
public void close(){
try{
connection.close
}
catch(SQLException ex){
Logger.getLogger(DB_Connection.class.getName()).log(Level.SEVERE, null, ex);
}
}


}

