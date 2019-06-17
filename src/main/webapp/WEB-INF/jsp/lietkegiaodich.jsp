<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<%@ include file="/includes/header2.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<section>
    <br><br>
   <div class="sub_container">
       <h1 style="color:  #08088A; font-weight: bold;text-align: center">LIỆT KÊ GIAO DỊCH</h1>
                        <table border>
                          <tr>
                            <th>ID</th>
                            <th>Type</th>
                            <th>Amount</th>
                            <th>To Account</th>
                            <th>To Account Name</th>
                            <th>To Bank</th>
                            <th>To Branch</th>
                            <th>Fee</th>
                            <th>Description</th>
                            <th>Date Create</th>
                            <th>View</th>
                          </tr>

                        <c:forEach var="log" items="${logList}">
                          <tr>
                            <td>${log.transactionId}</td>
                            <td>${log.transactionType}</td>
                            <td>${log.amount}</td>
                            <td>${log.accDestintionId}</td>
                            <td>${log.accDestintionName}</td>
                            <td>${log.bankNameDestination}</td>
                            <td>${log.branch}</td>
                            <td>${log.fee}</td>
                            <td>${log.description}</td>
                            <td>${log.createDate}</td>
                            <td><a href="view?id=${log.transactionId}"><input style="color: blue" type="button" value="View"/></a></td>
                </tr>
            </c:forEach>
        </table>
                    </div>
    <br>
           
 
                
                
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>