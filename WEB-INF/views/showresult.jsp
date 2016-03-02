<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Done</title>

</head>
<body>
	<%@ include file="generic/header1.jsp"%>

	<div class="wrapper row3">
		<div id="container">
			<!-- ################################################################################################ -->
			<div id="contact" class="clear">
				<h2>You have successfully saved following HTML :</h2>


				<article id="contact_us_form" class="boxholder push30 rnd8">

					<!-- 					<div id="contactus" class="boxholder push30 rnd8"> -->

					${textUpload}

					<!-- 					</div> -->
				</article>

			</div>

		</div>
	</div>
	<%@ include file="generic/footer1.jsp"%>
</body>
</html>
