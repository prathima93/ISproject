
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

<title>Checkout example for Bootstrap</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.0/examples/checkout/">

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

<!-- Custom styles for this template -->
<link href="css/formValidation.css" rel="stylesheet">
<style>
body {
	padding-bottom: 56px;
}

.py-6 {
	position: fixed;
	bottom: 0px;
	left: 0px;
}
</style>
</head>

<body class="bg-light">

	<!-- Modal -->
	<div class="modal fade" id="paymentModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Payment
						Successful</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>Thank you for your order.You will receive your car soon!!</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="clearData">Ok</button>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="py-5 text-center">
			<h2>Checkout form</h2>
			<p class="lead">Proceed to check out</p>
		</div>

		<div class="row">

			<div class="col-md-8 order-md-1">
				<h4 class="mb-3">Billing address</h4>
				<form id="submit-button" class="needs-validation" novalidate>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="firstName">First name</label> <input type="text"
								class="form-control" id="firstName" placeholder="" value=""
								required>
							<div class="invalid-feedback">Valid first name is required.
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="lastName">Last name</label> <input type="text"
								class="form-control" id="lastName" placeholder="" value=""
								required>
							<div class="invalid-feedback">Valid last name is required.
							</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="email">Email <span class="text-muted">(Optional)</span></label>
						<input type="email" class="form-control" id="email"
							placeholder="you@example.com">
						<div class="invalid-feedback">Please enter a valid email
							address for shipping updates.</div>
					</div>

					<div class="mb-3">
						<label for="address">Address</label> <input type="text"
							class="form-control" id="address" placeholder="1234 Main St"
							required>
						<div class="invalid-feedback">Please enter your shipping
							address.</div>
					</div>

					<div class="mb-3">
						<label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
						<input type="text" class="form-control" id="address2"
							placeholder="Apartment or suite">
					</div>

					<div class="row">
						<div class="col-md-5 mb-3">
							<label for="country">Country</label> <select
								class="custom-select d-block w-100" id="country" required>
								<option value="">Choose...</option>
								<option>United States</option>
							</select>
							<div class="invalid-feedback">Please select a valid
								country.</div>
						</div>
						<div class="col-md-4 mb-3">
							<label for="state">State</label> <select
								class="custom-select d-block w-100" id="state" required>
								<option value="">Choose...</option>
								<option>California</option>
							</select>
							<div class="invalid-feedback">Please provide a valid state.
							</div>
						</div>
						<div class="col-md-3 mb-3">
							<label for="zip">Zip</label> <input type="text"
								class="form-control" id="zip" placeholder="" required>
							<div class="invalid-feedback">Zip code required.</div>
						</div>
					</div>
					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input"
							id="same-address"> <label class="custom-control-label"
							for="same-address">Shipping address is the same as my
							billing address</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="save-info">
						<label class="custom-control-label" for="save-info">Save
							this information for next time</label>
					</div>
					<hr class="mb-4">

					<h4 class="mb-3">Payment</h4>

					<div class="d-block my-3">
						<div class="custom-control custom-radio">
							<input id="credit" name="paymentMethod" type="radio"
								class="custom-control-input" checked required> <label
								class="custom-control-label" for="credit">Credit card</label>
						</div>
						<div class="custom-control custom-radio">
							<input id="debit" name="paymentMethod" type="radio"
								class="custom-control-input" required> <label
								class="custom-control-label" for="debit">Debit card</label>
						</div>
						<div class="custom-control custom-radio">
							<input id="paypal" name="paymentMethod" type="radio"
								class="custom-control-input" required> <label
								class="custom-control-label" for="paypal">Paypal</label>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="cc-name">Name on card</label> <input type="text"
								class="form-control" id="cc-name" placeholder="" required>
							<small class="text-muted">Full name as displayed on card</small>
							<div class="invalid-feedback">Name on card is required</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="cc-number">Credit card number</label> <input
								type="text" class="form-control" id="cc-number" placeholder=""
								required>
							<div class="invalid-feedback">Credit card number is
								required</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 mb-3">
							<label for="cc-expiration">Expiration</label> <input type="text"
								class="form-control" id="cc-expiration" placeholder="" required>
							<div class="invalid-feedback">Expiration date required</div>
						</div>
						<div class="col-md-3 mb-3">
							<label for="cc-expiration">CVV</label> <input type="text"
								class="form-control" id="cc-cvv" placeholder="" required>
							<div class="invalid-feedback">Security code required</div>
						</div>
					</div>
					<hr class="mb-4">
					<button class="btn btn-primary btn-lg btn-block" type="submit"
						id="submitPayment">Continue to checkout</button>
				</form>
			</div>
		</div>

		<!-- Footer -->
		<footer class="py-6 bg-dark">
			<div class="container">
				<p class="m-0 text-center text-white">Copyright &copy; Your
					Website 2019</p>
			</div>
			<!-- /.container -->
		</footer>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script> -->
	<!-- <script src="../../assets/js/vendor/popper.min.js"></script>
	<script src="../../dist/js/bootstrap.min.js"></script>
	<script src="../../assets/js/vendor/holder.min.js"></script> -->
	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
			//'use strict';

						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						
						
						 /* var forms = document
								.getElementsByClassName('needs-validation');

						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										if (form.checkValidity() === true) {
											alert("Hello Zombie");

											event.
											

										}

										form.classList.add('was-validated');
									}, true);
								});  */
						
						
								
								$("#submitPayment").click(function (e) {
									 var forms = document.getElementById('submit-button');
									var isValidForm=forms.checkValidity();
									if (forms.checkValidity() === false) {
										event.preventDefault();
										event.stopPropagation();
										forms.classList.add('was-validated');
									}else{
										event.preventDefault();
										$('#paymentModal').modal('show');
									}
						            });
								
								
								$("#clearData").click(function () {
							   		 window.location.href = "/buyCar";
							   	});
						
						
						
			


	</script>
</body>
</html>
