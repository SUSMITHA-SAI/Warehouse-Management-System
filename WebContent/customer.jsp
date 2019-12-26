<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>WAREHOUSE MANAGEMENT SYSTEM</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
	<%
		if (request.getParameter("m1") != null) {
	%>
	<script>
		alert('Login Success');
	</script>
	<%
		}
		if (request.getParameter("m2") != null) {
	%>
	<script>
		alert('username/password wrong');
	</script>
	<%
		}
	%>
	<div class="main">
		<div class="header">
			<div class="header_resize">
				<div class="logo">
					<br />
					<p style="">
						<font size="5" color="black"> WAREHOUSE MANAGEMENT SYSTEM </font>
					</p>
				</div>
				<div class="clr"></div>
			</div>
		</div>
		<div class="content">
			<div class="content_resize">
				<div class="mainbar">
					<div class="article">
							<h2>
								<font color="black">Customer Login </font>
							</h2>
							<br /> <br />
							<form name="myform" action="LoginServlet" method="post">
								<table border="0">
									<tr>
										<td><font color="black"> Customer Name :</font></td>
										<td><input type="text" autocomplete="off" name="Customername" required="" /></td>
									</tr>
									<tr>
										<td><font color="black">Password :</font></td>
										<td><input type="password" autocomplete="off" name="Password" required="" /></td>
									</tr>
									<tr rowspan="2" align="center">
										<td><br /> <input type="submit" name="submit"value="Login" /></td>
									</tr>
								</table>
							</form>
							<br><a href="registration.jsp"><b style="color: brown; font-size: 20px;">Signup&login</b></a>
					</div>
					<center style="color: rosybrown"></center>
				</div>
				<div class="sidebar">
					<div class="clr"></div>
					<div class="g1">
						<div class="g2">
							<div class="gadget">
								<div class="clr"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="clr"></div>
			</div>
		</div>
	</div>
</body>
</html>
