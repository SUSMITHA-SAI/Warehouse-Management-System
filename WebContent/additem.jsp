<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
	<%
		if (request.getParameter("m3") != null) {
	%>
	<script>
		alert('Added Success');
	</script>
	<%
		}
		if (request.getParameter("m4") != null) {
	%>
	<script>
		alert('Failed');
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

				<div class="clr"></div>
			</div>
		</div>
		<div class="content">
			<div class="content_resize">
				<div class="mainbar">
					<div class="article">
							<h2>
								<font color="black">Add Items </font>
							</h2>
							<br><br>
							<form name="myform" action="AddItemsServlet" method="post">
								<table>
									<tr>
										<th><font color="black" size="4">Item Code :</font></th>
										<th><input type="text" name="Itemcode" placeholder="Item Code" style="height: 30px; width: 170px"></input></th>
									</tr>
									<tr>
										<th><font color="black" size="4">Item Name :</font></th>
										<th><input type="text" name="Itemname" placeholder="Item Name " style="height: 30px; width: 170px"></input></th>
									</tr>
									<tr>
										<th><font color="black" size="4">Item Price:</font></th>
										<th><input type="text" name="Itemprice" placeholder="Item Price" style="height: 30px; width: 170px"></input></th>
									</tr>
									<tr>
										<th><font color="black" size="4">Stock:</font></th>
										<th><input type="text" name="Stock" placeholder="Stock" style="height: 30px; width: 170px"></input></th>
									</tr>
									<tr>
										<td><input type="submit" value="Add"style="height: 30px; width: 65px" /></td>
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
									<li><a href="adminhome.jsp">Home</a></li>
									<li><a href="viewitem.jsp">View Items</a></li>
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