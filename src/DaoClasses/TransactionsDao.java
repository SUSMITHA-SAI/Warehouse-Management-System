package DaoClasses;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import Classes.Purchase;

import DbConnection.MySQLConnUtils;

public class TransactionsDao {
	public Purchase purchase(String date) {
		try {

			Connection con = MySQLConnUtils.getMySQLConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from purchasedetails where Dateofpur='" + date + "'");
			while (rs.next()) {
				Purchase pur = new Purchase(rs.getInt("TransactionID"), rs.getInt("Customercode"), rs.getInt("Itemcode"),
						rs.getString("Dateofpur"),rs.getInt("Quantity"));
				return pur;
			}
		} catch (Exception e) {
			System.out.println("Error in userlogin.jsp" + e.getMessage());
		}

		return null;
}
}
