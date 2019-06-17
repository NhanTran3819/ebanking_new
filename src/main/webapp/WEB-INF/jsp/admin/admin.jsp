<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/includes/header_user.jsp" %>
<%@ include file="/includes/column_left_home_1.jsp" %>

<section>   
        <div class="col-md-2">
            
        </div>
        <div class="col-md-8"><br><br>
            <h1 style="color:  #08088A; font-weight: bold">This is Page Admin!</h1>
            <br>
            <a href="managerUser">Manager User</a><br><br>
            <a href="createUser">Create User</a><br><br>
            <a href="user">Customer Page</a><br><br>
        
            <form method="post" action="<c:url value="/j_spring_security_logout" />"  >
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <input type="submit" class="btn btn-primary" value="Logout" />
            </form>
        </div>
        <div class="col-md-2">
            
        </div>        
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>