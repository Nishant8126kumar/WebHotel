<%-- 
    Document   : FirstNavi
    Created on : 15 Dec, 2019, 9:05:48 PM
    Author     : Nishant Kumar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%--<jsp:useBean id="myBean" class="mypack.Bean"/>
<jsp:setProperty name="myBean" property="*"/>--%>
<sql:setDataSource var="datasource" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:XE" user="system" password="omshanti"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function validation()
            {
                var name = document.getElementById("uName");
                var adhar = document.getElementById("aNumber");
                var mobile = document.getElementById("mNumber");
                var cEmail = document.getElementById("email");
                var roomNo = document.getElementById("roomSelect");
                var fGuest = document.getElementById("guestCount");
                var guestState = document.getElementById("state");
                if (name.value == "")
                {
                    name.style.border = "solid 2px red";

            <%--alert(adhar.value);
                    alert(mobile.value);
                    alert(cEmail.value);
                    alert(roomNo.value);
                    alert(fGuest.value);
alert(guestState.value);--%>
            return false;
        }
        else if (adhar.value.trim() == "")
        {
            alert("Adhar Number is Mandatory");
            adhar.style.border = "solid 2px red";
            return false;
        }
        else if (mobile.value.trim() == "")
        {
            alert("Mobile Number is Mandatory");
            mobile.style.border = "solid 2px red";
            return false;
        }
        else if (cEmail.value.trim() == "")
        {
            alert("Email is Mandatory");
            cEmail.style.border = "solid 2px red";
            return false;
        }
        else
        {
            true;
        }
    }
        </script>
        <style>
            body
            {
                height: 22cm;
                width: 40cm;
                padding-top: 2cm;
                background: url(Omshanti.jpg);
                background-size: 100%;
                background-size: cover;
            }    
            .reserveform
            {
                height: 20cm;
                width: 18cm; 
                float: left;
                padding-top: -2cm;
                /* background-color: red;*/
            }                                                        
            .roomimage
            {
                height: 20cm;
                width: 22cm;
                background-size: 100%;
                margin-left: 14.5cm;
                margin-top: 0px;
                overflow-x: scroll;
                overflow-y: scroll;
                text-align: center;
            }
            .image1
            {
                padding-left: 0px;
                float: left;
                padding: 2px;       
                height:250px;
                width:400px ;
                float:left;
            }
            form
            {
                padding-left: 3cm;
                padding-top: 1cm;
            }
            .font1
            {
                color:#a0ceca;
                text-align:right;
                font-family:auto;
                font-style: italic;
                font-size: 50px; 
                padding-left: 2cm; 
            }
            input:hover
            {
                cursor:web; 
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
            .textdesign
            {
                border-radius: 50px;
                width:4cm;
                height: 20px;
                font-weight: 50%px;
                font-style: inherit;
                font-size: 20px;
                border-color: green;
                font-family: sans-serif;
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
            }
            .font2
            {    
                color: #dfc1c1;
                font-size: 20px;
                opacity: 500%;
            }
            main,reserveform,th,td
            {
                padding: 10px;
            }
            .btn1
            {
                background-color: #63b43e;
                color:wheat;
                height: 30px;
                width: 100px;
                font-size: 1.2rem;
                border-radius: 15px;
                border: 2px solid bisque;
                font-family:sans-serif;
            }
            .btn2
            {
                background-color: #e3e3d2;
                height: 30px;
                width: 100px;
                font-size: 1.2rem;
                border-radius: 15px;
                font-family: sans-serif;
            }
        </style>
    </head>
    <body>   
        <%--<%
                 if(myBean.display())
                 {
                     out.println("<font size=10 color=red>welcome in bean class");
                 }
                 else
                 {
                        out.println("<font size=10 color=red> in bean class");
            }
        %>--%>
    <font class="font1">&nbsp;&nbsp;&nbsp;&nbsp; <u>Hotel Room Images</u></font>
    <div class="reserveform">
        <font class="font1"><u>Room Reservation Form</u></font>
        <form method="post" onsubmit="return validation()" action="confirm.jsp">
            <table border="0" >
                <tr>
                    <sql:query dataSource="${datasource}" var="result">SELECT MAX(BOOKING_ID)  MAX FROM EMPJAVA</sql:query>
                    <c:forEach var="rs" items="${result.rows}">  
                        <%--    <c:out value="${rs.count}"/>--%>
                        <c:set var="booking" value="${rs.MAX}" scope="page"/>
                        <c:out value="${booking}"/>
                        <%--  <th><input type="text"  class="textdesign"  name="txtName" value="${booking}"></th>--%>
                    </c:forEach>
                    <th align="right" class="font2">Booking_id:</th>
                    <th><input type="text"  class="textdesign" readonly  name="bookId" value="${booking+1}"></th>
                </tr>
                <tr>
                    <th align="right" class="font2">Name:</th>
                    <th><input type="text" id="uName"  class="textdesign"  name="txtName"></th>
                </tr>
                <tr>
                    <th align="right" class="font2">Adhar_Numbar:</th>
                    <th><input type="text" id="aNumber" class="textdesign"  name="Adhar" ></th>
                </tr>
                <tr>
                    <th align="right" class="font2">Mobile_Number:</th>
                    <th><input type="text" id="mNumber" class="textdesign"  name="txtMobile" ></th>
                </tr>
                <tr>
                    <th align="right" class="font2">Email_ID:</th>
                    <th><input type="text" id="email"  class="textdesign"  name="txtEmail"></th>
                </tr>
                <tr>
                    <th align="right" class="font2">Arrival_Date:</th>
                    <th ><input type="date"   name="TxtArrivalDate"  class="textdesign" value="<c:out value="${param.TxtArrivalDate}"/>">            
                </tr>
                <tr>
                    <th align="right" class="font2">Departure_Date:</th>
                    <th ><input type="date"  name="TxtDepartureDate"  class="textdesign" value="<c:out value="${param.TxtDepartureDate}"/>"> </th>
                    <th><c:out value="${param.roomType}"/></th>
                </tr>
                <tr>
                    <th align="right" class="font2" >Available_Room:</th>
                        <%-- <sql:query dataSource="${datasource}" var="res">SELECT ROOM_NUMBER,ARRIVAL_DATE FROM 
    EMPJAVA WHERE ARRIVAL_DATE='${param.TxtArrivalDate}'</sql:query>--%>
                        <sql:query dataSource="${datasource}" var="result">SELECT ROOM_NAME FROM ROOM_MANAGE WHERE ROOM_TYPE='${param.roomType}'</sql:query>
                        <td>
                            <select id="roomSelect" class="chooser" name="roomName">
                            <c:forEach var="rs" items="${result.rows}">  
                                <sql:query dataSource="${datasource}" var="cnt">SELECT COUNT(*)  as cnt FROM EMPJAVA
                                    WHERE ROOM_NUMBER='${rs.ROOM_NAME}' AND ARRIVAL_DATE='${param.TxtArrivalDate}'</sql:query>
                                <c:forEach var="each" items='${cnt.rows}'>
                                    <c:out value="${each.cnt}"/>
                                    <c:choose>
                                        <c:when test="${each.cnt eq 0 and each.cnt<=15}">
                                            <option>${rs.ROOM_NAME}</option>
                                        </c:when>
                                    </c:choose>
                                </c:forEach>
                                <c:out value="${rs.ROOM_NAME}"/>
                                <c:set var="roomFrequency" value="${rs.count}" scope="page"/>
                            </c:forEach>
                        </select>
                    </td>
                    <%--<c:forEach var="rs" items="${count.rows}">  
                        <c:out value="${rs.count}"/>
                        <c:set var="roomFrequency" value="${rs.count}" scope="page"/>
</c:forEach>--%>
                    <td>
                        <%-- <select class="chooser" name="roomName">
                            <c:choose>
                                <c:when test="${roomFrequency !=0 and roomFrequency <=15 }">
                                    <c:forEach var="ras" items="${res.rows}"> 
                        <%--<sql:query dataSource="${datasource}" var="rest">SELECT ROOM_NAME FROM ROOM_MANAGE
                            WHERE(ROOM_NAME NOT between '${ras.ROOM_NUMBER}' AND '${ras.ROOM_NUMBER}')</sql:query>
                        <c:forEach var="rm" items="${rest.rows}">   
                            <c:choose>
                                <c:when>
                                    <option>${rm.ROOM_NAME}</option>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                        <%-- <c:set var="count" value="${ras.ROOM_NUMBER}" scope="page"/>
                        <c:out value="${ras.ROOM_NUMBER}"/>
<option>${ras.ROOM_NUMBER}</option>
                        <c:forEach var="avl" items="${result.rows}">
                            <c:choose>
                                <c:when test="${ras.ROOM_NUMBER ne avl.ROOM_NAME }">
                                    <option>${avl.ROOM_NAME}</option>

                                                </c:when>
                                                <c:otherwise>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </c:forEach>
                                </c:when>
                                <c:when test="${roomFrequency eq 0}">
                                    <c:forEach var="ras" items="${result.rows}">  
                                        <c:set var="count" value="${ras.ROOM_NAME}" scope="page"/>
                                        <option>${ras.ROOM_NAME}</option>
                                        <c:out value="${ras.ROOM_NAME}"/>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                        <%-- <option>${rs.ROOM_NAME}</option>
                        <c:out value="${ras.ROOM_NUMBER}"/>
                        <c:out value="${rs.count}"/>
<option>'${ras.ROOM_NUMBER}'</option>
                        <script type="text/javascript">
                            alert('Sorry Room Not ');
                        </script>
                    </c:otherwise>
                </c:choose>
            </select>--%>
                    </td>
                    <%-- <sql:query dataSource="${datasource}" var="result">SELECT ROOM_NAME FROM ROOM_MANAGE
WHERE ROOM_NAME<>'${ras.ROOM_NUMBER}'</sql:query>
                    <c:out value="${count}"/>
                    <c:out value="${roomFrequency}"/>
                    <c:out value="${ras.ARRIVAL_DATE}"/>--%>
                    <%--  <c:forEach var="rs" items="${result.rows}">
                        <c:choose>
                            <c:when test="${ras.ROOM_NUMBER eq rs.ROOM_NAME}">
                            </c:when>
                            <c:otherwise>
                    <%--  <option>${rs.ROOM_NAME}</option>
                </c:otherwise>
</c:choose>--%
        </c:forEach>--%>
                    <%--  <c:out value="${rs.ROOM_NUMBER}"/>--%>
                    <%--  <option>${rs.ROOM_NUMBER}</option>--%>
                    <%-- </select>--%>
                    <%-- <select class="chooser" name="roomName">
                            <c:forEach var="ras" items="${res.rows}">
                                <option>${ras.ROOM_NUMBER}</option>
</c:forEach>--%>

                    <%--  </select>--%>

                </tr>
                <tr>
                    <th align="right" class="font2" >Room_Type:</th>
                    <td><input type="text" readonly class="chooser"  name="roomType" value="<c:out value="${param.roomType}"/>" >


                    </td>
                </tr>
                <tr>
                    <th align="right"  class="font2">Numbers of Guest:</th>
                    <td><select class="chooser" id="guestCount" name="txtguestNo">
                            <option value="up">1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                        </select>
                    </td>
                </tr>
                <th align="right" class="font2" >Select your State:</th>
                <td><select class="chooser" id="state" name="txtState">
                        <option value="up">UP</option>
                        <option>Delhi</option>
                        <option>Hariyana</option>
                        <option>MP</option>
                        <option>Bihar</option></select>
                </td>
                </tr>
            </table>
            <br>
            &emsp;&emsp;&emsp;  <input class="btn1" type="reset">&emsp;&emsp;&emsp; &emsp;  <input class="btn2" type="submit">
        </form>       
    </div> 
    <div class="roomimage">
        <input type="image" name="type1"  src="Nishant5.jpg" class="image1" alt="submit"/>
        <input type="image" name="type2"  src="Nishant14.jpg"class="image1"/>
        <input type="image" name="type3" src="Nishant15.jpg" class="image1"/>
        <input type="image" name="type4"src="Nishant16.jpg" class="image1"/>
        <input type="image" name="type5" src="Nishant17.jpg"class="image1"/>
        <input type="image" name="type7"  src="Nishant19.jpg"class="image1"/>
        <input type="image" name="type6"  src="Nishant18.jpg"class="image1"/>
        <input type="image" name="type8" src="Nishant20.jpg"class="image1"/>
        <input type="image" name="type9"  src="Nishant21.jpg"class="image1"/>
        <input type="image" name="type10" src="Nishant22.jpg"class="image1"/>
        <input type="image" name="type11"src="Nishant23.jpg"class="image1"/>
        <input type="image" name="type12"src="Nishant24.jpg"class="image1"/>
        <input type="image" name="type13"src="Nishant25.jpg"class="image1"/>
        <input type="image" name="type14" src="Nishant26.jpg" class="image1"/>
        <input type="image" name="type15"src="Nishant27.jpg"class="image1"/>
        <input type="image" name="type16"src="Nishant28.jpg"class="image1"/>
        <input type="image" name="type17" src="Nishant29.jpg"class="image1"/>
        <input type="image" name="type18" src="Nishant30.jpg"class="image1"/>
        <input type="image" name="type19" src="Nishant31.jpg"class="image1"/>
        <input type="image" name="type20" src="Nishant32.jpg"class="image1"/>
        <input type="image" name="type21"  src="Nishant33.jpg"class="image1"/>
        <input type="image" name="type22"  src="Nishant34.jpg"class="image1"/>
        <input type="image" name="type23"  src="Nishant35.jpg"class="image1"/>
        <input type="image" name="type24"  src="Nishant36.jpg"class="image1"/>
        <input type="image" name="type25" src="Nishant37.jpg"class="image1"/>
        <input type="image" name="type26"  src="Nishant38.jpg"class="image1"/>
        <input type="image" name="type27" src="Nishant39.jpg"class="image1"/>
        <input type="image" name="type28"  src="Nishant40.jpg"class="image1"/>
        <input type="image" name="type29"  src="Nishant41.jpg"class="image1"/>
        <input type="image" name="type30" src="Nishant42.jpg"class="image1"/>                                     
    </div>      
</body>
</html>

<%-- <sql:query dataSource="${datasource}" var="result">SELECT COUNT(ROOM_TYPE) AS COUNT FROM EMPJAVA WHERE ROOM_TYPE='${param.roomType}'</sql:query>
                    <c:forEach var="rs" items="${result.rows}">  
                        <c:set var="count" value="${rs.count}"/>
<%-- <c:out value="${rs.count}"/>-
<c:out value="${count}"/>--%>