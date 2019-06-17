<%@page contentType="text/html"  pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ include file="/includes/header_login.jsp" %>
<%@ include file="/includes/column_left_home_1.jsp" %>

<section>         
            <br>
            <div class="col-md-4">
                
            </div>
                <div class="col-md-6"><br>
                    <h1 style="color:  #08088A; font-weight: bold">&ensp;&ensp;&ensp;&ensp;ĐĂNG NHẬP</h1> <br>
                    <div class="sub_container">
                        <mvc:form action="${action}" method="POST">
                            <div class="form-group">
                                <label for="text">&ensp;Account ID:</label><br>
                                <input name="id" type="text" class="form-control" placeholder="Nhập tài khoản" />
                            </div>
                            <div class="form-group">
                                <label for="pwd">&ensp;Password:</label><br>
                                <input name="pass" type="password" class="form-control" placeholder="Nhập password" /><br>
                            </div>
                            <div>
                                <label>&ensp;Nhập Mã Code:</label><br>
                                <div  style="background-color: burlywood" id="divGenerateRandomValues"></div>  <br>
                                <input style="width: 19em;height: 40px; border-radius: 4px; padding-top: 0.25em; margin-bottom: 0.5em;" type="text" id="textInput"/><br>
                            </div>
                            <div>
                                <br/>
                                <button type="submit" class="btn btn-primary" id="btnGetCaptcha">Submit</button>
                            </div>
                        </mvc:form>
                    </div>
                </div>
            <div class="col-md-2">
                
            </div>
                
                

</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>