package Servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Classes.Item;
import DaoClasses.ProductInfoDao;
import DaoClasses.PurchaseDetailsDao;

/**
 * Servlet implementation class CustomerServlet
 */
@WebServlet("/CustomerServlet")
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int TransactionId = 0;
		int Customercode = Integer.parseInt(request.getParameter("Customercode"));
		int Itemcode = Integer.parseInt(request.getParameter("Itemcode"));
		String Dateofpur = null;
		Date dNow = new Date();
		SimpleDateFormat date2 = new SimpleDateFormat("yyyy:MM:dd hh:mm:ss");
		Dateofpur = date2.format(dNow);
		int Quantity = Integer.parseInt(request.getParameter("Quantity"));
		int status = new PurchaseDetailsDao().savePurchaseInfo(TransactionId, Customercode, Itemcode, Dateofpur, Quantity);
		if(status > 0) {
			List<Item> items = new ProductInfoDao().getItemDetails();
		    HttpSession session = request.getSession();
		    session.setAttribute("items", items);
			response.sendRedirect("msg.jsp?msg=success");
		}
	}
}