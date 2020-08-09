<%-- 
    Document   : CheckOut
    Created on : 24 Mar, 2020, 2:14:33 PM
    Author     : Vivek
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var="datasource" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:XE" user="system" password="omshanti"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            body{
                background-image: url(Nishant43.jpeg);
                background-size: cover;
            }
            
            
        </style>
    </head>
    <body>
        <h1>CheckOut</h1>
    </body>
</html>
