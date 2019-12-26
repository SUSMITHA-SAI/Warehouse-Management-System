package Servlets;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Classes.Item;
import DaoClasses.ItemDao;
import DaoClasses.ProductInfoDao;

/**
 * Servlet implementation class AddItemsServlet
 */
@WebServlet("/AddItemsServlet")
public class AddItemsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddItemsServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int Itemcode = Integer.parseInt(request.getParameter("Itemcode"));
		String Itemname = request.getParameter("Itemname");
		int Itemprice = Integer.parseInt(request.getParameter("Itemprice"));
		int Stock = Integer.parseInt(request.getParameter("Stock"));
		int status = new ItemDao().saveItem(Itemcode, Itemname, Itemprice, Stock);
    	if(status >0) {
			List<Item> items = new ProductInfoDao().getItemDetails();
			HttpSession session = request.getSession();
			session.setAttribute("viewitems", items);
			response.sendRedirect("additem.jsp?m3=Success");
		}else {
			response.sendRedirect("additem.jsp?m3=Failed");
		}
	}

}
