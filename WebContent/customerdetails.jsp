<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="DaoClasses.ProductInfoDao"%>
<%@page import="DaoClasses.CustomerInfoDao"%>
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
<style>
*{
  box-sizing: border-box;
}
	.column {
	  float: left;
	  width: 50%;
	  padding: 10px;
	  height: 300px; 
	}							<div style="padding-right: 1in; padding-left: opx">
	.row:after {
	  content: "";
	  display: table;
	  clear: both;
	}
	
	.buttons {
     display:flex;
  justify-content:flex-end;
  align-items:center; 
} 
</style>
</head>
<body>
                            <%
								int Customercode = Integer.parseInt(request.getParameter("Customercode"));
                                int Itemcode = Integer.parseInt(request.getParameter("Itemcode"));
								ArrayList<String> customer = new CustomerInfoDao().customerdetails(Customercode);
								ArrayList<Object> product = new ProductInfoDao().productdetails(Itemcode);
							%>
<div class="row">
  <div class="column" style="background-color:white;">
  <h2 align=center>Item Details</h2>
     <form name="myform" action="customerpurchase.jsp" method="post" >  
      <table align=center>      
        <tr>
            <th><font color="black" size="4">Item Code:</th>
            <th><input type="text" name="Itemcode" value="<%=Itemcode%>"  style="height:30px; width:170px"></input></th>
        </tr>
       <tr>
            <th><font color="black" size="4">Item Name:</th>
             <th><input type="text" name="Itemname" value="<%=product.get(0)%>"  style="height:30px; width:170px"></input></th>
        </tr>
        <tr>
            <th><font color="black" size="4">Item Price :</th>
            <th><input type="text" name="Itemprice" value="<%=product.get(1)%>" style="height:30px; width:170px"></input></th>
        </tr>  
         <tr>
            <th><font color="black" size="4">Stock :</th>
            <th><input type="text" name="Stock" value="<%=product.get(2)%>" style="height:30px; width:170px"></input></th>
        </tr> 
</table>        
  </div>
  <div class="column" style="background-color:white;">
    <h2 align=left>Customer Details</h2>
      <table>       
       <tr>
	       <th><font color="black" size="4">Customer Code:</font></th>
	       <th><input type="text" name="Customercode" value="<%=Customercode%>" style="height: 30px; width: 170px"></input></th>
	  </tr>
	  <tr>
	       <th><font color="black" size="4">Customer Name:</font></th>
		   <th><input type="text" name="Customername" value="<%=customer.get(0)%>" style="height: 30px; width: 170px"></input></th>
	 </tr>
	 <tr>
		   <th><font color="black" size="4">Phone No :</font></th>
		   <th><input type="text" name="Phoneno" value="<%=customer.get(1)%>" style="height: 30px; width: 170px"></input></th>
	 </tr>
	 <tr>
		   <th><font color="black" size="4">Address:</font></th>
		   <th><input type="text" name="Address" value="<%=customer.get(2)%>" style="height: 30px; width: 170px"></input></th>
	 </tr>
	 <tr>
		   <th><font color="black" size="4">Quantity:</font></th>
		   <th><input type="text" name="Quantity" style="height: 30px; width: 170px"></input></th>
	 </tr>
	 <tr>
		   <td><input type="submit" value="submit" style="height: 30px; background-color: grey; width: 65px" /></td>
	</tr>									
</table> 
</form>	    	
</div> 
<ul>
<li><a href="cutomerhome.jsp">Home</a></li>
<li><a href="customerviewitem.jsp">View Items</a></li>
<li><a href="index.html">Logout</a></li>
</ul>
</div>
</body>
</html>