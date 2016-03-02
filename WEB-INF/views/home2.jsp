<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<%@ include file="generic/header1.jsp"%>

	<div class="wrapper row3">
		<div id="container">
			<!-- ################################################################################################ -->
			<div id="contact" class="clear">
				<h1>Hello world!!</h1>

				<P>The time on the server is ${serverTime}.</P>

<article id="contact_us_form" class="boxholder push30 rnd8">

							<!-- 					<div id="contactus" class="boxholder push30 rnd8"> -->
							<h2 class="footer_title">Rich Text</h2>
							<form:form class="rnd5" action="/textUpload" method="post" modelAttribute="textUpload">
								
								<div class="form-message">
									<textarea maxlength="200" name="queryText" id="queryText" cols="25" rows="10"></textarea>
								</div>
								<p>
									<input type="submit" value="Submit1" class="button small orange">
									&nbsp; <input type="reset" value="Reset"
										class="button small grey">
								</p>
							</form:form>

							<!-- 					</div> -->
						</article>

			</div>

		</div>
	</div>
<%@ include file="generic/footer1.jsp"%>
</body>
</html>
