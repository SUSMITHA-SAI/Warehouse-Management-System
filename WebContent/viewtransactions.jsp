<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
					<center>
						<h2>
							<font color="black">View Purchase </font>
						</h2>
						<br /> <br />
						<form name="myform" action="gettransactions.jsp" method="post">
							<table border="0">
								<tr>
									<td><font color="black">Enter Date :</font></td>
									<td><input type="text" autocomplete="off" name="date" required="" /></td>
								</tr>
								<tr rowspan="2" align="center">
									<td><br /> <input type="submit" name=submit value="    Search    " /></td>
								</tr>
								<tr></tr>
							</table>
						</form>
					</center>
				</div>
				<div class="sidebar">
					<div class="clr"></div>
					<div class="g1">
						<div class="g2">
							<div class="gadget">
								<div class="clr"></div>
								<ul class="sb_menu">
									<li><a href="index.html">Home</a></li>
									<li><a href="admin.jsp">Admin</a></li>
									<li><a href="LogoutServlet">Logout</a></li>
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
