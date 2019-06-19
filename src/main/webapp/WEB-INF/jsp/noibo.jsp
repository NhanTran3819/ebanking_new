<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@page import="java.lang.String"%>
<%@page import="repository.AccountRepository"%>
<%@page import="entity.AccountEntity"%>
<%@page import="java.util.List"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<%@ include file="/includes/header5.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<section>
    <div class="container-fluid">
        <div class="col-md-4">
            
        </div>
        <div class="col-md-5">
            <br>
            
                <h1 style="color:  #08088A;font-weight: bold">&ensp;CHUYỂN TIỀN NỘI BỘ</h1> <br>
                    <div class="sub_container">
                        <p style="color:red">${param.msg}</p>
                        <form action="${action}" method="POST">                           
                            <div class="form-group">
                                <label for="text">&ensp;Tài Khoản Nhận:</label>
                                <input type="text" class="form-control" value="${account.accountNo}" id="toAccount" name="toAccount" onChange="test()" required>
                            </div>
                           
                            <div class="form-group">
                                <label for="name">&ensp;Tên Người Nhận:</label>
                                <input type="text" class="form-control" id="accName" value="${account.customer.customerName}" name="accName" required>
                            </div>
                            
                            <div>
                                <label for="name">&ensp;Số Tiền:</label>
                                <input type="text" class="form-control" id="pwd" placeholder="" name="amount" required>
                            </div>
                            <div>
                                <label for="name">&ensp;Nội Dung:</label>
                                <input style="height: 80px" type="text" class="form-control" id="pwd" placeholder="" name="content" required>
                            </div>             
                            <br>
                                <input type="hidden" id="otp" name="OTP" >
                                <button type="submit" class="btn btn-primary" onclick="code()">Submit</button>
                        </form>
                    </div>
        </div> 
        <div class="col-md-3">
            
        </div>        
    </div>              
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>