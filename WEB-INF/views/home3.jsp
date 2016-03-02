<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>

<script src="<%=request.getContextPath()%>/resources/js/tinymce/tinymce.min.js"></script>
  <script>
  tinymce.init({
    selector: "#textUpload",
    plugins: "save",
    toolbar: "save"
    
  });
  </script>
</head>
<body>
	<%@ include file="generic/header1.jsp"%>

	<div class="wrapper row3">
		<div id="container">
			<!-- ################################################################################################ -->
			<div id="contact" class="clear">
				<h1>Hello Tiny MCE</h1>

				<P>The time on the server is ${serverTime}.</P>

<article id="contact_us_form" class="boxholder push30 rnd8">

							<!-- 					<div id="contactus" class="boxholder push30 rnd8"> -->
							
		
  


  <form method="post" action="<%=request.getContextPath()%>/textUpload">
  	<input type="textarea" id="textUpload" name="textUpload"/>
    
  </form>
							
							<!-- 					</div> -->
						</article>

			</div>

		</div>
	</div>
<%@ include file="generic/footer1.jsp"%>
</body>
</html>
