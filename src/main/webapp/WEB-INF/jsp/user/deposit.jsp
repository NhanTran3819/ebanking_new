<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header_depo.jsp" %>
<%@ include file="/includes/column_left_home_2.jsp" %>

<section>  
    <br><br>
    <div class="container-fluid">
    <div class="col-md-3">
           <a href="user">User</a><br> 
    </div>
        <div class="col-md-7"><br>
       <h1 style="color:  #08088A;font-weight: bold">NẠP TIỀN CHO KHÁCH </h1>
                    <br>
                    <div class="sub_container">
                        <form action="${action}" method="POST">
                            <div class="form-group">
                                <label for="text">&ensp;Account:</label>
                                <input type="text" class="form-control" value="${account.accountNo}" id="toAccount" name="toAccount" onChange="test()" placeholder="Nhập tài khoản">
                            </div>
                            <div class="form-group">
                                <label for="name">&ensp;To Account Name:</label>
                                <input type="text" class="form-control" id="accName" value="${account.customer.customerName}" name="accName">
                            </div>
                            <div class="form-group">
                                <label for="pwd">&ensp;Amount:</label>
                                <input type="text" class="form-control" placeholder="Nhập amount" name="amount">
                            </div>
                            <div>
                                <button type="submit" class="btn btn-primary" >Submit</button>  
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