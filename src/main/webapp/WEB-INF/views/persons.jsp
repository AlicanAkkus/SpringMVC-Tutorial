<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<html>
<head>
	<title>Persons</title>
</head>
<body>


	<c:if test="${not empty persons}">

		<ul>
			<c:forEach var="PersonValue" items="${persons}">
				<li>${PersonValue.name}</li>
			</c:forEach>
		</ul>

	</c:if>

</body>
</html>
