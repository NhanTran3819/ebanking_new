<%@page contentType="text/html"  pageEncoding="utf-8" %>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<%@ include file="/includes/header3.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<section>
   
            <br>
            
                <h1>Chọn Loại Hình Chuyển Tiền</h1> <br>
                    <div class="container">
                        
                            
                            <div class="form-group">
                                <a href="noibo"><strong>Chuyển Tiền Trong Cùng Ngân Hàng</strong></a>
                            </div>
                            <div class="form-group">
                                <a href="ngoai"><strong>Chuyển Tiền Khác Ngân Hàng</strong></a>
                            </div>
                            
                            
                            
                                
                        
                    </div>
                
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>