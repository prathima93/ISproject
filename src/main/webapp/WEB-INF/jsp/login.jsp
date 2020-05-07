<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<script type="text/javascript"
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link href="css/custom.css"
        rel="stylesheet">
        
<link href="css/main.css"
        rel="stylesheet">
        
<link href="css/util.css"
        rel="stylesheet">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<script src="js/main.js"></script>


<head>
    <title>Car Login Page</title>
</head>


<body>


<%--<div id="dialog1" title="Confirmation" hidden="hidden">Successfully Registered, Please login again</div>--%>
<%--<h1>Please login Here</h1><br>--%>
<%--<font color="red">${errorMessage}</font>--%>
<%--<form action="/login" method="post">--%>
<%--    Name : <input type="text" name="name" /> Password : <input--%>
<%--        type="password" name="password" /> <input type="submit" id="savedata2"/>--%>
<%--</form><br>--%>
<div class="limiter">
		<div class="container-login100">
		<input type="hidden" id="jsonBom" value='${errorMessage}'/>
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
			<font id="fontTag" color="red">${errorMessage}</font>
				<form action="/login" method="post" class="login100-form validate-form">
					<span class="login100-form-title p-b-33">
						Account Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Username is required">
						<input class="input100" type="text" name="name" placeholder="Username">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name=password placeholder="Password">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="container-login100-form-btn m-t-20">
						<button class="login100-form-btn" type="submit">
							Sign in
						</button>
					</div>
					<div class="text-center">
						<span class="txt1">
							Create an account?
						</span>

						<a href="/carRegistration" class="txt2 hov1">
							Sign up
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script>

	(function ($) {
	   // "use strict";
       // 

	    /*==================================================================
	    [ Validate ]*/
	    var input = $('.validate-input .input100');

	    $('.validate-form').on('submit',function(event){
	        var check = true;

	        for(var i=0; i<input.length; i++) {
	            if(validate(input[i]) == false){
	            	 event.preventDefault();
	                showValidate(input[i]);
	                check=false;
	            }
	        }
               
	        return check;
	    });


	    $('.validate-form .input100').each(function(){
	        $(this).focus(function(){
	           hideValidate(this);
	        });
	    });

	    function validate (input) {
	        if($(input).attr('type') == 'name' || $(input).attr('name') == 'name') {
	        	 if($(input).val().trim() == ''){
		                return false;
		            }
	        }
	        if($(input).attr('type') == 'password' || $(input).attr('name') == 'password') {
	        	 if($(input).val().trim() == ''){
		                return false;
		            }
	        }
	        /* else {
	            if($(input).val().trim() == ''){
	                return false;
	            }
	        } */
	    }

	    function showValidate(input) {
	        var thisAlert = $(input).parent();

	        $(thisAlert).addClass('alert-validate');
	    }

	    function hideValidate(input) {
	        var thisAlert = $(input).parent();

	        $(thisAlert).removeClass('alert-validate');
	    }
	    
	   

	})(jQuery);
	
	$(function() {
	    $('form').each(function() {
	        $(this).find('input').keypress(function(e) {
	            // Enter pressed?
	            if(e.which == 10 || e.which == 13) {
	                this.form.submit();
	            }
	        });

	        $(this).find('input[type=submit]').hide();
	    });
	});
	
	</script>
</body>


</html>