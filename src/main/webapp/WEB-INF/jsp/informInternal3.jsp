

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="entity.AccountEntity" id="acc" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <title>eBanking</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js" type="text/javascript"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>  	
        <script src="https://www.google.com/recaptcha/api.js?hl=vi"></script>
    </head>
    <body>
        
        <div class="container-fluid">
            <div class="row" id="banner">
                <div class="col-md-3">
                    
                </div>
                <div class="col-md-9">
                    <h1 style="color: blue ">EBANKING-NGÂN HÀNG TRỰC TUYẾN</h1>
                    <h3 style="color: blue">*&emsp;Tiện ích mọi nơi- Tiện lợi hàng đầu</h3>
                </div>
            </div>
            <div class="row" id="nav">
                <div class="col-md-10">
                    
                </div>
                <div class="col-md-2">
                  <h3 style="float: right"><a href="dangky.jsp">Đăng ký</a></h3>  
                </div>                                                   
            </div>
            <div class="row" id="section">
                <div class="col-md-3" id="menu">
                    <div class="s1">
                        *&emsp;<a href="thongtinkhachhang"><strong>THÔNG TIN KHÁCH HÀNG</strong></a>
                    </div>
                    <div class="s2">
                        *&emsp;<a href="thongtintaikhoan"><strong>THÔNG TIN TÀI KHOẢN</strong></a>
                    </div>
                    <div class="s3">
                        *&emsp;<a href="tranferMoney"><strong>CHUYỂN TIỀN</strong></a>
                    </div>
                    <div class="s4">
                        *&emsp;<a href="sodu"><strong>XEM SỐ DƯ</strong></a>
                    
                    </div>
                    <div class="s5">
                        *&emsp;<a href="lietkegiaodich"><strong>XEM SAO KÊ TÀI KHOẢN</strong></a>
                    </div>
                    <div class="s6">
                        *&emsp;<a href="doipassword"><strong>ĐỔI MẬT KHẨU</strong></a>
                    </div>
                    <div class="s7">
                        *&emsp;<a href="logout"><strong>THOÁT</strong></a>
                    </div>
                </div>
                <div class="col-md-7">
                    <br>
                    <h2>THÔNG TIN TÀI KHOẢN</h2> 
                    <div class="container">
                        
                        <form action="${action}" method="POST">
                            <div class="form-group">
                                <label for="text">Tài Khoản Nhận:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="toAccount" value="${toAccount}">
                            </div>
                            <div class="form-group">
                                <label for="text">Tên Người Nhận:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="accName" value="${accName}">
                            </div>
                            <div class="form-group">
                                <label for="date">Số Tiền:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="amount" value="${amount}">
                            </div>
                            <div class="form-group">
                                <label for="text">Nội Dung:</label>
                                
                                <input  style=" border: #ffffff" type="text" name="content" value="${content}">
                            </div>
                            <div class="form-group">
                                <label for="text">Enter code OTP:</label>
                                <input  type="text" name="otp" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            
                        <form>
                    </div>
                </div>
                
                <div class="col-md-2">
                    
                </div> 
            </div>
            <div class="row" id="footer">
                <div class="col-md-4">
                    
                </div>
                <div class="col-md-4">
                  <p>&copy; Copyright by Phạm Thanh Phong.  All rights reserved.</p>  
                </div>
                <div class="col-md-4">
                    
                </div> 
            </div>
            
        </div>
    </body>
</html>
