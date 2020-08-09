<%--
    Document   : index
    Created on : 15 Dec, 2019, 9:56:46 PM
    Author     : Nishant Kumar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <style>
            body 
            {
                background:url(Omshanti.jpg)no-repeat center center/cover;
                height: 600px;
                width: 1410px;
                /*background-color: magenta;*/
                size:100px;
                background-size: 100%;
                background-size: cover;
            }
            .internal	
            {
                height:300px;
                width:800px;
                margin-left:8cm;
               /* background-color: red;*/
            }
            .fonttext
            {
               text-decoration: none;
               font-family: arial;
               color: lightcyan;
               font-size: 1cm;
               font-style: oblique;
               padding-left: 40px;
               opacity: 30%;
            }
            .font1
            {
                color:#cacac3;
                text-align:right;
                font-style: bold;
                font-size: 70px; 
                font-family:cursive;
            }
            .font2
            {
                color:magenta;
                text-align:right;
                font-style: italic;
                font-size: 50px; 
            }
             .title
            {
                color:orange;
                font-style: italic;
                font-size: 30px;
                padding: 40px;
                line-height: 50px;
            }
            .navi
            {
                height: 50px;
                width: 1510px;
                background-color:lightcyan;
                border-radius: 100px;
                border:4px solid orange;
                opacity: 60%;
                z-index: -1;
            }
            .navi2
            { 
                background:url(Omshanti.jpg)  ;
                background-size: 100%;
                height:17cm;
                width:40cm;
                margin-left: -8px;
                margin-bottom: -35px;
            }
            nav ul li
            {
                list-style-type: non;
                display: inline-block;
                line-height:25px; 
            }
            nav ul
            {
                float: right;
                margin-right: 50px;
            }
            nav ul li a
            {
                color:lightred;
                padding: 20px;
                text-decoration: none;
                font-size:25px;  
            }
            a:hover
            {
                background-color: silver;
                color: graytext;
                padding-top: 15px;
                padding-bottom: 8px;
                border-radius: 25px;
            }
             .reserve
            {
                width:120px;
                height:30px;
                margin:30px;
                padding:400px,20;
                color:white;
                border-radius:20px;
                background-color: darkorange;
                opacity: 100%;
            }
            .checkIn
            {
                width:120px;
                height:30px;
                margin:30px;
                padding:400px,20;
                color:white;
                border-radius:20px;
                background-color: darkblue;
                opacity: 100%;
            }
              .checkIng
            {
                width:120px;
                height:30px;
                margin:30px;
                padding:400px,20;
                color:white;
                border-radius:20px;
                background-color: yellowgreen;
                opacity: 100%;
            }
            .checkOut
            {
                width:120px;
                height:30px;
                margin:30px;
                padding:400px,20;
                color:white;
                border-radius:20px;
                background-color: darkgoldenrod;
                opacity: 100%;
            }
            .menuTable
            {
                padding-left: 2cm;
            }
     </style>
    </head>
    <body>
    <font class="font1"><center>Online Hotel Booking System</center></font>
        <div class="navi">
            <nav>
                <ul>
                     <li><a href="#">Home</a></li>
                    <li><a href="#">Room</a></li>
                      <li><a href="#">Contact</a></li>
                     <li><a href="index2.html">Gallery</a></li>
                      <li><a href="#">About us</a></li>
                      <li><a href="#">Profile</a></li>
                </ul>
            </nav>
            <font class="title">   Nishant Sharma IIMT(Aligarh)</font> 
             
        </div>
        <div class="navi2">
            <br><font class="font2" ><center><marquee behavior="alternate">Stay With Relax</marquee></center></font>
            <div class="internal">
                <font class="fonttext">Spend Quality  Holidays <br>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;With&nbspLuxury Experience
                <table class="menuTable">
                    <tr>
                        <th>
                            <form mathod="post" action="Reserve.jsp"><input type="submit" value="Reserve"class="reserve"> </form>  
                        </th>
                        <th>
                             <form action="ArrivalDate.jsp"><input type="submit" value="CheckIng" class="checkIng"></form>
                        </th>
                         <th>
                             <form action="CheckIn.jsp"><input type="submit" value="CheckIn" class="checkIn"></form>
                        </th>
                        <th>
                        <form action="CheckOut.jsp"><input type="submit" value="CheckOut" class="checkOut"></form> 
                        </th>
                    </tr>
                </table>
            </div>
        </div>
      </body>
</html>


