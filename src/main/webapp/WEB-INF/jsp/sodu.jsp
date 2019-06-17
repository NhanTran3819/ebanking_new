<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header7.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<section> 
    <div class="container-fluid">
        <div class="col-md-2">
            
        </div>
        <div class="col-md-7">
            <br>
            <h1 style="color:  #08088A;text-align: center; font-weight: bold">SỐ DƯ TÀI KHOẢN</h1> 
                    <div class="sub_container">
                        <table modelAttribute="acc" action="" method="get">
                            <tr>
                                <th>Account Bank:</th>
                                <td>${acc.customer.customerId}</td>
                            </tr>
                            <tr>
                                <th>Account Name:</th>
                                <td>${acc.customer.customerName}</td>
                            </tr>
                            <tr>
                                <th>Account ID:</th>
                                <td>${acc.accountNo}</td>
                            </tr>
                            <tr>
                                <th>Balance:</th>
                                <td>${acc.balance}</td>
                            </tr>
                            
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