<!DOCTYPE html>
<html lang="en">

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

.py-5{
height:140%
}

.py-6{
position: fixed;
bottom: 0px;
}


/* .container {
  position: relative;
  min-height: 100vh;
} */

#content-wrap {
  padding-bottom: 2.5rem;    /* Footer height */
}

#footer {
  position: absolute;
  bottom: 0;
  width: 100%;
 // height: 2.5rem;            /* Footer height */
}

.postion-b-0 {
	bottom: 0;
}
</style>

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Car Trade</a>
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
					<li class="nav-item"><a class="nav-link" href="/login">logout</a>
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
					<a href="/buyCar" class="list-group-item">Buy a Car</a> <a
						href="/sellCar" class="list-group-item">Sell Your Car</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">



				<!-- Header - set the background image for the header in the line below -->
				<header class="py-5 bg-image-full"
					style="background-image: url('/images/Porsche.jpg');">
				</header>

				<!-- Content section -->
				<section class="py-5">
					<div class="container">
						<h1>Car Trade</h1>
						<p class="lead">The New Way to buy and sell your car online</p>
					</div>
				</section>

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

</body>

</html>
