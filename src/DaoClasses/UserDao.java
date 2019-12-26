package DaoClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import Classes.Customer;
import DbConnection.MySQLConnUtils;

public class UserDao {

	public String login(String Customername, String Password) {
		try {
			Connection con = MySQLConnUtils.getMySQLConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(
					"select * from customer where Customername='" + Customername + "' and Password='" + Password + "'");
			if (rs.next()) {
				return Customername;
			}
		} catch (Exception e) {
			System.out.println("Error in userlogin.jsp" + e.getMessage());
		}
		return null;
	}

	public Customer getCustomerDetails(String Customername) {
		try {
			Connection con = MySQLConnUtils.getMySQLConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(
					"select * from customer where Customername='" + Customername + "'");
			if (rs.next()) {
				Customer customer = new Customer(rs.getInt("Customercode"), rs.getString("Customername"), rs.getInt("Phoneno"), rs.getString("Address"), rs.getString("Password"));
				return customer;
			}
		} catch (Exception e) {
			System.out.println("Error in userlogin.jsp" + e.getMessage());
		}
		return null;
	}
	
	public void saveUser(int Customercode, String Customername, int Phoneno, String Address, String Password) {
		try {

			Connection con = MySQLConnUtils.getMySQLConnection();
			PreparedStatement ps = con.prepareStatement("insert into customer values(?,?,?,?,?)");
			ps.setInt(1, Customercode);
			ps.setString(2, Customername);
			ps.setInt(3, Phoneno);
			ps.setString(4, Address);
			ps.setString(5, Password);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error in saving customer details" + e.getMessage());
		}
	}
}
