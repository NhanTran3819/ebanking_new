<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header_user.jsp" %>
<%@ include file="/includes/column_left_home_2.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section>  
     <br>
     <div class="col-md-1">
        </div>
        <div class="col-md-11">
       <h1 style="color:  #08088A; font-weight: bold">This is Page User!</h1>
        <br>
        <a href="managerAccount">Manager Account</a><br><br>
        <a href="deposit">deposit</a><br><br>
        <a href="withDraw">withDraw</a><br><br>
        <form method="post" action='<c:url value="/j_spring_security_logout" />'>
           <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
           <input type="submit" class="btn btn-primary" value="Logout" />
        </form>
        </div>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>