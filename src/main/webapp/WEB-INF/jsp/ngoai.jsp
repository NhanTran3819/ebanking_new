<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@page import="java.lang.String"%>
<%@page import="repository.AccountRepository"%>
<%@page import="entity.AccountEntity"%>
<%@page import="java.util.List"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<%@ include file="/includes/header5.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<section>
   
            <br>
            
                <h2>CHUYỂN TIỀN KHÁC NGÂN HÀNG</h2> 
                    <div class="sub_container">
        <mvc:form  method="POST" action="{action}" command="ExtBankEntity">
            <table>
                <tr>
                    <th>Bank: </th>
                    <td>
                        <mvc:select path="bankName" items="${ExtBank}" itemValue="bankName" itemLabel="bankName">
                        </mvc:select>
                    </td>
                </tr>
                <tr>
                    <th>Branch: </th>
                    <td>
                        <mvc:select path="extBank.branch.id" items="${listBranch}" itemValue="id" itemLabel="address">
                        </mvc:select>
                    </td>
                </tr>

                <tr>
                    <th>To Account: </th>
                    <td><input type="text" class="form-control" name="toAccount"></td>
                </tr>
                <tr>
                    <th>To Account Name(*): </th>
                    <td><input type="text" class="form-control" name="accName"></td>
                </tr>
                <tr>
                    <th>Amount(*): </th>
                    <td><input type="text" class="form-control" name="amount"></td>
                </tr>
                <tr>
                    <th>Fee(*): </th>
                    <td><input type="text" class="form-control" name="fee"></td>
                </tr>
                <tr>
                    <th>Content(*): </th>
                    <td><input style="height: 80px" type="text" class="form-control" name="content"></td>
                </tr>
                    <th>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </th>
                </tr>
            </table>
        </mvc:form>
                    </div>
                
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>