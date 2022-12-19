<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="all_js_css.jsp"%>
<title>Note Taker : Home page</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<div class="card my-3 py-4">
			<img class="mx-auto" alt="" src="img/notepad.png"
				style="max-width: 400px;">
			<h1 class="text-primary text-uppercase text-center mt-4">Start Taking Your Notes</h1>
			<div class="container text-center mt-4">
				<a class="btn btn-outline-primary" href="add_notes.jsp" role="button">Start here</a>
			</div>

		</div>

	</div>
</body>
</html>