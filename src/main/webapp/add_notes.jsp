<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Add Notes</title>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<h1>Please fill your note details</h1>
		<br>

		<!--  Notes Form  -->
		<form action="SaveNoteServlet" method="post">

			<div class="form-group">
				<label for="title">Note Title</label> <input name="title"
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Title" required>
			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" class="form-control" id="content"
					placeholder="Enter Content" style="height: 300px" required></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary float-right">Add</button>
			</div>
		</form>

	</div>

</body>
</html>