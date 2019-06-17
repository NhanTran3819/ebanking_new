<%@page contentType="text/html"  pageEncoding="utf-8" %>

<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<%@ include file="/includes/header_inform.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<section>         
        <div class="container-fluid">
        <div class="col-md-2">
            
        </div>
        <div class="col-md-7">    
                <br>
                    <br>
                    <h1 style="color:  #08088A;font-weight: bold;text-align: center">THÔNG TIN CHUYỂN TIỀN</h1> <br>
                    <div class="container">
                        
                        <table action="${action}" method="POST">
                            <div class="form-group">
                                <label for="text">Tài Khoản Nhận:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="toAccount" value="${toAccount}">
                            </div>
                            <div class="form-group">
                                <label for="text">Tên Người Nhận:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="accName" value="${accName}">
                            </div>
                            <div class="form-group">
                                <label for="text">Số Tiền:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="amount" value="${amount}">
                            </div>
                            
                            <div class="form-group">
                                <label for="text">Nội Dung:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="content" value="${content}">
                            </div>
                            <div class="form-group">
                                <label for="text">Enter code OTP:</label>
                                <input  type="text" name="otp" required>
                            </div>
                            <div class="form-group">
                                <label for="text"></label>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </table>
                    </div>
                
        </div> 
        <div class="col-md-3">
            
        </div>        
    </div>          

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>