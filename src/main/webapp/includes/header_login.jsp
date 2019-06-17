<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/main.css">
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js" type="text/javascript"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>  
        <script src="https://www.google.com/recaptcha/api.js?hl=vi"></script>
        <script>  
            $(document).ready(function () {  
                $("#btnGetCaptcha").prop("disabled", true);  
            var iNumber = Math.floor(Math.random() * 10000);  
                $("#divGenerateRandomValues").css({ "background-image": 'url(../img/captcha.png)', 'width': '100px', 'height': '40px' });  
                $("#divGenerateRandomValues").html("<input id='txtNewInput'></input>");  
                $("#txtNewInput").css({ 'background': 'transparent', 'font-family': 'cursive','text-decoration': 'line-through', 'font-style': 'oblique', 'font-size': '30px' });  
                $("#txtNewInput").css({ 'width': '100px', 'border': 'none', 'color': 'white' });  
                $("#txtNewInput").val(iNumber);  
                $("#txtNewInput").prop('disabled', true);  
  
                $("#btnGetCaptcha").click(function () {  
                    if ($("#textInput").val() != iNumber) {  
                          
                    }  
                    else {  
                        
                    }  
                    });  
            var  wrongInput = function () {  
                if ($("#textInput").val() != iNumber) {  
                    return true;  
                    }  
                else {  
                    return false;  
                    }  
                };  
                $("#textInput").bind('input', function () {                  
                    $("#btnGetCaptcha").prop('disabled', wrongInput);  
                });  
            });  
        </script>  
        <style>
            section form{
                border: 2px solid #848484;
                background: white;
                
                width: 300px;
                height: 400px;
                border-radius: 5px 5px 5px 5px;
            }
        </style>    
    </head>
    <body>
         <header>
        
             <div style="background: #04B4AE" class="headerw3-agile"> 
		<div class="header-w3mdl"><!-- header-two --> 
			<div class="container"> 
				<div class="agileits-logo navbar-left">
					<h1><a href="index.html"><img src="images/e.png" alt="logo"/>Banking</a></h1> 
				</div> 
				<div class="agileits-hdright nav navbar-nav">
					<div class="header-w3top"><!-- header-top --> 
						<ul class="w3l-nav-top">
							<li><i class="fa fa-phone"></i><span> +084 987888888 </span></li> 
							<li><a href="mailto:example@mail.com"><i class="fa fa-envelope-o"></i><span>ebanking@gmail.com</span></a></li>
						</ul>
							 
					</div>
					

				</div>
				 <marquee>
                                            <h1 style="color: white">ebanking.com.vn &emsp; Any Time, AnyWhere</h1>                                                                                        
                                        </marquee>
			</div>	
		</div>	
	</div>	
    </header>
    <nav id="nav_bar">
        <ul>
            <li><a style="color: white" href="loginSecurity">Management</a></li>
            <li><a style="color: white" href="newAccount">Đăng ký</a></li>
            <li><a style="color: white" href="login">Đăng Nhập</a></li>        
        </ul>
    </nav>
    </body>
</html>
