<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header6.jsp" %>
<%@ include file="/includes/column_left_home_1.jsp" %>

<section>         
        <br>
          <a href="admin">Admin</a><br>
        <br>
        <mvc:form action="searchUser" method="get">
            <input type="text" name="searchvalue" placeholder=" user name or role">
            <span><button type="submit">Search</button></span>
        </mvc:form>
            <br>
        <h1 style="color:  #08088A; font-weight: bold;text-align: center">List User</h1> 
                    <div class="sub_container">
                        <table border>
                          <tr>
                            <th>User Name</th>
                            <th>Role</th>
                          </tr>

                        <c:forEach var="user" items="${userList}">
                          <tr>
                            <td>${user.username}</td>
                            <td>${user.role.roleName}</td>
                            </tr>
            </c:forEach>
        </table>
                    </div>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>