<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

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


<head>
    <title>CarTrade Registration Page</title>
</head>


<body>


<%--<form action="/SaveRegistration" method="post">--%>
<%--<br> First name :<input type="text" name="fname" id="fname"/><br>--%>
<%--<br> Last name :<input type="text" name="lname" id="lname"/><br>--%>
<%--<br> Email :<input type="text" name="email" id="email_name"/><br>--%>
<%--<br> User name :<input type="text" name="username" id="username"/><br>--%>
<%--<br> Password :<input type="text" name="password" id="password"/><br>--%>
<%--<br> <input type="submit" value="submit" id="save_data"/>--%>
<%--</form>--%>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Confirmation</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Account Registered. Now please login</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="clearData">Ok</button>
            </div>
        </div>
    </div>
</div>
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <header class="card-header">
                <h4 class="card-title mt-2">Sign up</h4>
            </header>
            <article class="card-body">
                    <div class="form-row">
                        <div class="col form-group">
                            <label>First name </label>
                            <input type="text" class="form-control" placeholder="" id="fname">
                        </div> <!-- form-group end.// -->
                        <div class="col form-group">
                            <label>Last name</label>
                            <input type="text" class="form-control" placeholder=" " id="lname">
                        </div> <!-- form-group end.// -->
                        <div class="col form-group">
                            <label>UserName</label>
                            <input type="text" class="form-control" placeholder=" " id="username">
                        </div>
                    </div> <!-- form-row end.// -->
                    <div class="form-group">
                        <label>Email address</label>
                        <input type="email" class="form-control" placeholder="" id="email_name">
                        <small class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div> <!-- form-group end.// -->


                    <div class="form-group">
                        <label>Create password</label>
                        <input class="form-control" type="password" id="password">
                    </div> <!-- form-group end.// -->
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block" id="save_data"> Register  </button>
                    </div> <!-- form-group// -->
            </article> <!-- card-body end .// -->
        </div> <!-- card.// -->
    </div> <!-- col.//-->

</div> <!-- row.//-->


</div>
<!--container end.//-->



<script type="text/javascript">
    $("#clearData").click(function(){
                     $("#fname").val("");
                     $("#lname").val("");
                     $("#email_name").val("");
                     $("#username").val("");
                     $("#password").val("");
                     $("#exampleModal").modal( "hide" );
                     window.location.href = "/login";
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
                    $("#exampleModal").modal('show');
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