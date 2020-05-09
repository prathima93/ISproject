<!DOCTYPE html>
<html lang="en">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<!-- Custom styles for this template -->
<link href="shop-homepage.css" rel="stylesheet">
<style>
body {
	padding-top: 56px;
}

.py-6 {
	position: fixed;
	bottom: 0px;
}
</style>

</head>

<body>

	<!-- Modal -->
	<div class="modal fade" id="sellcarModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Estimated Quote
						for your car is</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="pickup">Request
						Pickup</button>
					<button type="button" class="btn btn-primary" id="cancel">cancel</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="pickupModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirmation</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="ok">ok</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Sell Your Car</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="/homePage">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/loginpg">logout</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">

				<h1 class="my-4">CarTrade</h1>
				<div class="list-group">
					<a href="/buyCar" class="list-group-item">Buy a Car</a> <a href="#"
						class="list-group-item">Sell Your Car</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">

				<div class="row justify-content-center">
					<div class="col-md-6">
						<div class="card">
							<header class="card-header">
								<h4 class="card-title mt-2">Enter your car details</h4>
							</header>
							<article class="card-body">
								<div class="form-row">
									<div class="form-group">
										<label>Model</label> <input type="text" class="form-control"
											placeholder="" id="model">
									</div>
									<!-- form-group end.// -->
									<div class="form-group">
										<label>Make</label> <input type="text" class="form-control"
											placeholder=" " id="make">
									</div>
									<!-- form-group end.// -->
									<div class="form-group">
										<label>Year</label> <input type="text" class="form-control"
											placeholder=" " id="year">
									</div>
								</div>
								<!-- form-row end.// -->
								<div class="form-group">
									<label>Mileage</label> <input type="text" class="form-control"
										placeholder="" id="mileage">
								</div>
								<!-- form-group end.// -->

								<div class="form-group">
									<button type="submit" class="btn btn-primary btn-block"
										id="car_data">Submit</button>
								</div>
								<!-- form-group// -->
							</article>
							<!-- card-body end .// -->
						</div>
						<!-- card.// -->
					</div>
					<!-- col.//-->

				</div>
				<!-- row.//-->

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-6 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>



	<script type="text/javascript">
    $(document).ready(function () {
    	
    	$("#cancel").click(function () {
    		 window.location.href = "/sellCar";
    	});
    	
    	$("#ok").click(function () {
   		 window.location.href = "/sellCar";
   	});
    	
    	$("#pickup").click(function () {
    		 $("#sellcarModal").modal('hide');
    		 $("#pickupModal").modal('show');
    		 $(".modal-body").html("Your pickup has been scheduled. Our representative will reach you in 3-5 business days.");
   	});

        $("#car_data").click(function () {
            var requestData = {
                make: $('#model').val(),
                model: $('#make').val(),
                year: $('#year').val(),
                mileage: $('#mileage').val()
            };

            $.ajax({
                type: "POST",
                contentType : 'application/json; charset=utf-8',
                url: "/carDetails",
                data: JSON.stringify(requestData), // Note it is important
                success: function (data) {
                    $("#sellcarModal").modal('show');
                    $(".modal-body").html("USD "+JSON.stringify(data));
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
