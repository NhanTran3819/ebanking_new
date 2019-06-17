/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

            $(document).ready(function () {  
                $("#btnGetCaptcha").prop("disabled", true);  
        var iNumber = Math.floor(Math.random() * 10000);  
            $("#divGenerateRandomValues").css({ "background-image": 'url(../img/captcha.png)', 'width': '100px', 'height': '50px' });  
            $("#divGenerateRandomValues").html("<input id='txtNewInput'></input>");  
            $("#txtNewInput").css({ 'background': 'transparent', 'font-family': 'cursive','text-decoration': 'line-through', 'font-style': 'oblique', 'font-size': '30px' });  
            $("#txtNewInput").css({ 'width': '100px', 'border': 'none', 'color': 'white' });  
            $("#txtNewInput").val(iNumber);  
            $("#txtNewInput").prop('disabled', true);  
  
            $("#btnGetCaptcha").click(function () {  
                if ($("#textInput").val() != iNumber) {  
                    alert("Wrong Input!");  
                }  
                else {  
                    alert("conect input");  
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
    

