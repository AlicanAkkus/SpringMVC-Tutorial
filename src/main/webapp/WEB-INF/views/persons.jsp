<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<html>
<head>
<title>Persons</title>
<script
	src="<c:url value="/resources/statics/js/jquery.2.2.2.min.js" />"></script>
<script src="<c:url value="/resources/statics/js/bootstrap.min.js" />"></script>
<link href="<c:url value="/resources/statics/css/bootstrap.min.css" />"
	rel="stylesheet">
</head>
<body>

	<%-- container div begin --%>
	<div class="container">
		<%-- responsive table div begin --%>
		<div class="table-responsive">
			<%-- person table begin --%>
			<table class="table">
				<thead>
					<tr>
						<td>#</td>
						<td>NAME</td>
						<td>SURNAME</td>
						<td>GENDER</td>
						<td>AGE</td>
					</tr>
				</thead>
				<tbody>
					<c:if test="${not empty persons}">
						<c:forEach var="PersonValue" items="${persons}">
							<tr>
								<td>${PersonValue.id}</td>
								<td>${PersonValue.name}</td>
								<td>${PersonValue.surname}</td>
								<td>${PersonValue.gender}</td>
								<td>${PersonValue.age}</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
			<%-- person table end --%>
		</div>
		<%-- responsive table div end --%>
	</div>
	<%-- container div end --%>

</body>
</html>
