<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<div class="main">
		<div class="header">
			<div class="header_resize">
				<div class="logo">
					<br />
					<p>
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
							<%
								int j, s = 0;
								int finalprice = 0;
								int Customercode = Integer.parseInt(request.getParameter("Customercode"));
								int Itemcode = Integer.parseInt(request.getParameter("Itemcode"));
								String Itemname = request.getParameter("Itemname");
  								int Itemprice = Integer.parseInt(request.getParameter("Itemprice"));
								int Quantity = Integer.parseInt(request.getParameter("Quantity"));
								j = Itemprice * Quantity;
								if (j < 10) {
									finalprice = j;
								} else if (j >= 10 && j <= 100) {
									s = 100 - 10;
									finalprice = (s * j) / 100;
								} else {
									s = 100 - 20;
									finalprice = (s * j) / 100;
								}
							%>
							<h2 style="color: #0b6c81">Purchase Product</h2>
							<form name="myform" action="CustomerServlet" method="post">
									<table>
										<tr>
											<th><font color="black" size="4">Customer Unique ID:</font></th>
											<th><input type="text" name="Customercode" value="<%=Customercode%>" style="height: 30px; width: 170px"></input></th>
										</tr>
										<tr>
											<th><font color="black" size="4">Item Code :</font></th>
											<th><input type="text" name="Itemcode" value="<%=Itemcode%>" style="height: 30px; width: 170px"></input></th>
										</tr>
										<tr>
											<th><font color="black" size="4">Quantity :</font></th>
											<th><input type="text" name="Quantity" value="<%=Quantity%>" style="height: 30px; width: 170px"></input></th>
										</tr>
										<tr>
											<th><font color="black" size="4">Final Price :</font></th>
											<th><input type="text" name="finalprice" value="<%=finalprice%>" style="height: 30px; width: 170px"></input></th>
										</tr>
										<tr>
											<td><input type="submit" value="submit" style="height: 30px; width: 65px" /></td>
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
									<li><a href="customerhome.jsp">Home</a></li>
									<li><a href="customerviewitem.jsp">View Items</a></li>
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