<%-- 
    Document   : index
    Created on : 15 Dec, 2019, 9:56:46 PM
    Author     : Nishant Kumar


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body 
            {
                background:url(Omshanti.jpg);
                height: 650px;
                width: 1410px;
                /*background-color: magenta;*/
                size:100px;
                background-size: 100%;
                background-size: cover;
                margin-bottom: 3cm;
            }
            .fonttext
            {
                text-decoration: none;
                font-family: arial;
                color: lightcyan;
                font-size: 1cm;
                font-style: oblique;
                padding-left: 40px;
                opacity: 30%;
            }
            .font1
            {
                color:yellow;
                text-align:right;
                font-style: bold;
                font-size: 80px; 
            }
            .font2
            {
                color:magenta;
                text-align:right;
                font-style: italic;
                font-size: 50px; 
            }
            .title
            {
                color:orange;
                font-style: italic;
                font-size: 30px;
                padding: 40px;
                line-height: 50px;
            }
            .navi
            {
                height: 50px;
                width: 1510px;
                background-color:lightcyan;
                border-radius: 100px;
                border:4px solid orange;
                opacity: 60%;
            }
            .navi2
            { 
                /*background:url(Omshanti.jpg);*/
                background-color: red;
                background-size: 100%;
                height:17cm;
                width:40cm;
                margin-left: -8px;
                margin-bottom: -35px;
            }
            nav ul li
            {
                list-style-type: non;
                display: inline-block;
                line-height:25px; 
            }
            nav ul
            {
                float: right;
                margin-right: 50px;
            }
            nav ul li a
            {
                color:lightred;
                padding: 20px;
                text-decoration: none;
                font-size:25px;  
            }
            a:hover
            {
                background-color: silver;
                color: graytext;
                padding-top: 15px;
                padding-bottom: 8px;
            }
            .reserve
            {
                width:120px;
                height:30px;
                margin:30px;
                padding:400px,20;
                color:white;
                border-radius:20px;
                background-color: darkorange;
                opacity: 100%;
            }
            .checkIn
            {
                width:120px;
                height:30px;
                margin:30px;
                padding:400px,20;
                color:white;
                border-radius:20px;
                background-color: darkblue;
                opacity: 100%;
            }
            .checkOut
            {
                width:120px;
                height:30px;
                margin:30px;
                padding:400px,20;
                color:white;
                border-radius:20px;
                background-color: darkgoldenrod;
                opacity: 100%;
            }
            .menuTable
            {
                padding-left: 2cm;
            }
            .date
            {
                height: 385px;
                width: 530px;
                background-color: ;
                margin-left: 15cm;
                margin-top: -5cm;
            }
            .internal	
            {
                height:400px;
                width:1100px;
                margin-top: 2cm;
                margin-left:5cm;
                background-color: ;
            }
            .textArival
            {
                width: 4cm;
                height: 20px;
                border-radius: 50px;
                font-size: 20px;
                font-family: serif;
                font-weight: bold;
                color:magentayellow; 
                background-color: darkorange;
            }
            .DateFont
            {    
                color: white;
                font-size: 20px;
                opacity: 500%;
            }
        </style>
    </head>
    <body>
    <font class="font1"><center>Welcome in Lajwab Family Hotel</center></font>
        <%--    <div class="navi">
                <nav>
                    <ul>
                         <li><a href="#">Home</a></li>
                        <li><a href="#">Room</a></li>
                          <li><a href="#">Contact</a></li>
                         <li><a href="index2.html">Gallery</a></li>
                          <li><a href="#">About us</a></li>
                          <li><a href="#">Profile</a></li>
                    </ul>
                </nav>
                <font class="title">   Nishant Sharma IIMT(Aligarh)</font> 
                 
    </div>-

    <font class="font2" ><center><marquee behavior="alternate">Stay With Relax</marquee></center></font>
    <div class="internal">
        <font class="fonttext">Spend Quality  Holidays <br>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;With&nbspLuxury Experience
        <table class="menuTable">
            <tr>
                <th>
            <form mathod="post" action="Reserve.jsp"><input type="submit" value="Reserve"class="reserve"> </form>  
            </th>
            <th>
            <form ><input type="submit" value="Login" class="checkIn"></form>
            </th>
            </tr>
        </table>
        <div class="date">
            <%--    <font class="font2" ><center><marquee behavior="alternate">Select Date</marquee></center></font>-
            <table>
                <tr>
                    <th align="right" class="DateFont">Arrival_Date:</th>
                    <th ><input type="date"  name="TxtArrivalDate"  class="textArival"> 
                </tr>
                <tr>
                    <th align="right" class="DateFont">Departure_Date:</th>
                    <th ><input type="date" name="TxtDepartureDate"  class="textArival"> </th>
                </tr>
                <tr>
                    <th>
                                <form mathod="post" action="Reserve.jsp"><input type="submit" value="Reserve"class="reserve"> </form>  
            </th>
                </tr>
            </table>
        </div>
    </div>


</body>
</html>
            --%>
