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
							<h2 style="color: peru">Customer Registration</h2>
							<br />
							<br />
							<form name="myform" action="RegistrationServlet" method="post">
								<table>
									<tr>
										<th><input type="hidden" name="Customercode" placeholder="Customer Code" style="height: 30px; width: 170px"></input></th>
									</tr>
									<tr>
										<th><font color="black" size="4">Customer Name :</font></th>
										<th><input type="text" name="Customername" placeholder="Customer Name" style="height: 30px; width: 170px"></input></th>
									</tr>
									<tr>
										<th><font color="black" size="4">Password: </font></th>
										<th><input type="password" name="Password" placeholder=Password style="height: 30px; width: 170px"></input>
										</th>
									</tr>
									<tr>
										<th><font color="black" size="4">Phone No :</font></th>
										<th><input type="text" name="Phoneno" placeholder=PhoneNo style="height: 30px; width: 170px"></input></th>
									</tr>
									<tr>
										<th><font color="black" size="4">Address :</font></th>
										<th><input type="text" name="Address" placeholder=Address style="height: 30px; width: 170px"></input></th>
									</tr>
									<tr>
										<td><input type="submit" value="Register" style="height: 30px; width: 65px" /></td>
									</tr>
								</table>
							</form>
					</div>
					<center style="color: rosybrown"></center>
				</div>
				<div class="sidebar">
					<div class="clr"></div>
					<div class="g1">
						<div class="g2">
							<div class="gadget">
								<div class="clr"></div>
								<ul class="sb_menu">
									<li><a href="index.html">Home</a></li>
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