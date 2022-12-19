<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Show Notes</title>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row">
			<div class="col-12">

				<%
				Session session1 = FactoryProvider.getFactory().openSession();
				Query q = session1.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card mt-3">
					<img class="card-img-top m-3 pl-4" src="img/notepad.png" alt="Card image cap" style="max-width:100px">
					<div class="card-body px-5">
						<h5 class="card-title"><%= note.getTitle() %></h5>
						<p class="card-text">
						<%= note.getContent() %>
						</p>
						<p class="text-primary"><b><%= note.getAddedDate() %></b></p>
						<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger float-right">Delete</a>
						<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary float-right mr-1">Update</a>
					</div>
				</div>



				<%
				}

				session1.close();
				%>

			</div>
		</div>


	</div>

</body>
</html>