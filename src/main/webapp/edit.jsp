<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Edit Note</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<h1>Edit your note</h1>
		<br>
		<%
		int notId = Integer.parseInt(request.getParameter("note_id").trim());
		Session session1 = FactoryProvider.getFactory().openSession();

		Note note = (Note) session1.get(Note.class, notId);
		%>

		<!--  Notes Form  -->
		<form action="UpdateServlet" method="post">
		
		<input value="<%=note.getId()%>" name= "noteId" type="hidden">

			<div class="form-group">
				<label for="title">Note Title</label> <input name="title"
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Title" value="<%= note.getTitle() %>" required>
			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" class="form-control" id="content"
					placeholder="Enter Content" style="height: 300px" required><%= note.getContent() %></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success float-right">Add</button>
			</div>
		</form>


	</div>

</body>
</html>