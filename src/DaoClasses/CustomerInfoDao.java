package DaoClasses;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import DbConnection.MySQLConnUtils;

public class CustomerInfoDao {
	public ArrayList<String> customerdetails(int customer_code) {
		ArrayList<String> customer = new ArrayList<>();

		try {

			Connection con = MySQLConnUtils.getMySQLConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from customer where Customercode='" + customer_code + "'");
			if (rs.next()) {
				customer.add(rs.getString("Customername"));
				customer.add(rs.getString("Address"));
				customer.add(rs.getString("Password"));
			} else {
				System.out.println("Error in string data");
			}
		} catch (Exception e) {
			System.out.println("Error in userlogin.jsp" + e.getMessage());
		}

		return customer;
	}

}
