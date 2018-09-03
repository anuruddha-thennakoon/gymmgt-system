# Gym Management System

This is a sample gym management software gives you an all-in-one place to manage memberships, manage inventory,manage plans and make all admin easy.

## Getting Started

* [Installation](#installation)
* [Running the application](#running-the-application)
* [Demo](#demo)

## Installation

* Add dependencies jar files in lib folder
* Set relevant paths in gymmgt-app\src\config\Config.java
```
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
```
* Restore gymmgt.sql using any tool or cmd.yoy can use following command if you are using cmd.
```
[mysql dir]/bin/mysql -u username -ppassword databasename < /database/gymmgt.sql
```
* Clean and build the project
## Running the application

Run the gymmgt-app.jar file in gymmgt-app\dist using following command
```
java -jar "gymmgt-app\dist\auditor-app.jar"
```

Use "admin" for both username and password in initial login

## Demo

![login](https://hyj4jw.dm.files.1drv.com/y4moQfl3TslyyJMaoGmhEXIfTLyU42cvn2Kd0ZRepJZLXTTySTG9zl3Trs47tCfMrtJgoYTkzNbEmfJe5wJrAUhEIUwiwDZiU7ZpR5pQLabgGeq7DhlMpqpplqmEH2e7MC7Vgxgi40OJLf2n-Z_ir4SQqkrMLfkGEPW0nApCGQoFOwAwZt2YJXEV4OJ-X6o1WCqbrFcZiHrHSKV9RG3_xwOzQ?width=400&height=230&cropmode=none)
![Home](https://hyldsg.dm.files.1drv.com/y4mLrFDUAckkfsqMOGN0KrXsI_0rMmp202RgdGyHoapgCXYL2otJCH2sT2RQnQJuaBcWZIaR0RXG5scXUCDG592MEj4debcHHpDg4CQOuXtpQvv82hssgf6IwT8X7KWjOqtxgtLQqQKOSjbjLXaUvopuRK-guTzsyR0xO5A5g8SkoF69QswyHXytIxb8sfMQZCJPtBzjF5dLpva5CTfcM9GEg?width=1366&height=728&cropmode=none)
![CRSub](https://hyjcpg.dm.files.1drv.com/y4mYOWH5eo2f9rbnhd3U2lgcroCeaPF3dihXRMRrJpqi1JCqdS3HkfRG5f1-ub89LjeXSU4DkWEluH53HGmvUaQuTEyavDoZidsPhd9BOx9HEX_cFjnCZauD-t2rS9bGJ7-UJKWnNqxod_xdpbzfAtq8JFMMB33wLgQh7fZgptyKr75HLtBAXnlG3AXW6beg0xvVov1l2mCJME987iTD48GiA?width=1366&height=728&cropmode=none)
![CR](https://hyjqbg.dm.files.1drv.com/y4muie7QxNBmaCtGW_AyzFcvA06tfhKER0EYc7bFQJNSQt44Ffvg3BAKQn0NCXqD2zLfRfC0Ggpnqqjzmspk5XanwBFaE8lRRJBzGW-PW5whkcdwdT_8MHJHn3xu6yW6_ZKQFlL335xmbKUtCY4PBwEMjr4elW4GYCEwuSMdUCEMBFQYnItk3cy8VOWQ74iNDgMCWtb5n-h80RuVMRlP2TZ0Q?width=1366&height=728&cropmode=none)
