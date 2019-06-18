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
               function myFunction() {
                   var x = document.getElementById("bank").value;
                   var url="getBranch?bank="+x;
                   window.location.assign(url);
               }
               
            </script>
        <style>
            section form{
                border: 2px solid white;
                
                width: 500px;
                background: white;
                border-radius: 5px 5px 5px 5px;
            }
            section form th{
                background: #99ffff;
                border: 2px solid white;
                
                
            }
            section form td{

                border: 2px solid white;
            }
            section form table{
                border: 2px solid white;
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
    <nav id="nav_bar"><a style="color: white; float: left" href="loginSecurity">&emsp;<strong>bank.com.vn</strong></a>
        <ul>
            <li><a style="color: white" href="loginSecurity">Management</a></li>
            <li><a style="color: white" href="newAccount">Đăng ký</a></li>
            <li><a style="color: white" href="login">Đăng Nhập</a></li>      
        </ul>
    </nav>