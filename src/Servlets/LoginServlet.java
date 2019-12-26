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
import DaoClasses.ProductInfoDao;
import DaoClasses.UserDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String Customername = new UserDao().login(request.getParameterValues("Customername")[0],
				request.getParameterValues("Password")[0]);
		if (null != Customername) {
			List<Item> items = new ProductInfoDao().getItemDetails();
			HttpSession session = request.getSession();
			session.setAttribute("viewitems", items);
			session.setAttribute("Customername", Customername);
			response.sendRedirect("customerhome.jsp?m1=Success");
		} else {
			response.sendRedirect("customer.jsp?m2=LoginFail");
		}
	}
}
