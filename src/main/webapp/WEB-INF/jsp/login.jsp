<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<head>
<title>First Web Application</title>
</head>

<body>
    <h1>Please login Here</h1><br>
	<font color="red">${errorMessage}</font>
	<!-- <form method="post">
		Name : <input type="text" name="name" /> Password : <input
			type="password" name="password" /> <input type="submit" id="savedata2"/>
	</form><br>
	 -->
	<h1>New Users Please Register Here</h1>
	<form action="/SaveRegistration" method="post">
		<br> First name :<input type="text" name="fname" id="fname" /><br>
		<br> Last name :<input type="text" name="lname" id="lname" /><br>
		<br> Email :<input type="text" name="email" id="city_name" /><br>
		<br> User name :<input type="text" name="email" id="email" /><br>
		<br> <input type="submit" value="submit" id="save_data" />
		</form>

	
	<script type="text/javascript">
		$(document).ready(function() {
			
			
			
			/* $("#save_data").click(function() {
				var requestData = {
						fname : $('#fname').val(),
						lname : $('#lname').val(),
						city_name : $('#city_name').val(),
						email : $('#email').val() 
				      };
				//alert( JSON.stringify(requestData));
				$.ajax({
					url : "/SaveRegistration",
					type : "post",
					
				});
			}); */
		});
	</script>

</body>


</html>