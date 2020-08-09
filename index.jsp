<%-- 
    Document   : index
    Created on : 15 Dec, 2019, 9:56:46 PM
    Author     : Nishant Kumar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="datasource" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:XE" user="system" password="omshanti"/>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            function validation()
            {
                var arrival = document.getElementById("aDate");
                var departure = document.getElementById("dDate");
                if (arrival.value == "")
                {
                    alert("Please Select Arrival Date");
                    return false;
                }
                else if (departure.value == "")
                {
                    alert("Please Select Departure Date");

                    return false;
                }
                else
                {
                    return true;
                }
            }

        </script>
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
                color:#b6b649;
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
                width: 700px;
                margin-left: 15cm;
                margin-top: -5.5cm; 
            }
            .internal	
            {
                height:400px;
                width:1300px;
                margin-top: 2cm;
                margin-left:3cm;
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
                background-color: transparent;
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
            .chooser
            {
                display: block;
                font-size: 20px;
                border-radius: 5px; 
                background-color: gray;
                color: greenyellow;
                font-family: inherit;
                width: 3cm;
            }
        </style>
        <%-- <script language="javascript">
            // var name =prompt("Enter your age","age");
            //console.log(name+"Good Morning");
            //console.log("gamsvgasvjm");
            //alert("Do want to go abord");
            // let a=confirm("Do want to delete this post really");
            // if(name>18)
            //{
            //      console.log("you are allow");
            //}
            //else
            //{
            //   console.log("you are not allow");
            //}
         /*   function goodby()
            {
                //  var name=prompt("Enter your age");
                //if (name < 2)
                //{
                alert("Sorry Your User Name Password is Wrong Plz Try Again");
                //  }
                //else
                //{
                //alert("java");
                //}
            }*/
</script>--%>
    </head>
    <body>
    <font class="font1"><center>Welcome In Dream Desert Hotel</center></font>
    <div class="navi">
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Room</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="index2.html">Gallery</a></li>
                <li><a href="AboutUs.jsp">About us</a></li>
                <li><a href="#">Review</a></li>
            </ul>
        </nav>
        <font class="title">Nishant Sharma IIMT(Aligarh)</font>    
    </div>
    <font class="font2" ><center><marquee behavior="alternate">Stay With Relax</marquee></center></font>
    <div class="internal">
        <form method="get" action="">
            <table class="menuTable">
                <tr>
                    <th align="right" class="DateFont">User_Name:</th>
                    <th ><input type="text"  name="txtUser"  class="textArival"> 
                </tr>
                <tr>
                    <th align="right" class="DateFont">Password:</th>
                    <th ><input type="password" name="txtPassword"  class="textArival"> </th>
                </tr>
                <tr>
                    <th>
                        <%--<c:out value="${param.txtUser}"/>--%>
                        <sql:query dataSource="${datasource}" var="result">SELECT USER_NAME,PASSWORD  FROM HOTELWEBPASS</sql:query>
                        <c:forEach var="rs" items="${result.rows}">                           
                            <c:if test="${rs.USER_NAME eq param.txtUser and rs.password eq param.txtPassword}">
                                <c:redirect url="Customer.jsp"/>
                            </c:if>                     
                        </c:forEach>
                        <%-- <sql:query dataSource="${datasource}" var="result">SELECT COUNT(ROOM_TYPE) AS COUNT FROM EMPJAVA WHERE ROOM_TYPE='AC'</sql:query>
                        <c:forEach var="rs" items="${result.rows}">  
                            <c:out value="${rs.count}"/>
</c:forEach>--%>
                        <input type="submit" value="Login" class="checkIn">
                    </th>
                </tr>
            </table>
        </form>
        <div class="date">
            <%--<font class="font2" >action="Reserve.jsp"<center><marquee behavior="alternate">Select Date</marquee></center></font>--%>
            <form mathod="post"  onsubmit=" return validation()" action="Reserve.jsp"> 
                <table>
                    <tr>
                        <th align="right" class="DateFont">Arrival_Date:</th>
                        <th ><input type="date" id="aDate"  name="TxtArrivalDate"  class="textArival"> 
                    </tr>
                    <tr>
                        <th align="right"  class="DateFont">Departure_Date:</th>
                        <th ><input type="date" id="dDate" name="TxtDepartureDate"  class="textArival"> </th>
                    </tr>
                    <tr>
                        <th align="right" class="DateFont" >Room_Type:</th>
                        <td><select class="chooser" name="roomType">
                                <option>AC</option>
                                <option>NON_AC</option>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <%--<input type="text" name="TxtDepartureDate"  class="textArival" value=param.roomType>
                            <input type="text" class="textdesign"  name="txtDepartureDate"  class="textArival" value="<c:out value="${param.roomType}"/>">
<input type="text" name="TxtDepartureDate"  class="textArival" value="<c:out value="${param.TxtArrivalDate}"/>">
<c:out value="${param.roomType}"/>--%>
                            <c:set var="count" value="${0}"/>
                            <sql:query dataSource="${datasource}" var="res">SELECT ARRIVAL_DATE,ROOM_TYPE FROM EMPJAVA</sql:query>
                            <sql:query dataSource="${datasource}" var="result">SELECT COUNT(ROOM_TYPE) AS COUNT FROM EMPJAVA WHERE ROOM_TYPE='${param.roomType}'</sql:query>
                            <c:forEach var="rs" items="${result.rows}">  
                                <c:set var="count" value="${rs.count}"/>
                                <%-- <c:out value="${rs.count}"/>
<c:out value="${count}"/>--%>

                            </c:forEach>
                            <c:forEach var="ras" items="${res.rows}">
                                <%--<input type="text" name="TxtDepartureDate"  class="textArival" value="${ras.ARRIVAL_DATE}">
<input type="text" name="TxtDepartureDate"  class="textArival" value="${ras.ROOM_TYPE}">--%>
                                <c:if test="${param.TxtArrivalDate eq ras.ARRIVAL_DATE and ras.ROOM_TYPE eq param.roomType}">  
                                    <%-- <script language="javascript">
                                        function msg()
                                        {
                                            alert("This Date is Already Booked");
                                        }
    </script>--%>
                                    <%--    <c:redirect url="Reserve.jsp"/>--%>

                                </c:if>


                            </c:forEach>
                            <c:set var="day" value="10" scope="page"/>
                            <%-- <c:forEach var="c"  begin="1" end="10">
                                <c:set var="day" value="${day+1}"/>
</c:forEach> onclick="goodby()"--%>

                            <input type="submit" value="Reserve"class="reserve">  
                        </th>
                    </tr>
                </table>
            </form> 
            </th>
            </tr>
        </div>
    </div>
</body>
</html>