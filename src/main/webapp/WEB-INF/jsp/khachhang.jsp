<%-- 
    Document   : thongtinkhachhang
    Created on : May 20, 2019, 4:17:13 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
         <%@ include file="/includes/header.jsp" %>
        <%@ include file="/includes/column_left_home.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>eBanking</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js" type="text/javascript"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>        	
        <script src="https://www.google.com/recaptcha/api.js?hl=vi"></script>
    </head>
    <body>
        
        <div class="container-fluid">
           
            
            <div class="row" id="section">
                
                
                <div class="col-md-7">
                    <br>
                    <h2>WELLCOME TO EBANKING</h2> <br>
                    <div class="container">
            <%--             <table>
                            <tr>
                                <th><h1>Kính Chào Khách Hàng:&emsp;</h1></th>
                                <th><h1>${acc.customer.customerName}</h1></th>                
                            </tr>
                        </table>
                     --%> 
                    </div>
                </div>
                
                <div class="col-md-2">
                    
                </div> 
            </div>
            <div class="row" id="footer">
                <div class="col-md-4">
                    
                </div>
                <div class="col-md-4">
                  <p>&copy; Copyright by Phạm Thanh Phong.  All rights reserved.</p>  
                </div>
                <div class="col-md-4">
                    
                </div> 
            </div>
            
        </div>
    </body>
</html>

