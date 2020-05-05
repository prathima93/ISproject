<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<script type="text/javascript"
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />


<head>
    <title>Car Login Page</title>
</head>
<style>
    #email_name {
        margin-left: 30px;
    }
</Style>

<body>
<div id="dialog1" title="Confirmation" hidden="hidden">Successfully Registered, Please login again</div>
<h1>Please login Here</h1><br>
<font color="red">${errorMessage}</font>
<form action="/login" method="post">
    Name : <input type="text" name="name" /> Password : <input
        type="password" name="password" /> <input type="submit" id="savedata2"/>
</form><br>
<h1>New Users Please Register Here</h1>
<%--<form action="/SaveRegistration" method="post">--%>
<br> First name :<input type="text" name="fname" id="fname"/><br>
<br> Last name :<input type="text" name="lname" id="lname"/><br>
<br> Email :<input type="text" name="email" id="email_name"/><br>
<br> User name :<input type="text" name="username" id="username"/><br>
<br> Password :<input type="text" name="password" id="password"/><br>
<br> <input type="submit" value="submit" id="save_data"/>
<%--</form>--%>


<script type="text/javascript">
    $( "#dialog1" ).dialog({
        autoOpen: false,
        buttons: {
            Ok: function() {
                $("#fname").val("");
                $("#lname").val("");
                $("#email_name").val("");
                $("#username").val("");
                $("#password").val("");
                $( this ).dialog( "close" );
            }
        }
    });
    $(document).ready(function () {

        $("#save_data").click(function () {
            var requestData = {
                fname: $('#fname').val(),
                lname: $('#lname').val(),
                email: $('#email_name').val(),
                username: $('#username').val(),
                password: $('#password').val()
            };

            $.ajax({
                type: "POST",
                contentType : 'application/json; charset=utf-8',
                url: "/SaveRegistration",
                data: JSON.stringify(requestData), // Note it is important
                success: function (data) {
                    $("#dialog1").dialog("open");
                },
                error: function (jqXHR, exception) {
                    console.log(jqXHR);
                    // Your error handling logic here..
                }

            });
        });

    });
</script>

</body>


</html>