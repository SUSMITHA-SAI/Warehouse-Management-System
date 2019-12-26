<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Item"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*"%>
<%@page import="DbConnection.MySQLConnUtils"%>
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
							<form name="myform" action="customerdetails.jsp" method="post">
									<font color="black" size="4">Customer Unique Id:</font> <input type="text" name="Customercode"
										value="<%=session.getAttribute("Customercode").toString()%>" style="height: 30px; width: 170px"></input> <br /> <br />
									<div class="form-group">
										<font color="black" size="4">Select item code:</font> <select name="Itemcode" class="custom-select">
											<option value="">Choose an item code</option>
											<%
												List<Item> viewitems = (ArrayList<Item>) session.getAttribute("viewitems");
												for (Item item : viewitems) {
											%>
											<option value="<%=item.getItemcode()%>"><%=item.getItemname()%></option>
											<%
												}
											%>
										</select>
									</div>
									<br /> <br />
										<input type="submit" value="submit"
											style="height: 30px; width: 65px" /><br />
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
									<li><a href="index.html">Logout</a></li>
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