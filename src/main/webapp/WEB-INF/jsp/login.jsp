<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header3.jsp" %>
<%@ include file="/includes/column_left_home_1.jsp" %>

<section>         
        <br>
        
        <div class="col-md-4">
        </div>
        <div class="col-md-6">
            <h1 style="color:  #08088A; font-weight: bold">&ensp;&ensp;&ensp;&ensp;&ensp;Login Security</h1><br>
        <form action="j_spring_security_check" method="post"><br>
            <label>&ensp;User Name:</label><input  style="height: 40px;border-radius: 5px 5px 5px 5px"  type="text" name="username"/><br>
            <label>&ensp;Password:</label> <input style="height: 40px; border-radius: 5px 5px 5px 5px" type="password" name="password"/><br><br>
            <input type="submit" class="btn btn-primary" value="Login">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>
        </form>
                   <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                       <p style="color: red;">
                           <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
                       </p>                       
                   </c:if>
        </div>        
        <div class="col-md-2">
        </div>        
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>