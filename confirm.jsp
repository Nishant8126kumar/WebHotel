<%-- 
    Document   : confirm
    Created on : 16 Jan, 2020, 10:52:35 PM
    Author     : Vivek
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--<sql:query dataSource="${db}" var="result">SELECT * from hibernate</sql:query> --%>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function confirmation()
            {
                
                if (confirm('You Have Checked Your Details Properly')==true)
                {
                    return true;
                }
                else
                    return false;

            }
        </script>
        <style type="text/css">

            body
            {
                background-color: gray;
                height: 20cm;
                width: 15cm;
                background-image: url("Nishant12.jpg");
                background-size: cover;
            }
            .top
            {
                height: 60px;
                width: 39cm;
                margin-top: -0.3cm;

                text-justify: auto;
                text-align: center;
            }
            .font1
            {
                color:yellow;
                text-align:right;
                font-style: bold;
                font-size: 50px;
                margin-top: 2cm;
                text-align: center;
            }
            .textdesign
            {
                width:4cm;
                height: 20px;
                /*font-weight: 50%px;*/
                font-style: inherit;
                font-size: 20px;
                border-color: green;
                border: 0px;               
                background-color: #808096;
                border-radius: 5px;


            }
            .font2
            {      
                color:white;
                font-size:20px;
                opacity:500%;
                padding:5px;
            }
            .fontMarque
            {
                color:magenta;
                text-align:right;
                font-style: italic;
                font-size: 50px;
                margin-top: 0.2cm;
            }
            .textArival
            {
                width: 4cm;
                height: 20px;
                border-radius: 50px;
                font-size: 20px;
                font-family: serif;
                font-weight:bold;
                color:magentayellow;    
            }
            .confirm
            {
                height: 10cm;
                width: 30cm;

                margin-left: 7cm;

                /* align-item:center;
                 justify-containt:center;*/
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
            body,confirm,th,td
            {
                padding: 12px;
            }
            .logo{
                height: 200px;
                width: 10cm;
                background-color: red;
                background-image: url("HotelLogo2.jpg");
                background-size: cover;
                background-size: 100%;
                margin-left: 0.7cm;
                margin-top: -0.7cm;
            }
            .sideText
            {
                width: 20cm;
                height: 15cm;
                <%--background-color: red;--%>
                margin-left: 10cm;
                margin-top: -16cm;
            }
            .fonttext
            {
                text-decoration: none;
                font-family: arial;
                color: lightcyan;
                font-size: 2.8rem;
                font-style: oblique;
                padding-left: 40px;
                opacity: 30%;
            }
            img
            {
                width: 700px;
                height: 500px;
                margin-left: 2cm;
                margin-top: 20px;
                border-radius: 50px;
            }
            <%--  .video
            {
                height: 600px;
                width: 100%;
                cursor: none;
                margin-left: 2cm;
                margin-top: 1cm;
                opacity: 100%;
            }
            video
            {
                height: 10cm;
                width: 20cm;
                border-radius: 55px;
}--%>
        </style>
    </head>
    <body>
        <div class="top">
            <font class="fontMarque"><marquee behavior="alternate">Please Confirm Your Entered Details</marquee></font>
        </div>
        <div class="confirm">
            <form method="get" action="SubmitRequest.jsp" onsubmit="return confirmation()">
                <br><br>
                <table border="0" >
                    <tr>
                        <th align="right" class="font2">Booking_Id:</th>
                        <th><input type="text" readonly  class="textdesign"  name="bookId" value="<c:out value="${param.bookId}"/>"></th>
                    </tr>
                    <tr>
                        <th align="right" class="font2">Name:</th>
                        <th><input type="text"  class="textdesign"  name="txtName" value="<c:out value="${param.txtName}"/>"></th>
                    </tr>
                    <tr>
                        <th align="right" class="font2">Adhar_Numbar:</th>
                        <th><input type="text" class="textdesign"  name="txtAdhar" value="<c:out value="${param.Adhar}"/>"></th>
                    </tr>
                    <tr>
                        <th align="right" class="font2">Mobile_Number:</th>
                        <th><input type="text" class="textdesign"  name="txtMobile" value="<c:out value="${param.txtMobile}"/>"></th>
                    </tr>
                    <tr>
                        <th align="right" class="font2">Email_ID:</th>
                        <th><input type="text"  class="textdesign"  name="txtEmail" value="<c:out value="${param.txtEmail}"/>"></th>
                    </tr>
                    <tr>
                        <th align="right" class="font2">Arrival_Date:</th>
                        <th ><input type="text" class="textdesign"   name="txtArrivalDate"  class="textArival" value="<c:out value="${param.TxtArrivalDate}"/>"> 
                    </tr>
                    <tr>
                        <th align="right" class="font2">Departure_Date:</th>
                        <th ><input type="text" class="textdesign"  name="txtDepartureDate"  class="textArival" value="<c:out value="${param.TxtDepartureDate}"/>"> </th>
                    </tr>
                    <tr>
                        <th align="right" class="font2" >Room_Type:</th>
                        <td><input type="text" class="textdesign"  name="roomtype"  class="textArival" value="<c:out value="${param.roomType}"/>">
                        </td>
                    </tr>
                    <tr>
                        <th align="right" class="font2">Numbers of Guest:</th>
                        <td><input type="text" class="textdesign"  name="txtGuest"  class="textArival" value="<c:out value="${param.txtguestNo}"/>">
                        </td>
                    </tr>
                    <tr>
                        <th align="right" class="font2" >your State:</th>
                        <td><input type="text" class="textdesign"  name="txtState"  class="textArival" value="<c:out value="${param.txtState}"/>">
                        </td>
                    </tr>
                    <tr>
                        <th align="right" class="font2">Room_Name:</th>
                        <th ><input type="text" class="textdesign"  name="roomName"  class="textArival" value="<c:out value="${param.roomName}"/>"> </th>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <input   type="submit" class="reserve">

                <%--   <sql:setDataSource var="datasource" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:XE" user="system" password="omshanti"/>
                <sql:query dataSource="${datasource}" var="result">SELECT ARRIVAL_DATE,DEPARTURE_DATE FROM EMPJAVA</sql:query>

                <c:forEach var="data" items="${result.rows}"> 
                <%--  <c:out value="${data.Arrival_date}"/>
      <c:out value="${data.Departure_date}"/>

                    <c:out value="${data.Arrival_date}"/>
                    <c:out value="${data.Departure_date}"/>
                    <c:if test="${param.TxtArrivalDate eq data.data.Arrival_date}">
                <%-- <c:redirect url="AlreadyOccupieDate.jsp"/>-
            </c:if>
        </c:forEach>--%>
            </form>
            <div class="sideText">
                <font class="fonttext">A Special Place Where <br>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&emsp;You Can Stay And Relax</font>
                <img src="yara.jpg">


            </div>
        </div>

    </body>
</html>
