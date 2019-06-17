<%@page contentType="text/html" pageEncoding="utf-8" %>
<!doctype html>

<html>
<head>
    <meta charset="utf-8">
    <title>Ebanking</title>
    
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
            table, th, td {
                border:1px solid black;
                text-align: center;
                border: 2px solid black;
            }
            th{font-style: normal;
               font-weight: bold;
               color: black;
               text-align: center;
               background-color: #99ffff;
            }
            table{
                margin-top: 10px;
                width: 950px;
                border-collapse: collapse;
                border: 2px solid black;
            }
            button{
                color: blue
            }
        </style>
        
</head>
<% request.setCharacterEncoding("UTF-8"); %>
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
				 
			</div>	
		</div>	
	</div>	
    </header>
    <nav id="nav_bar"><a style="color: white; float: left" href="loginSecurity"></a>
        <ul>
            <li><a style="color: white" href="loginSecurity">Management</a></li>
            <li><a style="color: white" href="newAccount">Đăng ký</a></li>
            <li><a style="color: white" href="login">Đăng Nhập</a></li>      
        </ul>
    </nav>