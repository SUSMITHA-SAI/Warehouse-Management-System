package DaoClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import DbConnection.MySQLConnUtils;


public class ItemDao {

	public int saveItem(int Itemcode,String Itemname,int Itemprice, int Stock ) {
		try {
			Connection con = MySQLConnUtils.getMySQLConnection();
			PreparedStatement ps = con.prepareStatement("insert into itemdetails values(?,?,?,?)");
			ps.setInt(1, Itemcode);
			ps.setString(2, Itemname);
			ps.setInt(3, Itemprice);
			ps.setInt(4, Stock);
			return ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error in customer" + e.getMessage());
		}
		return 0;
	}
}
