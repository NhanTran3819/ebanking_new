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
        <link href="../css/style_1.css" rel="stylesheet" type="text/css"/>
        <script src="js/popper.min.js" type="text/javascript"></script>
          	
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
							<li><i class="fa fa-phone"></i><span> +084987888888 </span></li> 
							<li><a href="mailto:example@mail.com"><i class="fa fa-envelope-o"></i><span>ebanking@gmail.com</span></a></li>
						</ul>
						<div class="clearfix"> </div> 	 
					</div>
					<div class="agile_social_banner">
						<ul class="agileits_social_list">
							<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="agile_twitter"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
							
						</ul>
					</div>  

				</div>
				<div class="clearfix"> </div> 
			</div>	
		</div>	
	</div>	
	<!-- //header -->  
	<!-- banner -->
	
		<div class="header2-nav"><!-- header-three --> 	
			<nav class="navbar navbar-default">
				
				<!-- top-nav -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.html" class="active">Register</a></li>						
							
						<li><a href="register.html" class="scroll">Login</a></li>
					</ul>  
					
				</div>
			</nav>    
		</div>
		
	
    </header>
    