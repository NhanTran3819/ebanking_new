<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<%@ include file="/includes/header4.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<section>
    <div class="container-fluid">
        <div class="col-md-2">
            
        </div>
        <div class="col-md-7">
            <br>
                <br>
                    <h2 style="color:  #08088A;text-align: center; font-weight: bold">View Detail Transaction Log</h2> 
                    <table>
                        <tr>
                            <th>Transaction ID:</th>
                            <td>${log.transactionId}</td>
                        </tr>
                        <tr>
                            <th>Type:</th>
                            <td>${log.transactionType}</td>
                        </tr>
                        <tr>
                            <th>Amount:</th>
                            <td>${log.amount}</td>
                        </tr>
                        <tr>
                            <th>To Account:</th>
                            <td>${log.accDestintionId}</td>
                        </tr>
                        <tr>
                            <th>To Account Name:</th>
                            <td>${log.accDestintionName}</td>
                        </tr>
                        <tr>
                            <th>To Bank:</th>
                            <td>${log.bankNameDestination}</td>
                        </tr>
                        <tr>
                            <th>To Branch:</th>
                            <td>${log.branch}</td>
                        </tr>
                        <tr>
                            <th>Fee:</th>
                            <td>${log.fee}</td>
                        </tr>
                        <tr>
                            <th>Description:</th>
                            <td>${log.description}</td>
                        </tr>
                        <tr>
                            <th>Date Create:</th>
                            <td>${log.createDate}</td>
                        </tr>
                    </table>
        </div> 
        <div class="col-md-3">
            
        </div>        
    </div>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>