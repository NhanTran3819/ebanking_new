<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header_pass.jsp" %>
<%@ include file="/includes/column_left_home_1.jsp" %>

<section>         
            <br>
            <div class="col-md-4">
                
            </div>
                <div class="col-md-6"><br>
                    <h1 style="color:  #08088A; font-weight: bold">&emsp;&emsp;ĐỔI PASSWORD</h1> <br>
                    <div class="sub_container">
                        <form action="${action}" method="POST" style="background: #00ffff">
                            <div class="form-group">
                                <label for="pwd">&ensp;Mật Khẩu Cũ :</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Nhập mật khẩu" name="oldPass" required>
                            </div>
                            <div class="form-group">
                                <label for="pwd">&ensp;Mật Khẩu Mới:</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Nhập mật khẩu mới" name="newPass1" required>
                            </div>
                            <div class="form-group">
                                <label for="pwd">&ensp;Nhập lại Mật Khẩu Mới:</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Nhập lại mật khẩu mới" name="newPass2" required>
                            </div>
                            
                            
                            <div>
                                <br/>
                                <button style="margin-left: 10px" type="submit" class="btn btn-primary" >&ensp;Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            <div class="col-md-2">
                
            </div>
                
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>