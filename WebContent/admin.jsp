<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
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
	<div class="main">
		<div class="header">
			<div class="header_resize">
				<div class="logo">
					<br />
					<p style="">
						<font size="5" color="black"> WAREHOUSE MANAGEMENT SYSTEM</font>
					</p>
				</div>
				<div class="clr"></div>
			</div>
		</div>
		<div class="content">
			<div class="content_resize">
				<div class="mainbar">
					<div class="article">
						<div class="clr"></div>
						<div class="clr"></div>
					</div>
						<h2>
							<font color="black">Admin Login </font>
						</h2>
						<br /> <br />
						<form name="myform" action="AdminHome" method="post">
							<table>
								<tr>
									<td><font color="black"> User Name :</font></td>
									<td><input type="text" autocomplete="off" name="Username"/></td>
								</tr>
								<tr>
									<td><font color="black">Password :</font></td>
									<td><input type="password" autocomplete="off" name="Password"/></td>
								</tr>
								<tr rowspan="2" align="center">
								<td><br/> <input type="submit" name="submit"value="Login"/></td>
								</tr>
								<tr></tr>
							</table>
						</form>
				</div>
				<div class="sidebar">
					<div class="clr"></div>
					<div class="g1">
						<div class="g2">
							<div class="gadget">
								<div class="clr"></div>
								<ul class="sb_menu">
								</ul>
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
