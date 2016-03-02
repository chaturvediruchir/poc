<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
 --%>

<%-- <%@ page session="false"%> --%>

<link href="<%=request.getContextPath()%>/resources/css/main.css"
	rel="stylesheet" type="text/css" media="all">
<link
	href="<%=request.getContextPath()%>/resources/css/mediaqueries.css"
	rel="stylesheet" type="text/css" media="all">

<html>

<body>
	<section class="wrapper row1">

		<header id="header" class="full_width clear">
			<hgroup>
				<h1>
					<a href="<%=request.getContextPath()%>">Guidewire Integration</a>
				</h1>
				<h2>Web Editor</h2>
			</hgroup>
			<div id="header-contact">
				<ul class="list none">
					<c:set var="loggedin" value="false" />
					<sec:authorize ifAnyGranted="ROLE_USER, ROLE_POWER_USER, ROLE_ADMIN">
						<li>Welcome <span class="uppercase"> 
<%-- 						<sec:authentication	property="principal.username" var="userName" />  --%>
						${userName}
						</span> <c:set var="loggedin" value="true" />

						</li>
					</sec:authorize>
					<li><span class="icon-envelope"></span> <a
						href="mailto:vishal1975@gmail.com">Vishal Arora</a></li>
					<li><span class="icon-phone"></span>+91-9910479404</li>
					<c:if test="${loggedin}">
						<li><a href="<c:url value="/logout" />"><span
								class="icon-off"></span> Logout</a></li>
					</c:if>

					<c:if test="${not loggedin}">
						<li><span class="icon-signin"></span><a
							href="<%=request.getContextPath()%>/login">Sign-in</a></li>
					</c:if>

				</ul>
			</div>
		</header>


	</section>

</body>

</html>

