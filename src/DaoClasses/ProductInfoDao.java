package DaoClasses;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Classes.Item;
import DbConnection.MySQLConnUtils;

public class ProductInfoDao {

	public ArrayList<Object> productdetails(int Itemcode) {
		ArrayList<Object> product = new ArrayList<>();
		try {
			Connection con = MySQLConnUtils.getMySQLConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from itemdetails where Itemcode='" + Itemcode + "'");
			if (rs.next()) {
				product.add(rs.getString("Itemname"));
				product.add(rs.getInt("Itemprice"));
				product.add(rs.getInt("Stock"));
			} else {
				System.out.println("error in string data");
			}
		} catch (Exception e) {
			System.out.println("Error in userlogin.jsp" + e.getMessage());
		}
		return product;
	}

	public List<Item> getItemDetails() {
		List<Item> items = new ArrayList<>();
		try {
			Connection con = MySQLConnUtils.getMySQLConnection();
			Statement st = con.createStatement();
			String sql = "select * from itemdetails";
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				Item item = new Item(rs.getInt("Itemcode"), rs.getString("Itemname"), rs.getInt("Itemprice"),rs.getInt("Stock"));
				items.add(item);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return items;
	}
	
	public ArrayList<Object> purchasedetails(String Dateofpur) {
		ArrayList<Object> purchase = new ArrayList<>();
		try {
			Connection con = MySQLConnUtils.getMySQLConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from purchasedetails where Dateofpur='" + Dateofpur + "'");
			if (rs.next()) {
				purchase.add(rs.getString("TransactionID"));
				purchase.add(rs.getInt("Customercode"));
				purchase.add(rs.getInt("Itemcode"));
				purchase.add(rs.getInt("Quantity"));
			} else {
				System.out.println("error in string data");
			}
		} catch (Exception e) {
			System.out.println("Error" + e.getMessage());
		}
		return purchase;
	}
}
