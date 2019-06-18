<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header6.jsp" %>
<%@ include file="/includes/column_left_home_1.jsp" %>

<section>         
        <br>
          <a href="user">User</a>
        <br>
        <mvc:form action="searchAccount" method="get">
            <input type="text" name="searchvalue" placeholder="account or name">
            <span><button type="submit">Search</button></span>
        </mvc:form>
            <br>
        <h1 style="color:  #08088A; font-weight: bold;text-align: center">List Account</h1> 
                    <div class="sub_container">
                        <table border>
                          <tr>
                            <th style="text-align: center">Account</th>
                            <th style="text-align: center">Type</th>
                            <th style="text-align: center">Name</th>
                            <th style="text-align: center">Balance</th>
                            <th style="text-align: center">Interest</th>
                            <th style="text-align: center">Create Date</th>
                            
                          </tr>

                        <c:forEach var="acc" items="${accountList}">
                          <tr>
                            <td>${acc.accountNo}</td>
                            <td>${acc.accountType}</td>
                            <td>${acc.customer.customerName}</td>
                            <td>${acc.balance}</td>
                            <td>${acc.interest}</td>
                            <td>${acc.createDate}</td>
                            
                </tr>
            </c:forEach>
        </table>
                    </div>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>