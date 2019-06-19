<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<%@ include file="/includes/header_ex.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<section>         
            
              
        <div class="container-fluid">
        <div class="col-md-1">
            
        </div>
        <div class="col-md-10"><br>
                     
                    <h1 style="color:  #08088A;text-align: center;font-weight: bold">THÔNG TIN CHUYỂN TIỀN</h1>
                    <div class="container">
                        <mvc:form  id="form1" modelAttribute="transactionAccountExt" action="${action}" method="POST" >
                            <br>
                            <p style="color:red">${param.msg}</p>
                            <br>
                            <div class="form-group">
                                <label for="text">&ensp;&ensp;From Account:</label>                               
                                <input  style=" border: #ffffff" type="text" name="fromAccount" value="${transactionAccountExt.fromAccount}" required>
                            </div>
                            <div class="form-group">
                                <label for="text">&ensp;&ensp;To Bank:</label>                               
                                <input  style=" border: #ffffff" type="text" name="bank" value="${transactionAccountExt.bank}" required>
                            </div>
                            <div class="form-group">
                                <label for="text">&ensp;&ensp;To Branch:</label>                                
                                <input  style=" border: #ffffff" type="text" name="branch" value="${transactionAccountExt.branch}" required>
                            </div>
                            <div class="form-group">
                                <label for="text">&ensp;&ensp;To Account:</label>                                
                                <input  style=" border: #ffffff" type="text" name="accountNo" value="${transactionAccountExt.accountNo}" required>
                            </div>
                            <div class="form-group">
                                <label for="text">&ensp;&ensp;To Account Name:</label>                                
                                <input  style=" border: #ffffff" type="text" name="accountName" value="${transactionAccountExt.accountName}" required>
                            </div>
                            <div class="form-group">
                                <label for="date">&ensp;&ensp;Amount:</label>                               
                                <input  style=" border: #ffffff" type="text" name="amount" value="${transactionAccountExt.amount}" required>
                            </div>
                            <div class="form-group">
                                <label for="text">&ensp;&ensp;Fee:</label>                                
                                <input  style=" border: #ffffff" type="text" name="fee" value="${transactionAccountExt.fee}" required>
                            </div>
                            <div class="form-group">
                                <label for="text">&ensp;&ensp;Content:</label>                                
                                <input  style=" border: #ffffff" type="text" name="content" value="${transactionAccountExt.content}" required>
                            </div>
                            <div class="form-group">
                             <label></label>    
                            <progress value="0" max="15" id="pbar" ></progress><p id="counting">15</p>
                            </div>
                            <div class="form-group">
                                <label for="text">&ensp;&ensp;Enter code OTP:</label>
                                <input style="width: 150px; border-radius:5px 5px 5px 5px" type="text" name="otpExt" required>
                            </div>
                            <div class="form-group">
                             <label></label>   
                            <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </mvc:form>
                    </div>
                 </div>
 
        <div class="col-md-1">
            
        </div>        
    </div>    
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>