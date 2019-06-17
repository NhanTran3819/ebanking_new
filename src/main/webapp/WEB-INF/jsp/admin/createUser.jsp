<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header_3.jsp" %>
<%@ include file="/includes/column_left_home_1.jsp" %>

<section>         
            <br>
        <div class="col-md-4">
            
        </div>
        <div class="col-md-8"><br><br>    
        <h1 style="color:  #08088A; font-weight: bold">&ensp;&ensp;Create New User</h1>
                <div class="sub_container">
                        <form action="${action}" method="POST">
                            <div class="form-group">
                                <label for="text">&ensp;User Name:</label><br>
                                <input name="id" type="text" class="form-control" placeholder="Enter userName" />
                            </div>
                            <div class="form-group">
                                <label for="pwd">&ensp;Password:</label><br>
                                <input type="password" class="form-control" id="pwd" placeholder="Nhập password" name="pass1"><br>
                            </div>
                            <div class="form-group">
                                <label for="pwd">&ensp;Confirm-Password:</label><br>
                                <input type="password" class="form-control" id="pwd" placeholder="Nhập lại-Password" name="pass2"><br>
                            </div>
                            <div>
                                <label>&ensp;Enter Code:</label><br>
                                <div  style="background-color: burlywood" id="divGenerateRandomValues"></div>  
                                <input style="width: 19em;height: 40px; border-radius: 4px;" type="text" id="textInput"/>  <br>
                                <button type="submit" class="btn btn-primary" id="btnGetCaptcha">Submit</button>  
                            </div>
                    <form>
                    </div>        
        </div>
                
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>