<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="DbConnection.MySQLConnUtils"%>
<%@ page session="true"%>
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
					<p>
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
						<%
							String Customername = session.getAttribute("Customername").toString();
						%>
						<h1 style="color: palevioletred">
							Welcome
							<%=Customername%>
						</h1>
						<div class="clr"></div>
					</div>
				</div>
				<div class="sidebar">
					<div class="clr"></div>
					<div class="g1">
						<div class="g2">
							<div class="gadget">
								<div class="clr"></div>
								<ul class="sb_menu">
									<li><a href="customerviewitem.jsp">View Items</a></li>
									<li><a href="PurchaseServlet">view customer details</a></li>
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