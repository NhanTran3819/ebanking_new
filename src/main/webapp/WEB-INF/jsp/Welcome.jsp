<%@page contentType="text/html"  pageEncoding="utf-8" %>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<%@ include file="/includes/header3.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<section>
   <div class="container-fluid">
            <div class="row">
               <br><br>
               <h2 style="font-size: 200%;font-weight: bold;color: blue;text-align: center"><marquee>WELCOME TO EBANKING</marquee></h2>  
            </div>
            
            <div class="row">
               <br><br>
                   <div class="col-md-6"><br>
                       <h3><strong>Khách Hàng Cá Nhân</strong></h3><br>
                    <div>
                        *&emsp;<a href="#"><strong>Thẻ</strong></a>
                    
                    </div>
                    <div>
                        *&emsp;<a href="#"><strong>Tiết Kiệm</strong></a>
                    </div>
                    <div>
                        *&emsp;<a href="#"><strong>Cho Vay Cá Nhân</strong></a>
                    </div>
                    <div>
                        *&emsp;<a href="#"><strong>Thông Tin Dịch Vụ</strong></a>
                    </div>
                </div>
                <div class="col-md-6"><br>
                    <h3><strong>Khách Hàng Doanh Nghiệp</strong></h3><br>
                    <div>
                        *&emsp;<a href="#"><strong>Kinh Doanh Vốn</strong></a>
                    
                    </div>
                    <div>
                        *&emsp;<a href="#"><strong>Ngân Hàng Đại Lý</strong></a>
                    </div>
                    <div>
                        *&emsp;<a href="#"><strong>Cho Vay Doanh Nghiệp</strong></a>
                    </div>
                    <div>
                        *&emsp;<a href="#"><strong>Bảo Lãnh</strong></a>
                    </div>
                    <div>
                        *&emsp;<a href="#"><strong>Thông Tin Dịch Vụ</strong></a>
                    </div>
                </div>
           
            </div>      
                    
               
                
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>