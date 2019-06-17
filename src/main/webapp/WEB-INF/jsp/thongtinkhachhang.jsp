<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/includes/header7.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<section>   
    <div class="container-fluid">
        <div class="col-md-2">
            
        </div>
        <div class="col-md-7">
            <br><br>
                    <h1 style="color:  #08088A;text-align: center; font-weight: bold">THÔNG TIN KHÁCH HÀNG</h1> <br>
                    <div class="sub_container">
                        <table modelAttribute="acc" action="" method="get">                           
                                <tr>
                                    <th>ID:</th>
                                    <td>${acc.customer.customerId}</td>
                                </tr>
                                <tr>
                                    <th>Họ Tên:</th>
                                    <td>${acc.customer.customerName}</td>                                    
                                </tr>
                                <tr>
                                    <th>Ngày Sinh:</th>
                                    <td>${acc.customer.birthday}</td>                                   
                                </tr>
                                <tr>
                                    <th>Giới Tính:</th>
                                    <td>${acc.customer.gender}</td>
                                </tr>
                                <tr>
                                    <th>CMND/PassPort:</th>
                                    <td>${acc.customer.cmnd}</td>                                    
                                </tr>
                                <tr>
                                    <th>Điện Thoại:</th>
                                    <td>${acc.customer.phone}</td>                                    
                                </tr>
                                <tr>
                                    <th>Email:</th>
                                    <td>${acc.customer.email}</td>                                   
                                </tr>
                                <tr>
                                    <th>Địa Chỉ:</th>
                                    <td>${acc.customer.address}</td>                                    
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