<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header3.jsp" %>
<%@ include file="/includes/column_left_home_2.jsp" %>

<section>  
    <br><div class="container-fluid">
    <div class="col-md-3">
           <a href="user">User</a><br> 
    </div>
        <div class="col-md-7"><br>
    
       <h2>Tru Tien Cua Account</h2>

                    <div class="sub_container">
                        <form action="${action}" method="POST">
                            <div class="form-group">
                                <label for="text">Account:</label>
                                <input name="accountNo" type="text" class="form-control" placeholder="Nhập tài khoản" />
                            </div>
                            <div class="form-group">
                                <label for="pwd">Amount:</label>
                                <input type="text" class="form-control" placeholder="Nhập amount" name="amount">
                            </div>
                            <div>
                                <label>Nhập Mã Code:</label>
                                <div  style="background-color: burlywood" id="divGenerateRandomValues"></div>  
                                <input type="text" id="textInput"/>  
                                <button type="submit" class="btn btn-primary" id="btnGetCaptcha">Submit</button>  
                            </div>
                    <form>
                    </div>
</div>
 
        <div class="col-md-2">
            
        </div>        
    </div>    
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>