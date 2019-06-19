<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@ include file="/includes/header_new.jsp" %>
<%@ include file="/includes/column_left_home_1.jsp" %>

<!-- start the middle column -->

<section>
    <br>
            <div class="col-md-4">
                
            </div>
            <div class="col-md-6">
                <h1 style="color:  #08088A; font-weight: bold">&ensp;ĐĂNG KÝ EBANKING</h1>
        
                    <div class="sub_container">
                        <p style="color:red">${param.msg}</p>
                        <form action="${action}" method="POST">
                            <div class="form-group">
                                <label for="text">&ensp;Account:</label><br>
                                <input name="id" type="text" class="form-control" placeholder="Enter Account" required/>
                            </div>
                            <div class="form-group">
                                <label for="email">&ensp;Email:</label><br>
                                <input type="email" name="email" class="form-control" placeholder="Enter Email" required><br>
                            </div>
                            <div class="form-group">
                                <label for="pwd">&ensp;Password:</label><br>
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pass1" required><br>
                            </div>
                            <div class="form-group">
                                <label for="pwd">&ensp;Confirm-Password:</label><br>
                                <input type="password" class="form-control" id="pwd" placeholder="Confirm-Password" name="pass2" required><br>
                            </div>
                            <div>
                                <label>&ensp;Enter Code:</label><br>
                                <div  style="background-color: burlywood" id="divGenerateRandomValues"></div>  <br>
                                <input style="width: 19em;height: 40px; border-radius: 4px;" type="text" id="textInput"/><br>  
                                <button type="submit" class="btn btn-primary" id="btnGetCaptcha">&ensp;Submit</button>  
                            </div><br>
                    <form>
                    </div>
            </div>
            <div class="col-md-2">
                
            </div>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp"%>
<%@ include file="/includes/footer.jsp" %>