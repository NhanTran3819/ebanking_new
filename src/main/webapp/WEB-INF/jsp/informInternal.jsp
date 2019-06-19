<%@page contentType="text/html"  pageEncoding="utf-8" %>

<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<%@ include file="/includes/header_inform.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<section>         
        <br>
        <div class="container-fluid">
        <div class="col-md-2">
            
        </div>
        <div class="col-md-9"><br>
                    <h1 style="color:  #08088A;text-align: center;font-weight: bold">THÔNG TIN CHUYỂN TIỀN</h1> 
                    <div class="sub_container">
                        <p style="color:red">${param.msg}</p>
                        <form action="${action}" method="POST">
                            <div class="form-group"><br>
                                <label for="text">&ensp;Tài Khoản Nhận:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="toAccount" value="${toAccount}">
                            </div>
                            <div class="form-group">
                                <label for="text">&ensp;Tên Người Nhận:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="accName" value="${accName}">
                            </div>
                            <div class="form-group">
                                <label for="date">&ensp;Số Tiền:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="amount" value="${amount}">
                            </div>
                            <div class="form-group">
                                <label for="text">&ensp;Nội Dung:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="content" value="${content}">
                            </div>
                            <div class="form-group">
                                <label for="text">&ensp;Enter code OTP:</label>
                                <input  style="width: 150px; border-radius:5px 5px 5px 5px"type="text" name="otp" required>
                            </div>
                            <div>
                                <label></label>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        <form>
                    </div>
                </div>
 
        <div class="col-md-1">
            
        </div>        
    </div>    
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>