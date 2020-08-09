<%-- 
    Document   : ArrivalDate
    Created on : 25 Feb, 2020, 7:28:25 PM
    Author     : Vivek
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var="datasource" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:XE" user="system" password="omshanti"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body 
        {
            background:url(Nishant44.jpeg);
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
        .font3
        {    
            color: white;
            font-size: 20px;
            opacity: 500%;
        }
        .font1
        {
            color:yellow;
            text-align:right;
            font-style: bold;
            font-size: 80px; 
        }
        .textdesign
        {
            border-radius: 50px;
            width:5cm;
            height: 20px;
            font-weight: 50%px;
            font-style: inherit;
            font-size: 20px;
            border-color: green;
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

            margin-left: 15cm;
            margin-top: -5.5cm;

        }
        .internal	
        {
            height:400px;
            width:1100px;
            margin-top: 2cm;
            margin-left:5cm;

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
        menuTable,th,td
        {
            padding: 10px;
        }
        .font1
        {
            color:gainsboro;
            text-align:right;
            font-style: bold;
            font-family: inherit;
            font-size: 60px; 
        }
        video
        {
            display: inline-block;
            pointer-events: non;
            cursor: none;
            height: 400px;
            width: 600px;
            border-radius: 10px;
        }
        .video
        {
            height: 400px;
            width: 600px;
            cursor: none;
            margin-left: 18cm;
            margin-top: -15cm;

        }
        .main
        {
            height: 650px;
            width: 1410px;
            margin-left: 3cm;
            alignment-adjust: central;
            margin-left:10cm;
            margin-top: 20px;

        </style>
        <body> 
                            <font class="font1"><center>Dreams Comes True In This Hotel</center></font>

            <div class="main">
                <form mathod="post" action="" >     
                    <table>
                        <tr>
                            <th align="right" class="font3">Enter Adhar_Numbar:</th>
                            <th><input type="text" class="textdesign"  name="txtAdhar" value="<c:out value="${param.Adhar}"/>"></th>
                        </tr>
                        <tr>
                            <th>
                                <c:set var="d" value="${param.txtAdhar}"/>
                                <sql:query dataSource="${datasource}" var="result">SELECT GUEST_NAME,MOBILE_NO,EMAIL_ID,ARRIVAL_DATE
                                    ,DEPARTURE_DATE,GUEST_FREQUENCY,GUEST_STATE,ROOM_TYPE,BOOKING_ID,ROOM_NUMBER FROM EMPJAVA WHERE ADHAR_NO='<c:out value="${param.txtAdhar}"/>'</sql:query>
                                <c:forEach var="rs" items="${result.rows}">    
                                    <%--  <input type="text"  class="textdesign"  name="bookId" value="<c:out value="${rs.GUEST_NAME}"/>">--%>

                                </th>
                            </tr>
                            <tr>
                                <th align="right" class="font3">Booking_Id:</th>

                                <th>  <input type="text"  class="textdesign" readonly=""  name="bookId" value="<c:out value="${rs.BOOKING_ID}"/>"></th>

                            </tr>
                            <tr>
                                <th align="right" class="font3">Name:</th>
                                <th><input type="text"  class="textdesign" readonly=""  name="txtName" value="<c:out value="${rs.GUEST_NAME}"/>"></th>
                            </tr>
                            <tr>
                                <th align="right" class="font3">Mobile_Number:</th>
                                <th><input type="text" class="textdesign" readonly=""  name="txtMobile" value="<c:out value="${rs.MOBILE_NO}"/>"></th>
                            </tr>
                            <tr>
                                <th align="right" class="font3">Email_ID:</th>
                                <th><input type="text"  class="textdesign" readonly=""  name="txtEmail" value="<c:out value="${rs.EMAIL_ID}"/>"></th>
                            </tr>
                            <tr>
                                <th align="right" class="font3">Arrival_Date:</th>
                                <th ><input type="text" class="textdesign" readonly=""   name="txtArrivalDate"  class="textArival" value="<c:out value="${rs.ARRIVAL_DATE}"/>"> 
                            </tr>
                            <tr>
                                <th align="right" class="font3">Departure_Date:</th>
                                <th ><input type="text" class="textdesign" readonly=""  name="txtDepartureDate"  class="textArival" value="<c:out value="${rs.DEPARTURE_DATE}"/>"> </th>
                            </tr>
                            <tr>
                                <th align="right" class="font3" >Room_Type:</th>
                                <td><input type="text" class="textdesign" readonly=""  name="roomtype"  class="textArival" value="<c:out value="${rs.ROOM_TYPE}"/>">
                                </td>
                            </tr>
                            <tr>
                                <th align="right" class="font3">Numbers of Guest:</th>
                                <td><input type="text" class="textdesign" readonly=""  name="txtGuest"  class="textArival" value="<c:out value="${rs.GUEST_FREQUENCY}"/>">
                                </td>
                            </tr>
                            <tr>
                                <th align="right" class="font3" >Guest_State:</th>
                                <td><input type="text" class="textdesign" readonly=""  name="txtState"  class="textArival" value="<c:out value="${rs.GUEST_STATE}"/>">
                                </td>
                            </tr>
                            <%-- <tr>
                                <th align="right" class="DateFont">Arrival_Date:</th>
                                <th ><input type="date"  name="TxtArrivalDate"   class="textArival"> 
                            </tr>
                            <tr>
                                <th align="right" class="DateFont">Departure_Date:</th>
                                <th ><input type="date" name="TxtDepartureDate"  class="textArival"> </th>
        </tr>--%>
                            <tr>
                                <th align="right" class="font3" >Room_Number:</th>
                                <td><input type="text" class="textdesign" readonly=""  name="txtState"  class="textArival" value="<c:out value="${rs.ROOM_NUMBER}"/>">
                                </td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <th>
                                <input type="submit" value="Next"class="reserve">  
                            </th>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                </form> 
            </div>
            <div class="video">
                <%-- <video  autoplay="autoplay" controls="false"  muted="false">
                       <source src="ReviewVideo.mp4" 
                 </video>>--%>
            </div>
        </body>
    </html>