package DaoClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import DbConnection.MySQLConnUtils;

public class PurchaseDetailsDao {

	public int savePurchaseInfo(int TransactionID, int Customercode, int Itemcode, String Dateofpur, int Quantity) {
		try {
			Connection con = MySQLConnUtils.getMySQLConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from itemdetails where Itemcode=" + Itemcode + "");
			int i = 0;
			if (rs.next()) {
				i = rs.getInt("Stock");
			}
			if (Quantity <= i) {
				PreparedStatement ps = con.prepareStatement("insert into purchasedetails values(?,?,?,?,?)");
				ps.setInt(1, TransactionID);
				ps.setInt(2, Customercode);
				ps.setInt(3, Itemcode);
				ps.setString(4, Dateofpur);
				ps.setInt(5, Quantity);
				ps.executeUpdate();
				int k = i - Quantity;
				PreparedStatement ps1 = con.prepareStatement(
						"update itemdetails set Stock =" + k + " where Itemcode = '" + Itemcode + "' ");
				return ps1.executeUpdate();
			} else {
				return 0;
			}
		} catch (Exception e) {
			System.out.println("Error in customerpurchase" + e.getMessage());
		}
		return 0;
	}
}
