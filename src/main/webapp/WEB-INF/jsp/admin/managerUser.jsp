<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header6.jsp" %>
<%@ include file="/includes/column_left_home_1.jsp" %>

<section>         
        <br>
          
        <br>
        <h1 style="color:  #08088A; font-weight: bold;text-align: center">List User</h1> 
                    <div class="sub_container">
                        <table border>
                          <tr>
                            <th>User Name</th>
                            <th>Password</th>
                            <th>Role</th>
                            <th>View</th>
                          </tr>

                        <c:forEach var="user" items="${userList}">
                          <tr>
                            <td>${user.userName}</td>
                            <td>${user.password}</td>
                            <td>${user.role.roleName}</td>
                            <td><a href="view?id=${user.userName}"><input style="color: blue" type="button" value="View"/></a></td>
                </tr>
            </c:forEach>
        </table>
                    </div>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>