<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DaoClasses.ProductInfoDao"%>
<%@page import="Classes.Item"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*"%>
<%@ page session="true"%>
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
		if (request.getParameter("msg1") != null) {
	%>
	<script>
		alert('Sorry try Again!');
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
							<h1 style="color: green">View Items</h1>
							<br />
							<table border="1" width="80%">
								<tr style="color: red">
									<th>Item Code</th>
									<th>Item Name</th>
									<th>Item Price</th>
									<th>Stock</th>
								</tr>
								<%
									List<Item> items = (ArrayList<Item>) session.getAttribute("viewitems");
									for (Item item : items) {
								%>
								<tr style="color: black">
									<td><%=item.getItemcode()%></td>
									<td><%=item.getItemname()%></td>
									<td><%=item.getItemprice()%></td>
									<td><%=item.getStock()%></td>
								</tr>
								<%
									}
								%>
							</table>
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
									<li><a href="customerhome.jsp">Home</a></li>
									<li><a href="PurchaseServlet">Purchase details</a></li>
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