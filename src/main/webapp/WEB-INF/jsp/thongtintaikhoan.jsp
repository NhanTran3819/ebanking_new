<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header2.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<section>         
            <br><br>
            <h1 style="color:  #08088A;text-align: center; font-weight: bold">THÔNG TIN TÀI KHOẢN</h1> 
                    <div class="container">
                        <table modelAttribute="acc" action="" method="get">
                            <tr>
                                <th>Account ID</th>
                                <th>Account Name</th>
                                <th>Account Bank</th>
                                <th>Account Type</th>
                                <th>Balance</th>
                                <th>Interest</th>
                                <th>Create Date</th>
                                
                            </tr>
                            <tr>
                                <td>${acc.accountNo}</td>
                                <td>${acc.customer.customerName}</td>
                                <td>${acc.customer.customerId}</td>
                                <td>${acc.accountType}</td>
                                <td>${acc.balance}</td>                           
                                <td>${acc.interest}</td>
                                <td>${acc.createDate}</td>
                            </tr>
                        </table>
                    </div>
                    
                
                
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>