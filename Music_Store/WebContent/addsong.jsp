<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Add song</title>
<meta name="description" content="Responsive, Bootstrap, BS4">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1">
<link rel="stylesheet" href="assets/css/site.min.css">
</head>
<body class="layout-row bg-dark">
	<div class="d-flex flex-column flex">
		<div class="row no-gutters h-100">
			<div class="col-md-6 bg-dark bg-img"
				style="background-image: url(assets/img/b6.jpg)">
				<div class="p-3 p-md-5 d-flex flex-column h-100">
					<h4 class="mb-3 text-white">Music</h4>
					<div class="text-fade">Music Web Application</div>
					<div class="d-flex flex align-items-center justify-content-center"></div>
					<div class="d-flex text-sm text-fade">
						<a href="index.html" class="text-white">About</a> <span
							class="flex"></span> <a href="#" class="text-white mx-1">Terms</a>
						<a href="#" class="text-white mx-1">Policy</a>
					</div>
				</div>
			</div>
			<div class="col-md-6" id="content-body">
				<div class="p-3 p-md-5">
					<h5>Add Song</h5>


					<form class="" role="form"
						action="addSong" method="post">
						<div class="form-group">
							<label>Name</label><input type="text" name="name" class="form-control"
								placeholder="Enter Name">
						</div>
						<div class="form-group">
							<label>Album</label><input type="text" name="album" class="form-control"
								placeholder="Album">
						
						<div class="form-group">
								<label>ReleasedDate</label> <input type="text"  name="date" class="form-control"
									placeholder="Enter ReleasedDate">
							</div>
						
						<div class="form-group">
								<label>Price</label> <input type="text"  name="price" class="form-control"
									placeholder="Enter Price">
							</div>

						</div>

						<button type="submit" class="btn btn-primary mb-4">
							Add</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="assets/js/site.min.js"></script>
</body>

</html>