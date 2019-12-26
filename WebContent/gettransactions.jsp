<%@page import="Classes.Purchase"%>
<%@page import="DaoClasses.TransactionsDao"%>
<%@page import="DaoClasses.ProductInfoDao"%>
<%@page import="java.util.ArrayList"%>
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
						<center class="s4">
							<%
								String date = request.getParameter("date");
								Purchase pur1 = new TransactionsDao().purchase(date);
							%>
							<div style="padding-right: 1in; padding-left: opx">
								<h2 style="color: #0b6c81">View Purchased Details</h2>
								<form name="myform" action="customerpurchase.jsp" method="post">
									<center>
										<table style="margin-top: 10px">
											<tr>
												<th><font color="black" size="4">Date:</font></th>
												<th><input type="text" name="Dateofpur" value="<%=date%>" style="height: 30px; width: 170px" readonly=""></input>
												</th>
											</tr>
											<tr>
												<th><font color="black" size="4">TransctionId:</font></th>
												<th><input type="text" name="TransactionID" value="<%=pur1.getTransactionID()%>" style="height: 30px; width: 170px" readonly=" "></input>
												</th>
											</tr>
											<tr>
												<th><font color="black" size="4">Customer Code:</font></th>
												<th><input type="text" name="Customercode" value="<%=pur1.getCustomercode()%>" style="height: 30px; width: 170px" readonly=""></input>
												</th>
											</tr>
											<tr>
												<th><font color="black" size="4">Item Code :</font></th>
												<th><input type="text" name="Itemcode" value="<%=pur1.getItemcode()%>" style="height: 30px; width: 170px" readonly=""></input>
												</th>
											</tr>
											<tr>
												<th><font color="black" size="4">Item Quantity :</font></th>
												<th><input type="text" name="Quantity" value="<%=pur1.getQuantity()%>" style="height: 30px; width: 170px" readonly=""></input>
												</th>
											</tr>
										</table>
									</center>
								</form>
							</div>
						</center>
						<center style="color: rosybrown"></center>
					</div>
					<div class="sidebar" style="margin-left: 22px">
						<div class="clr"></div>
						<div class="g1">
							<div class="g2">
								<div class="gadget">
									<div class="clr"></div>
									<ul class="sb_menu">
									<li><a href="index.html">Home</a></li>
									<li><a href="admin.jsp">Admin</a></li>
									<li><a href="viewtransactions.jsp">View Purchase</a></li>
									<li><a href="LogoutServlet">Logout</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="clr"></div>
</body>
</html>