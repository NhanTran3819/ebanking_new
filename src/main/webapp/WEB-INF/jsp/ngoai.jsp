<%@page contentType="text/html"  pageEncoding="utf-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<%@ include file="/includes/header_ngoai.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<section>
   
            <br>
    <div class="container-fluid">
    <div class="col-md-2">
            
    </div>
        <div class="col-md-8"><br>
                <h1 style="color:  #08088A;font-weight: bold">&ensp;&ensp;CHUYỂN TIỀN KHÁC NGÂN HÀNG</h1> 
                    <div class="sub_container">
                        
        <mvc:form modelAttribute="transactionAccountExt" method="POST" action="${action}">
            <table>
                 <tr>
                    <th>From Account: </th>
                    <td>
                        <input type="text" class="form-control" name="fromAccount" value="${acc.accountNo}">
                    </td>
                </tr>
                <tr>
                    <th>Bank: </th>
                    <td>
                        <mvc:select id="bank" name="bank" path="bank" onchange="myFunction()" >
                           <mvc:option value="0" label="-----select-----" />
                           <mvc:options items="${extBankList}" />
                        </mvc:select>
                    </td>
                </tr>
                
                <tr>
                    <th>Branch: </th>
                    <td>
                        <mvc:select id="branch" name="branch" path="branch">
                           <mvc:option value="0" label="-----select-----" />
                           <mvc:options items="${branchList}" />
                        </mvc:select>
                    </td>
                </tr>
                
                <tr>
                    <th>To Account: </th>
                    <td><input type="text" class="form-control" name="accountNo" required></td>
                </tr>
                <tr>
                    <th>To Account Name(*): </th>
                    <td><input type="text" class="form-control" name="accountName" required></td>
                </tr>
                <tr>
                    <th>Amount(*): </th>
                    <td><input type="text" class="form-control" name="amount" required></td>
                </tr>
                <tr>
                    <th>Fee(*): </th>
                    <td><input type="text" class="form-control" name="fee" required></td>
                </tr>
                <tr>
                    <th>Content(*): </th>
                    <td><input style="height: 80px" type="text" class="form-control" name="content" required></td>
                </tr>
                    <th></th>
                    <td>
                        <button type="submit" id="submit" class="btn btn-primary">Submit</button>
                    </td>
                </tr>
            </table>
        </mvc:form>
                    </div>
         </div>
 
        <div class="col-md-2">
            
        </div>        
    </div>            

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>