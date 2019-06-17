<%@page contentType="text/html"  pageEncoding="utf-8" %>

<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<%@ include file="/includes/header3.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<section>         
            
                <br>
                    <br>
                    <h2>Information Tranfer Money External</h2> 
                    <div class="container">
                        
                        <form action="${action}" method="POST">
                            <div class="form-group">
                                <label for="text">To Bank:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="toAccount" value="${bankName}">
                            </div>
                            <div class="form-group">
                                <label for="text">To Branch:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="toAccount" value="${address}">
                            </div>
                            <div class="form-group">
                                <label for="text">To Account:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="toAccount" value="${toAccount}">
                            </div>
                            <div class="form-group">
                                <label for="text">To Account Name:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="accName" value="${accName}">
                            </div>
                            <div class="form-group">
                                <label for="date">Amount:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="amount" value="${amount}">
                            </div>
                            <div class="form-group">
                                <label for="text">Fee:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="content" value="${fee}">
                            </div>
                            <div class="form-group">
                                <label for="text">Content:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="content" value="${content}">
                            </div>
                            <div class="form-group">
                                <label for="text">Enter code OTP:</label>
                                <input  type="text" name="otp" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            
                        <form>
                    </div>
                
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>