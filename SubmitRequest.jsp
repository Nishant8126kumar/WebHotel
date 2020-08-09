<%-- 
    Document   : SubmitRequest
    Created on : 13 Feb, 2020, 10:56:03 PM
    Author     : Vivek
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="myBean" class="mypack.Bean"/>
<jsp:setProperty name="myBean" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            {
                background-color: gray;
                height: 20cm;
                width: 15cm;
                background-image: url("Nishant12.jpg");
                background-size: cover;
            }
            .fontMarque1
            {
                color:magenta;
                text-align:right;
                font-style: italic;
                font-size: 3.8rem;
                margin-top: 0.2cm;
            }
            .top{
                height: 15cm;
                width: 22cm;
                margin-top: -1cm;
                margin-left: 8cm;
                <%-- background-color:red;--%>
                
            }
             .fontMarque
            {
                color:magenta;
                text-align:right;
                font-style: italic;
                font-size: 3.8rem;
                margin-top: 0.2cm;
                font-family: cursive
            }
            .clgLogo
            {
                width: 8cm;
                height: 200px;
                margin-left:  31cm;
                margin-top: 1cm;
            }
            img
            {
                border-radius: 150px;
                
            }
            
        </style>
    </head>
    <body>
        <div class="clgLogo">
        <img src="clgImage.jpg" width="300px">
        </div>
        <div class="top">
                        <font class="fontMarque">Thanks</font><br>

             <font class="fontMarque1" >Your Request have been<br> submited<br>
             Your Booking Id Is:<br>        <jsp:getProperty name="myBean" property="bookId"/><br>
</center></font>
        </div>
             <%-- <h1>Hello World!</h1>
<input type="text"  class="textdesign"  name="TxtName" value="<c:out value="${param.TxtName}"/>">--%>
        <%
            try {
                if (myBean.display()) {
                    out.println("<font color=blue size=8>Welcome successfull");
                }
            } catch (Exception ex) {

                out.println("<font color=blue size 8>Error Occur" + ex);
            }
        %>
        <%--  <jsp:getProperty name="myBean" property="bookId"/><br>

        Name:<jsp:getProperty name="myBean" property="txtName"/><br>
        <jsp:getProperty name="myBean" property="txtAdhar"/><br>
        <jsp:getProperty name="myBean" property="txtMobile"/><br>
        <jsp:getProperty name="myBean" property="txtEmail"/><br>
        <jsp:getProperty name="myBean" property="txtArrivalDate"/><br>
        <jsp:getProperty name="myBean" property="txtDepartureDate"/><br>
        <jsp:getProperty name="myBean" property="txtGuest"/><br>
        <jsp:getProperty name="myBean" property="txtState"/><br>
        <jsp:getProperty name="myBean" property="roomtype"/><br>
<jsp:getProperty name="myBean" property="roomName"/><br>--%>

    </body>
</html>
