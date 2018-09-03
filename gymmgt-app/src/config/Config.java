/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

/**
 *
 * @author Anuruddha
 */
public class Config {

    //database connection
    public static String host = "jdbc:mysql://localhost:3306";
    public static String db = "gymmgt";
    public static String uname = "root";
    public static String password = "root";

    //report paths
    public static String invoicePath = "./invoice.jrxml";
    public static String detailedMemberReportPath = "./DetailedMemberReport.jrxml";
    public static String planA = "./PlanA.jrxml";
    public static String planB = "./PlanB.jrxml";
    public static String planC = "./PlanC.jrxml";
    
}
