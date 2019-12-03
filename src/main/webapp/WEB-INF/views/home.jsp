<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>
<html>
<title>Home</title>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
<style>
body {
	font-family: 'Georgia', sherif;
}
</style>
</head>
<body>
	<div class="container">
		<button onclick="window.location.href='list'" class="btn btn-primary">Student
			List</button>
		${student.fname}
		<table>
			<form:form action="save" modelAttribute="student" method="post">
				<form:hidden path="id" />
				<form:hidden path="isDeleted" value="false" />
				<tr>
					<td>First Name:</td>
					<%-- 					<td><form:input path="fname" /></td> --%>
					<td><input type="text" name="fname" value="${student.fname}"></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<%-- 					<td><form:input path="lname" /></td> --%>
					<td><input type="text" name="lname" value="${student.lname}"></td>
				</tr>
				<tr>
					<td>Email:</td>
					<%-- 					<td><form:input path="email" /></td> --%>
					<td><input type="email" name="email" value="${student.email}"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<%-- 					<td><form:password path="password" /></td> --%>
					<td><input type="password" name="password"
						value="${student.password}"></td>
				</tr>
				<tr>
					<td></td>
					<td><button class="btn btn-primary">Submit</button></td>
				</tr>
			</form:form>

		</table>

	</div>
</body>
</html>
